# isBasis_sigma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:230b2aea-0cb9-7856-2ea6-31168ecd2e0b",
  "kind": "lemma",
  "lexical_name": "isBasis_sigma",
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
  "slug": "isbasis-sigma--b7f400efee1c360c27a1185f",
  "source": {
    "blob": "906331d0461b73eca85ce5df49fb81aff2355c8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 414,
    "line": 408,
    "path": "GRWTSK/Topology/GeneralTopology/Opens/Variant8e0ceeae2918fbd5b763b85f4926194b5d6ea1e0f2d80ab22d28a8d3e0416b5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7f400efee1c360c27a1185f7f1b02501b33956180c3005da941ca774463b95a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Opens/Variant8e0ceeae2918fbd5b763b85f4926194b5d6ea1e0f2d80ab22d28a8d3e0416b5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:230b2aea-0cb9-7856-2ea6-31168ecd2e0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 408–414.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isBasis_sigma {ι : Type*} {α : ι → Type*} [∀ i, TopologicalSpace (α i)]
    {B : ∀ i, Set (Opens (α i))} (hB : ∀ i, IsBasis (B i)) :
    IsBasis (⋃ i : ι, (fun U ↦ ⟨Sigma.mk i '' U.1, isOpenMap_sigmaMk _ U.2⟩) '' B i) := by
  convert! TopologicalSpace.IsTopologicalBasis.sigma hB
  simp only [IsBasis, Set.image_iUnion, ← Set.image_comp]
  simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Opens/Variant8e0ceeae2918fbd5b763b85f4926194b5d6ea1e0f2d80ab22d28a8d3e0416b5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Opens/Variant8e0ceeae2918fbd5b763b85f4926194b5d6ea1e0f2d80ab22d28a8d3e0416b5f.lean#L408).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `906331d0461b73eca85ce5df49fb81aff2355c8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
