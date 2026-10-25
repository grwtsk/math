# normCodeImp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c49c202bef4975f6c72b2f9aac605a5dab810f73c8dd4ac027d50b9ab7db77a",
  "kind": "def",
  "lexical_name": "normCodeImp",
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
  "slug": "normcodeimp--7723f43b924666fa0ecb1d00",
  "source": {
    "blob": "fd464ab07750f699b5847fb3bae2487d8c3668a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 533,
    "line": 493,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variantb8fa8ab142ee950a013890bda94d2272c06e34cffca71e8afe55da03b0bcc836.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7723f43b924666fa0ecb1d00ff8ee7270b01c255a1d2a26de741d51a18163042",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variantb8fa8ab142ee950a013890bda94d2272c06e34cffca71e8afe55da03b0bcc836.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c49c202bef4975f6c72b2f9aac605a5dab810f73c8dd4ac027d50b9ab7db77a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 493–533.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  partial def normCodeImp (code : Code pu) : NormalizerM pu t (Code pu) := do
    match code with
    | .let decl k => return code.updateLet! (← normLetDecl decl) (← normCodeImp k)
    | .fun decl k _ | .jp decl k => return code.updateFun! (← normFunDeclImp decl) (← normCodeImp k)
    | .return fvarId => withNormFVarResult (← normFVar fvarId) fun fvarId => return code.updateReturn! fvarId
    | .jmp fvarId args => withNormFVarResult (← normFVar fvarId) fun fvarId => return code.updateJmp! fvarId (← normArgs args)
    | .unreach type => return code.updateUnreach! (← normExpr type)
    | .cases c =>
      let resultType ← normExpr c.resultType
      withNormFVarResult (← normFVar c.discr) fun discr => do
        let alts ← c.alts.mapMonoM fun alt =>
          match alt with
          | .alt _ params k _ => return alt.updateAlt! (← normParams params) (← normCodeImp k)
          | .default k | .ctorAlt _ k _ => return alt.updateCode (← normCodeImp k)
        return code.updateCases! resultType discr alts
    | .sset fvarId i offset y ty k _ =>
      withNormFVarResult (← normFVar fvarId) fun fvarId => do
      withNormFVarResult (← normFVar y) fun y => do
        return code.updateSset! fvarId i offset y (← normExpr ty) (← normCodeImp k)
    | .oset fvarId offset y k _ =>
      withNormFVarResult (← normFVar fvarId) fun fvarId => do
        let y ← normArg y
        return code.updateOset! fvarId offset y (← normCodeImp k)
    | .uset fvarId offset y k _ =>
      withNormFVarResult (← normFVar fvarId) fun fvarId => do
      withNormFVarResult (← normFVar y) fun y => do
        return code.updateUset! fvarId offset y (← normCodeImp k)
    | .setTag fvarId cidx k _ =>
      withNormFVarResult (← normFVar fvarId) fun fvarId => do
        return code.updateSetTag! fvarId cidx (← normCodeImp k)
    | .inc fvarId n check persistent k _ =>
      withNormFVarResult (← normFVar fvarId) fun fvarId => do
        return code.updateInc! fvarId n check persistent (← normCodeImp k)
    | .dec fvarId n check persistent objs? k _ =>
      withNormFVarResult (← normFVar fvarId) fun fvarId => do
        return code.updateDec! fvarId n check persistent objs? (← normCodeImp k)
    | .del fvarId k _ =>
      withNormFVarResult (← normFVar fvarId) fun fvarId => do
        return code.updateDel! fvarId (← normCodeImp k)
end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variantb8fa8ab142ee950a013890bda94d2272c06e34cffca71e8afe55da03b0bcc836.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variantb8fa8ab142ee950a013890bda94d2272c06e34cffca71e8afe55da03b0bcc836.lean#L493).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd464ab07750f699b5847fb3bae2487d8c3668a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
