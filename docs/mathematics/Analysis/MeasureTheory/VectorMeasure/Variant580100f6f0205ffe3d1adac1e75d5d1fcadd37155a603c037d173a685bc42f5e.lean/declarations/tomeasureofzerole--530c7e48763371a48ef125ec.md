# toMeasureOfZeroLE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2b1cde50d401cc06eeaf60124936269e5633c6006a05e0f7c32235d8d7365cb2",
  "kind": "def",
  "lexical_name": "toMeasureOfZeroLE",
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
  "slug": "tomeasureofzerole--530c7e48763371a48ef125ec",
  "source": {
    "blob": "694b67575ca73381e86004737d448404da573ca8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1348,
    "line": 1326,
    "path": "GRWTSK/Analysis/MeasureTheory/VectorMeasure/Variant580100f6f0205ffe3d1adac1e75d5d1fcadd37155a603c037d173a685bc42f5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:530c7e48763371a48ef125ec5d3fd2ed9b3b73d454f8dc3ce92d9d900ac683df",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/VectorMeasure/Variant580100f6f0205ffe3d1adac1e75d5d1fcadd37155a603c037d173a685bc42f5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2b1cde50d401cc06eeaf60124936269e5633c6006a05e0f7c32235d8d7365cb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1326–1348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toMeasureOfZeroLE (s : SignedMeasure α) (i : Set α) (hi₁ : MeasurableSet i) (hi₂ : 0 ≤[i] s) :
    Measure α := by
  refine' Measure.ofMeasurable (s.toMeasureOfZeroLE' i hi₂) _ _
  · simp_rw [toMeasureOfZeroLE', s.restrict_apply hi₁ MeasurableSet.empty, Set.empty_inter i,
      s.empty]
    rfl
  · intro f hf₁ hf₂
    have h₁ : ∀ n, MeasurableSet (i ∩ f n) := fun n => hi₁.inter (hf₁ n)
    have h₂ : Pairwise (Disjoint on fun n : ℕ => i ∩ f n) := by
      intro n m hnm
      exact ((hf₂ hnm).inf_left' i).inf_right' i
    simp only [toMeasureOfZeroLE', s.restrict_apply hi₁ (MeasurableSet.iUnion hf₁), Set.inter_comm,
      Set.inter_iUnion, s.of_disjoint_iUnion_nat h₁ h₂, ENNReal.some_eq_coe, id.def]
    have h : ∀ n, 0 ≤ s (i ∩ f n) := fun n =>
      s.nonneg_of_zero_le_restrict (s.zero_le_restrict_subset hi₁ (Set.inter_subset_left _ _) hi₂)
    rw [NNReal.coe_tsum_of_nonneg h, ENNReal.coe_tsum]
    · refine' tsum_congr fun n => _
      simp_rw [s.restrict_apply hi₁ (hf₁ n), Set.inter_comm]
    · exact (NNReal.summable_mk h).2 (s.m_iUnion h₁ h₂).summable
#align measure_theory.signed_measure.to_measure_of_zero_le MeasureTheory.SignedMeasure.toMeasureOfZeroLE

variable (s : SignedMeasure α) {i j : Set α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/VectorMeasure/Variant580100f6f0205ffe3d1adac1e75d5d1fcadd37155a603c037d173a685bc42f5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/VectorMeasure/Variant580100f6f0205ffe3d1adac1e75d5d1fcadd37155a603c037d173a685bc42f5e.lean#L1326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `694b67575ca73381e86004737d448404da573ca8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
