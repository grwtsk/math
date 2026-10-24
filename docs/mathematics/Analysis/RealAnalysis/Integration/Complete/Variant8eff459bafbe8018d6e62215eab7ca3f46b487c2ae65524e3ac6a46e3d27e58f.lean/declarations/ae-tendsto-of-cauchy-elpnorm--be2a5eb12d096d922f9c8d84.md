# ae_tendsto_of_cauchy_eLpNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "653ef99a7abe7c1c5ab822e6100c93216680624b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 300,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8e/8eff459bafbe8018d6e62215eab7ca3f46b487c2ae65524e3ac6a46e3d27e58f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ddc34e17-c5ae-5be4-1179-2bb0360b513f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a257ccb0-0d76-62f7-5c6d-5dcbe22ef5bd",
  "kind": "theorem",
  "lexical_name": "ae_tendsto_of_cauchy_eLpNorm",
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
  "slug": "ae-tendsto-of-cauchy-elpnorm--be2a5eb12d096d922f9c8d84",
  "source": {
    "blob": "653ef99a7abe7c1c5ab822e6100c93216680624b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 300,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Complete/Variant8eff459bafbe8018d6e62215eab7ca3f46b487c2ae65524e3ac6a46e3d27e58f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be2a5eb12d096d922f9c8d84138d4719a0f72254e51f91a82cd0915b863b3f5f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Complete/Variant8eff459bafbe8018d6e62215eab7ca3f46b487c2ae65524e3ac6a46e3d27e58f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a257ccb0-0d76-62f7-5c6d-5dcbe22ef5bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_tendsto_of_cauchy_eLpNorm [CompleteSpace E] {f : ℕ → α → E}
    (hf : ∀ n, AEStronglyMeasurable (f n) μ) (hp : 1 ≤ p) {B : ℕ → ℝ≥0∞} (hB : ∑' i, B i ≠ ∞)
    (h_cau : ∀ N n m : ℕ, N ≤ n → N ≤ m → eLpNorm (f n - f m) p μ < B N) :
    ∀ᵐ x ∂μ, ∃ l : E, atTop.Tendsto (fun n => f n x) (𝓝 l) := by
  by_cases hp_top : p = ∞
  · simp_rw [hp_top] at *
    have h_cau_ae : ∀ᵐ x ∂μ, ∀ N n m, N ≤ n → N ≤ m → ‖(f n - f m) x‖ₑ < B N := by
      simp_rw [ae_all_iff]
      exact fun N n m hnN hmN => ae_lt_of_essSup_lt (h_cau N n m hnN hmN)
    simp_rw [eLpNorm_exponent_top, eLpNormEssSup] at h_cau
    refine h_cau_ae.mono fun x hx => cauchySeq_tendsto_of_complete ?_
    refine cauchySeq_of_le_tendsto_0 (fun n => (B n).toReal) ?_ ?_
    · intro n m N hnN hmN
      specialize hx N n m hnN hmN
      rw [_root_.dist_eq_norm,
        ← ENNReal.ofReal_le_iff_le_toReal (ENNReal.ne_top_of_tsum_ne_top hB N),
        ofReal_norm_eq_enorm]
      exact hx.le
    · rw [← ENNReal.toReal_zero]
      exact
        Tendsto.comp (g := ENNReal.toReal) (ENNReal.tendsto_toReal ENNReal.zero_ne_top)
          (ENNReal.tendsto_atTop_zero_of_tsum_ne_top hB)
  have hp1 : 1 ≤ p.toReal := by
    rw [← ENNReal.ofReal_le_iff_le_toReal hp_top, ENNReal.ofReal_one]
    exact hp
  have h_cau' : ∀ N n m : ℕ, N ≤ n → N ≤ m → eLpNorm' (f n - f m) p.toReal μ < B N := by
    intro N n m hn hm
    specialize h_cau N n m hn hm
    rwa [eLpNorm_eq_eLpNorm' (zero_lt_one.trans_le hp).ne.symm hp_top] at h_cau
  exact ae_tendsto_of_cauchy_eLpNorm' hf hp1 hB h_cau'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Complete/Variant8eff459bafbe8018d6e62215eab7ca3f46b487c2ae65524e3ac6a46e3d27e58f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Complete/Variant8eff459bafbe8018d6e62215eab7ca3f46b487c2ae65524e3ac6a46e3d27e58f.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `653ef99a7abe7c1c5ab822e6100c93216680624b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
