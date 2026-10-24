# IsBasis.isCompact_open_iff_eq_finite_iUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e6bc3d60-11a2-ec53-c9ad-a01d6da954a8",
  "kind": "theorem",
  "lexical_name": "IsBasis.isCompact_open_iff_eq_finite_iUnion",
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
  "slug": "isbasis-iscompact-open-iff-eq-finite-iunion--34e02ad2c4c43b76d0a792eb",
  "source": {
    "blob": "906331d0461b73eca85ce5df49fb81aff2355c8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 392,
    "line": 384,
    "path": "GRWTSK/Topology/GeneralTopology/Opens/Variant8e0ceeae2918fbd5b763b85f4926194b5d6ea1e0f2d80ab22d28a8d3e0416b5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34e02ad2c4c43b76d0a792eb99dfe5df7ff0c1e7654f079c547661ce28a07d24",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Opens/Variant8e0ceeae2918fbd5b763b85f4926194b5d6ea1e0f2d80ab22d28a8d3e0416b5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6bc3d60-11a2-ec53-c9ad-a01d6da954a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsBasis.isCompact_open_iff_eq_finite_iUnion {ι : Type*} (b : ι → Opens α)
    (hb : IsBasis (Set.range b)) (hb' : ∀ i, IsCompact (b i : Set α)) (U : Set α) :
    IsCompact U ∧ IsOpen U ↔ ∃ s : Set ι, s.Finite ∧ U = ⋃ i ∈ s, b i := by
  apply isCompact_open_iff_eq_finite_iUnion_of_isTopologicalBasis fun i : ι => (b i).1
  · convert! (config := { transparency := .default }) hb
    ext
    simp
  · exact hb'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Opens/Variant8e0ceeae2918fbd5b763b85f4926194b5d6ea1e0f2d80ab22d28a8d3e0416b5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Opens/Variant8e0ceeae2918fbd5b763b85f4926194b5d6ea1e0f2d80ab22d28a8d3e0416b5f.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `906331d0461b73eca85ce5df49fb81aff2355c8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
