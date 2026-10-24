# isCompact_isClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a32c13c-b79a-342e-9d40-250bb96793b4",
  "kind": "theorem",
  "lexical_name": "isCompact_isClosed",
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
  "slug": "iscompact-isclosed--3d7ddc832e85d5873a68089d",
  "source": {
    "blob": "f6e69fa585aaaf73abedd816c6839719a3c4b77a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 652,
    "line": 633,
    "path": "GRWTSK/Analysis/MeasureTheory/Regular/Variant8aa48e7c984927df4afaaaf47c66f4a30f03edee2518f54e09e0204f6f2afe5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d7ddc832e85d5873a68089d45c11396fe7b0a7cb4bb8addd3edf41e63400b28",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Regular/Variant8aa48e7c984927df4afaaaf47c66f4a30f03edee2518f54e09e0204f6f2afe5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a32c13c-b79a-342e-9d40-250bb96793b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 633–652.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCompact_isClosed {X : Type*} [TopologicalSpace X] [SigmaCompactSpace X]
    [MeasurableSpace X] (μ : Measure X) : InnerRegularWRT μ IsCompact IsClosed := by
  intro F hF r hr
  set B : ℕ → Set X := compactCovering X
  have hBc : ∀ n, IsCompact (F ∩ B n) := fun n => (isCompact_compactCovering X n).inter_left hF
  have hBU : ⋃ n, F ∩ B n = F := by rw [← inter_iUnion, iUnion_compactCovering, Set.inter_univ]
  have : μ F = ⨆ n, μ (F ∩ B n) := by
    rw [← Monotone.measure_iUnion, hBU]
    exact monotone_const.inter monotone_accumulate
  rw [this] at hr
  rcases lt_iSup_iff.1 hr with ⟨n, hn⟩
  exact ⟨_, inter_subset_left, hBc n, hn⟩

end InnerRegularWRT

namespace InnerRegular

variable [TopologicalSpace α]

/-- The measure of a measurable set is the supremum of the measures of compact sets it contains. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Regular/Variant8aa48e7c984927df4afaaaf47c66f4a30f03edee2518f54e09e0204f6f2afe5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Regular/Variant8aa48e7c984927df4afaaaf47c66f4a30f03edee2518f54e09e0204f6f2afe5e.lean#L633).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6e69fa585aaaf73abedd816c6839719a3c4b77a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
