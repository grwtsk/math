# addLetDeclsToSimpTheorems

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8c02f135dbdff9b5e4aabdb7577005d4073d2e7dc2af5c87b80efd2f4ad23422",
  "kind": "def",
  "lexical_name": "addLetDeclsToSimpTheorems",
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
  "slug": "addletdeclstosimptheorems--c2e0bab3d5e99ac0707cee3c",
  "source": {
    "blob": "0aac9693f9cdf191e45729a9607a42dfc86a9946",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variantac291800d17bcc1599ed7483e40ee580995a380fa15080fbb932195c2db72b3a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c2e0bab3d5e99ac0707cee3cd1e33672d5111fbd1108dca03536d8abf2290bc1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variantac291800d17bcc1599ed7483e40ee580995a380fa15080fbb932195c2db72b3a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8c02f135dbdff9b5e4aabdb7577005d4073d2e7dc2af5c87b80efd2f4ad23422`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def addLetDeclsToSimpTheorems (ctx : Simp.Context) : MetaM Simp.Context := do
  let mut simpTheoremsArray := ctx.simpTheorems
  if simpTheoremsArray.isEmpty then
    simpTheoremsArray := #[{}]
  for ldecl in ← getLCtx do
    if ldecl.hasValue && ! ldecl.isImplementationDetail then
      simpTheoremsArray := simpTheoremsArray.modify 0 λ simpTheorems =>
        simpTheorems.addLetDeclToUnfold ldecl.fvarId
  return ctx.setSimpTheorems simpTheoremsArray

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variantac291800d17bcc1599ed7483e40ee580995a380fa15080fbb932195c2db72b3a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variantac291800d17bcc1599ed7483e40ee580995a380fa15080fbb932195c2db72b3a.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0aac9693f9cdf191e45729a9607a42dfc86a9946` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
