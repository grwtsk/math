# Code.explicitBoxing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e6a4fdd03e15656c269dba4f524d6dc07848454e09ca7d9ba8f484f37d7cda10",
  "kind": "def",
  "lexical_name": "Code.explicitBoxing",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "code-explicitboxing--e85519b4b1d01afc2fb26c19",
  "source": {
    "blob": "7d36b3223bd202cd176ea6d7d6cbac1bfdc1c87b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 354,
    "line": 261,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variantb871370f5dab97e5a45900e559b3c2a25210227aa85bc99c020da30ce1c1310f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e85519b4b1d01afc2fb26c1928d6c62bcfb87f11f6fe5cb7a7c68e51a66078b4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variantb871370f5dab97e5a45900e559b3c2a25210227aa85bc99c020da30ce1c1310f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e6a4fdd03e15656c269dba4f524d6dc07848454e09ca7d9ba8f484f37d7cda10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–354.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
partial def Code.explicitBoxing (code : Code .impure) : BoxM (Code .impure) := do
  match code with
  | .let decl k => visitLet code decl k
  | .jp decl k =>
    let value ← decl.value.explicitBoxing
    let decl ← decl.update (← getResultType) decl.params value
    let k ← k.explicitBoxing
    return code.updateFun! decl k
  | .uset fvarId i y k _ =>
    let k ← k.explicitBoxing
    castVarIfNeeded y ImpureType.usize fun y =>
      return code.updateUset! fvarId i y k
  | .sset fvarId i offset y ty k _ =>
    let k ← k.explicitBoxing
    castVarIfNeeded y ty fun y =>
      return code.updateSset! fvarId i offset y ty k
  | .cases cs =>
    let alts ← cs.alts.mapMonoM (·.mapCodeM (·.explicitBoxing))
    castVarIfNeeded cs.discr (mkConst cs.typeName) fun discr =>
      return code.updateCases! (← getResultType) discr alts
  | .return fvarId =>
    castVarIfNeeded fvarId (← getResultType) (fun fvarId => return code.updateReturn! fvarId)
  | .jmp fvarId args =>
    let some jpDecl ← findFunDecl? fvarId | unreachable!
    castArgsIfNeeded args jpDecl.params fun args => return code.updateJmp! fvarId args
  | .unreach .. => return code.updateUnreach! (← getResultType)
  | .inc .. | .dec .. | .oset .. | .setTag .. | .del .. => unreachable!
where
  /--
  Up to this point the type system of IR is quite loose so we can for example encounter situations
  such as
  ```
  let y : obj := f x
  ```
  where `f : obj -> uint8`. It is the job of the boxing pass to enforce a stricter obj/scalar
  separation and as such it needs to correct situations like this.
  -/
  tryCorrectLetDeclType (currentType : Expr) (value : LetValue .impure) : BoxM Expr := do
    match value with
    | .fap f .. =>
      let some sig ← getImpureSignature? f | unreachable!
      return sig.type
    | .pap .. => return object
    | .uproj .. => return usize
    | .erased => return tagged
    | .lit (.nat n) =>
      if n ≤ maxSmallNat then
        return tagged
      else
        return currentType
    | .lit (.str ..) =>
      return object
    | .ctor i _ => return i.type
    | .fvar .. | .lit .. | .sproj .. | .oproj .. | .reset .. | .reuse .. =>
      return currentType
    | .box .. | .unbox .. | .isShared .. => unreachable!

  visitLet (code : Code .impure) (decl : LetDecl .impure) (k : Code .impure) : BoxM (Code .impure) := do
    let type ← tryCorrectLetDeclType decl.type decl.value
    let decl ← decl.update type decl.value
    let k ← k.explicitBoxing
    match decl.value with
    | .ctor i args =>
      if i.isScalar && type.isScalar then
        let decl ← decl.updateValue (.lit (.impureTypeScalarNumLit type i.cidx))
        return code.updateLet! decl k
      else
        boxArgsIfNeeded args fun args => do
          let decl ← decl.updateValue (decl.value.updateArgs! args)
          return code.updateLet! decl k
    | .reuse _ _ _ args _ =>
      boxArgsIfNeeded args fun args => do
        let decl ← decl.updateValue (decl.value.updateArgs! args)
        return code.updateLet! decl k
    | .fap f args =>
      let some sig ← getImpureSignature? f | unreachable!
      castArgsIfNeeded args sig.params fun args => do
        let decl ← decl.updateValue (decl.value.updateArgs! args)
        castResultIfNeeded code decl sig.type k
    | .pap f args =>
      let some sig ← getImpureSignature? f | unreachable!
      let f := if ← requiresBoxedVersion sig then mkBoxedName f else f
      boxArgsIfNeeded args fun args => do
        let decl ← decl.updateValue (decl.value.updatePap! f args)
        return code.updateLet! decl k
    | .fvar _ args =>
      boxArgsIfNeeded args fun args => do
        let decl ← decl.updateValue (decl.value.updateArgs! args)
        unboxResultIfNeeded code decl k
    | .erased | .reset .. | .sproj .. | .uproj .. | .oproj .. | .lit .. =>
      let decl ← decl.update type decl.value
      return code.updateLet! decl k
    | .box .. | .unbox .. | .isShared .. => unreachable!

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variantb871370f5dab97e5a45900e559b3c2a25210227aa85bc99c020da30ce1c1310f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variantb871370f5dab97e5a45900e559b3c2a25210227aa85bc99c020da30ce1c1310f.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d36b3223bd202cd176ea6d7d6cbac1bfdc1c87b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
