# computeFixedIndexBitMask

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:464c991f3418f0513ff8d831a8290f0f48795a48344ea29b0ae46f16f740be03",
  "kind": "def",
  "lexical_name": "computeFixedIndexBitMask",
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
  "slug": "computefixedindexbitmask--e59d36ed8302641a2dcce497",
  "source": {
    "blob": "70adc2c0ca9bfa1e7a54b5e64de2521494b71cb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 551,
    "line": 509,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant8a30233713df9a399c8a529511c6767668d9cfa82a46a8ae02b8c631231274d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e59d36ed8302641a2dcce4975a6f21e5ad67d1f1f8b3363dad04a95c360fb39a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant8a30233713df9a399c8a529511c6767668d9cfa82a46a8ae02b8c631231274d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:464c991f3418f0513ff8d831a8290f0f48795a48344ea29b0ae46f16f740be03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 509–551.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def computeFixedIndexBitMask (numParams : Nat) (indType : InductiveType) (indFVars : Array Expr) : MetaM (Array Bool) := do
  let arity ← getArity indType
  if arity ≤ numParams then
    return .replicate arity false
  else
    let maskRef ← IO.mkRef (.replicate numParams false ++ .replicate (arity - numParams) true)
    let rec go (ctors : List Constructor) : MetaM (Array Bool) := do
      match ctors with
      | [] => maskRef.get
      | ctor :: ctors =>
        forallTelescopeReducing ctor.type fun xs type => do
          let typeArgs := type.getAppArgs
          for i in numParams...arity do
            unless i < xs.size && xs[i]! == typeArgs[i]! do -- Remark: if we want to allow arguments to be rearranged, this test should be xs.contains typeArgs[i]
              maskRef.modify fun mask => mask.set! i false
          for x in xs[numParams...*] do
            let xType ← inferType x
            let cond (e : Expr) := indFVars.any (fun indFVar => e.getAppFn == indFVar)
            xType.forEachWhere (stopWhenVisited := true) cond fun e => do
              let eArgs := e.getAppArgs
              for i in numParams...eArgs.size do
                if i >= typeArgs.size then
                  maskRef.modify (resetMaskAt · i)
                else
                  unless eArgs[i]! == typeArgs[i]! do
                    maskRef.modify (resetMaskAt · i)
              /-If an index is missing in the arguments of the inductive type, then it must be non-fixed.
                Consider the following example:
                ```lean
                inductive All {I : Type u} (P : I → Type v) : List I → Type (max u v) where
                  | cons : P x → All P xs → All P (x :: xs)

                inductive Iμ {I : Type u}  : I → Type (max u v) where
                  | mk : (i : I)  → All Iμ [] → Iμ i
                ```
                because `i` doesn't appear in `All Iμ []`, the index shouldn't be fixed.
              -/
              for i in eArgs.size...arity do
                maskRef.modify (resetMaskAt · i)
        go ctors
    go indType.ctors

/-- Return true iff `arrowType` is an arrow and its domain is defeq to `type` -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant8a30233713df9a399c8a529511c6767668d9cfa82a46a8ae02b8c631231274d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant8a30233713df9a399c8a529511c6767668d9cfa82a46a8ae02b8c631231274d8.lean#L509).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70adc2c0ca9bfa1e7a54b5e64de2521494b71cb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
