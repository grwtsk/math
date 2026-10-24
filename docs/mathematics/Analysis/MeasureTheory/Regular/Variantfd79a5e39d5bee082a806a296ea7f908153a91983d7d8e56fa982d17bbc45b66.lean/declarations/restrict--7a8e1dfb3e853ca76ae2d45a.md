# restrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1006e44b-50f8-8322-118f-109fd6032e83",
  "kind": "lemma",
  "lexical_name": "restrict",
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
  "slug": "restrict--7a8e1dfb3e853ca76ae2d45a",
  "source": {
    "blob": "64b864a9c22a66240a1889f478168dc8c650718d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 565,
    "line": 539,
    "path": "GRWTSK/Analysis/MeasureTheory/Regular/Variantfd79a5e39d5bee082a806a296ea7f908153a91983d7d8e56fa982d17bbc45b66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a8e1dfb3e853ca76ae2d45a1710eef1414eee18a6a17b5247ca5ed96f13ca34",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Regular/Variantfd79a5e39d5bee082a806a296ea7f908153a91983d7d8e56fa982d17bbc45b66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1006e44b-50f8-8322-118f-109fd6032e83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 539–565.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma restrict (h : InnerRegularWRT μ p (fun s ↦ MeasurableSet s ∧ μ s ≠ ∞)) (A : Set α) :
    InnerRegularWRT (μ.restrict A) p (fun s ↦ MeasurableSet s ∧ μ.restrict A s ≠ ∞) := by
  rintro s ⟨s_meas, hs⟩ r hr
  rw [restrict_apply s_meas] at hs
  obtain ⟨K, K_subs, pK, rK⟩ : ∃ K, K ⊆ (toMeasurable μ (s ∩ A)) ∩ s ∧ p K ∧ r < μ K := by
    have : r < μ ((toMeasurable μ (s ∩ A)) ∩ s) := by
      apply hr.trans_le
      rw [restrict_apply s_meas]
      exact measure_mono <| subset_inter (subset_toMeasurable μ (s ∩ A)) inter_subset_left
    refine h ⟨(measurableSet_toMeasurable _ _).inter s_meas, ?_⟩ _ this
    apply (lt_of_le_of_lt _ hs.lt_top).ne
    rw [← measure_toMeasurable (s ∩ A)]
    exact measure_mono inter_subset_left
  refine ⟨K, K_subs.trans inter_subset_right, pK, ?_⟩
  calc
  r < μ K := rK
  _ = μ.restrict (toMeasurable μ (s ∩ A)) K := by
    rw [restrict_apply' (measurableSet_toMeasurable μ (s ∩ A))]
    congr
    apply (inter_eq_left.2 ?_).symm
    exact K_subs.trans inter_subset_left
  _ = μ.restrict (s ∩ A) K := by rwa [restrict_toMeasurable]
  _ ≤ μ.restrict A K := Measure.le_iff'.1 (restrict_mono inter_subset_right le_rfl) K

/-- If `μ` is inner regular for measurable finite measure sets with respect to some class of sets,
then its restriction to any finite measure set is also inner regular for measurable sets with
respect to the same class of sets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Regular/Variantfd79a5e39d5bee082a806a296ea7f908153a91983d7d8e56fa982d17bbc45b66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Regular/Variantfd79a5e39d5bee082a806a296ea7f908153a91983d7d8e56fa982d17bbc45b66.lean#L539).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64b864a9c22a66240a1889f478168dc8c650718d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
