# isRflProofCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:11b3c5b8f535e8eaaae1c28e94a751986422180c9db192fde02c2e2cb6712f09",
  "kind": "def",
  "lexical_name": "isRflProofCore",
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
  "slug": "isrflproofcore--0c62c394e40050eb6c710a7f",
  "source": {
    "blob": "6cf6e9e19687239e0524540d7f004f81f941f560",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 194,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTheorems/Variant96ad6ce6bc8a65c65fa6e0a966490d0f973824441674beb937a664f80d8e8b12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c62c394e40050eb6c710a7fc47865a838de52801f97df1d77acaca81e3dfcaf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTheorems/Variant96ad6ce6bc8a65c65fa6e0a966490d0f973824441674beb937a664f80d8e8b12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:11b3c5b8f535e8eaaae1c28e94a751986422180c9db192fde02c2e2cb6712f09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  private partial def isRflProofCore (includeBackward : Bool) (type : Expr) (proof : Expr) : CoreM Bool := do
    match type with
    | .forallE _ _ type _ =>
      if let .lam _ _ proof _ := proof then
        isRflProofCore includeBackward type proof
      else
        return false
    | _ =>
      if type.isAppOfArity ``Eq 3 then
        if proof.isAppOfArity ``Eq.refl 2 || proof.isAppOfArity ``rfl 2 then
          return true
        else if proof.isAppOfArity ``Eq.symm 4 then
          -- `Eq.symm` of rfl theorem is a rfl theorem
          isRflProofCore includeBackward type proof.appArg! -- small hack: we don't need to set the exact type
        else if proof.getAppFn.isConst then
          -- The application of a `rfl` theorem is a `rfl` theorem
          -- A constant which is a `rfl` theorem is a `rfl` theorem
          isRflTheoremCore includeBackward proof.getAppFn.constName!
        else
          return false
      else
        return false

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTheorems/Variant96ad6ce6bc8a65c65fa6e0a966490d0f973824441674beb937a664f80d8e8b12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTheorems/Variant96ad6ce6bc8a65c65fa6e0a966490d0f973824441674beb937a664f80d8e8b12.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cf6e9e19687239e0524540d7f004f81f941f560` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
