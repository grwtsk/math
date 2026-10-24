# dom_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e64ac58a-f17d-44d6-5972-fc49d53d1b54",
  "kind": "lemma",
  "lexical_name": "dom_left",
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
  "slug": "dom-left--2233bbec06987fb7441e60eb",
  "source": {
    "blob": "63016c230313d48ce8fede3551c3ee7496c7b37b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 375,
    "line": 355,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2233bbec06987fb7441e60ebf11e13a6a01d7fbd5f89359662d910282148c964",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e64ac58a-f17d-44d6-5972-fc49d53d1b54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 355–375.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dom_left (hF : LocalHypsCoreW cϱ p F) (hν : NuBound p B ν) (hT : 0 < p.T) {τ : ℝ} (hτ : τ < p.T) :
    (∑ k ∈ Finset.range p.d, psiA cϱ p (τ - p.tau k)) * |ν τ|
      ≤ Mtot cϱ p B (p.T - τ) := by
  rw [sigma_eq_left]
  set Δ := p.T - τ with hΔdef
  have hΔ : 0 < Δ := by rw [hΔdef]; linarith
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
    have : |τ| ≤ Δ := by rw [abs_le]; constructor <;> linarith
    nlinarith [abs_nonneg τ]

/-- pointwise domination, right of I:  σ(τ)|ν(τ)| ≤ M(τ−2T) for τ > 2T. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean#L355).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63016c230313d48ce8fede3551c3ee7496c7b37b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
