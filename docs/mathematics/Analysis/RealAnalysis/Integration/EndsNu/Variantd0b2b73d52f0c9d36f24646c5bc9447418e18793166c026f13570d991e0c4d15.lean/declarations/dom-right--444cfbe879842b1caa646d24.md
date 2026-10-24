# dom_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "592d4fb46536da54f3f44c17fa380bb8f4c19d10",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 368,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:91b2898d-7981-df95-6c30-0a085197d01e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6348b5d8-ccd3-7736-efb8-a9a395126d98",
  "kind": "lemma",
  "lexical_name": "dom_right",
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
  "slug": "dom-right--444cfbe879842b1caa646d24",
  "source": {
    "blob": "592d4fb46536da54f3f44c17fa380bb8f4c19d10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 396,
    "line": 368,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:444cfbe879842b1caa646d24e7e6fa7fa17300342db6d835773035c76be8e329",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6348b5d8-ccd3-7736-efb8-a9a395126d98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 368–396.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dom_right (hF : LocalHypsCoreW cϱ p F) (hν : NuBound p B ν) (hT : 0 < p.T) {τ : ℝ}
    (hτ : 2 * p.T < τ) :
    (∑ k ∈ Finset.range p.d, psiA cϱ p (τ - p.tau k)) * |ν τ|
      ≤ Mtot cϱ p B (τ - 2 * p.T) := by
  have hσ := sigma_le_right hF hT.le hτ.le
  set Δ := τ - 2 * p.T with hΔdef
  have hΔ : 0 < Δ := by rw [hΔdef]; linarith
  have hσ0 : 0 ≤ ∑ k ∈ Finset.range p.d, psiA cϱ p (τ - p.tau k) :=
    Finset.sum_nonneg fun k _ => psiA_nonneg_of hF _
  have step : (∑ k ∈ Finset.range p.d, psiA cϱ p (τ - p.tau k)) * |ν τ|
      ≤ Sgrid cϱ p Δ * |ν τ| := mul_le_mul_of_nonneg_right hσ (abs_nonneg _)
  refine step.trans ?_
  unfold Mtot
  rcases le_or_gt Δ (2 * p.T) with h | h
  · rw [indicator_of_mem (show Δ ∈ Ioc 0 (2 * p.T) from ⟨hΔ, h⟩),
      indicator_of_notMem (show Δ ∉ Ioi (2 * p.T) from not_lt.mpr h), add_zero]
    refine Sgrid_mul_le_Mnear hF hΔ (abs_nonneg _) (abs_nuX_le_B hν hT ?_)
    rw [abs_le]; constructor <;> linarith
  · rw [indicator_of_notMem (show Δ ∉ Ioc 0 (2 * p.T) from fun hh => not_lt.mpr hh.2 h),
      indicator_of_mem (show Δ ∈ Ioi (2 * p.T) from h), zero_add]
    refine Sgrid_mul_le_Mfar hF hΔ (abs_nonneg _) ((abs_nuX_le_B_add_sqrt hν hT τ).trans ?_)
    refine add_le_add le_rfl (mul_le_mul_of_nonneg_left (Real.sqrt_le_sqrt ?_) (by norm_num : (0:ℝ) ≤ 2))
    rw [div_le_div_iff₀ (by positivity) hT]
    have : |τ| ≤ 2 * Δ := by rw [abs_le]; constructor <;> linarith
    nlinarith [abs_nonneg τ]


/-! ### N2: integrating the majorant -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean#L368).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `592d4fb46536da54f3f44c17fa380bb8f4c19d10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
