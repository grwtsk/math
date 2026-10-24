# FiniteSpanningSetsIn.outerRegular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7e8f98e4ffedbc2b95abc544b092b5ddb633ad1b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 305,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c78cb229-a8da-ffe0-cd2b-fdfc51730791",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9c3f9190-19b8-1bcc-2359-d1e4b5bb1aec",
  "kind": "theorem",
  "lexical_name": "FiniteSpanningSetsIn.outerRegular",
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
  "slug": "finitespanningsetsin-outerregular--28e8700fc2d7bacc795ae5ac",
  "source": {
    "blob": "7e8f98e4ffedbc2b95abc544b092b5ddb633ad1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 305,
    "path": "GRWTSK/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28e8700fc2d7bacc795ae5ac6e1800c4a5a433cc45cbbcc6d87132301aa13405",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c3f9190-19b8-1bcc-2359-d1e4b5bb1aec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem FiniteSpanningSetsIn.outerRegular [OpensMeasurableSpace α] {μ : Measure α}
    (s : μ.FiniteSpanningSetsIn { U | IsOpen U ∧ OuterRegular (μ.restrict U) }) :
    OuterRegular μ := by
  refine' ⟨fun A hA r hr => _⟩
  have hm : ∀ n, MeasurableSet (s.set n) := fun n => (s.set_mem n).1.measurableSet
  haveI : ∀ n, OuterRegular (μ.restrict (s.set n)) := fun n => (s.set_mem n).2
  -- Note that `A = ⋃ n, A ∩ disjointed s n`. We replace `A` with this sequence.
  obtain ⟨A, hAm, hAs, hAd, rfl⟩ :
    ∃ A' : ℕ → Set α,
      (∀ n, MeasurableSet (A' n)) ∧
        (∀ n, A' n ⊆ s.set n) ∧ Pairwise (Disjoint on A') ∧ A = ⋃ n, A' n := by
    refine'
      ⟨fun n => A ∩ disjointed s.set n, fun n => hA.inter (MeasurableSet.disjointed hm _), fun n =>
        (inter_subset_right _ _).trans (disjointed_subset _ _),
        (disjoint_disjointed s.set).mono fun k l hkl => hkl.mono inf_le_right inf_le_right, _⟩
    rw [← inter_iUnion, iUnion_disjointed, s.spanning, inter_univ]
  rcases ENNReal.exists_pos_sum_of_countable' (tsub_pos_iff_lt.2 hr).ne' ℕ with ⟨δ, δ0, hδε⟩
  rw [lt_tsub_iff_right, add_comm] at hδε
  have : ∀ n, ∃ (U : _) (_ : U ⊇ A n), IsOpen U ∧ μ U < μ (A n) + δ n := by
    intro n
    have H₁ : ∀ t, μ.restrict (s.set n) t = μ (t ∩ s.set n) := fun t => restrict_apply' (hm n)
    have Ht : μ.restrict (s.set n) (A n) ≠ ⊤ := by
      rw [H₁]
      exact ((measure_mono <| inter_subset_right _ _).trans_lt (s.finite n)).ne
    rcases(A n).exists_isOpen_lt_add Ht (δ0 n).ne' with ⟨U, hAU, hUo, hU⟩
    rw [H₁, H₁, inter_eq_self_of_subset_left (hAs _)] at hU
    exact ⟨U ∩ s.set n, subset_inter hAU (hAs _), hUo.inter (s.set_mem n).1, hU⟩
  choose U hAU hUo hU using this
  refine' ⟨⋃ n, U n, iUnion_mono hAU, isOpen_iUnion hUo, _⟩
  calc
    μ (⋃ n, U n) ≤ ∑' n, μ (U n) := measure_iUnion_le _
    _ ≤ ∑' n, (μ (A n) + δ n) := (ENNReal.tsum_le_tsum fun n => (hU n).le)
    _ = ∑' n, μ (A n) + ∑' n, δ n := ENNReal.tsum_add
    _ = μ (⋃ n, A n) + ∑' n, δ n := (congr_arg₂ (· + ·) (measure_iUnion hAd hAm).symm rfl)
    _ < r := hδε
#align measure_theory.measure.finite_spanning_sets_in.outer_regular MeasureTheory.Measure.FiniteSpanningSetsIn.outerRegular

namespace InnerRegular

variable {p q : Set α → Prop} {U s : Set α} {ε r : ℝ≥0∞}

/-- If a measure is inner regular (using closed or compact sets), then every measurable set of
finite measure can be approximated by a (closed or compact) subset. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e8f98e4ffedbc2b95abc544b092b5ddb633ad1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
