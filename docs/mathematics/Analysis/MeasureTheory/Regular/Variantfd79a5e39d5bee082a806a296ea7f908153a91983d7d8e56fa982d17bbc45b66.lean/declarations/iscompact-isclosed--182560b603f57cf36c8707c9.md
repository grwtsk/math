# isCompact_isClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6498468-f257-f5d3-da3c-4b62ded99ba2",
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
  "slug": "iscompact-isclosed--182560b603f57cf36c8707c9",
  "source": {
    "blob": "64b864a9c22a66240a1889f478168dc8c650718d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 711,
    "line": 692,
    "path": "GRWTSK/Analysis/MeasureTheory/Regular/Variantfd79a5e39d5bee082a806a296ea7f908153a91983d7d8e56fa982d17bbc45b66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:182560b603f57cf36c8707c958be39b5b80f1644bea2d67744d3c2176e5bfc09",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Regular/Variantfd79a5e39d5bee082a806a296ea7f908153a91983d7d8e56fa982d17bbc45b66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6498468-f257-f5d3-da3c-4b62ded99ba2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 692–711.

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

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Regular/Variantfd79a5e39d5bee082a806a296ea7f908153a91983d7d8e56fa982d17bbc45b66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Regular/Variantfd79a5e39d5bee082a806a296ea7f908153a91983d7d8e56fa982d17bbc45b66.lean#L692).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64b864a9c22a66240a1889f478168dc8c650718d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
