# Phi_fourier_holo_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d06e6f64-53b1-8e1c-fb3d-268cc48d52e7",
  "kind": "lemma",
  "lexical_name": "Phi_fourier_holo_left",
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
  "slug": "phi-fourier-holo-left--14d64e8b533a2668b2d92fd1",
  "source": {
    "blob": "4730827a7084551f7643dc7ab62b8d647252630c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3768,
    "line": 3716,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14d64e8b533a2668b2d92fd17b43c60cd592d03b8d2d13450e96598619aed6b4",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d06e6f64-53b1-8e1c-fb3d-268cc48d52e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3716–3768.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Phi_fourier_holo_left (ν ε x : ℝ) (hν : ν > 0) :
    ∃ g : ℂ → ℂ, (∀ U : ℝ, U ≥ 0 → HolomorphicOn g (Rectangle (-1 : ℂ) (-1 / 2 - I * U))) ∧
    Set.EqOn g (fun z ↦ (Phi_circ ν ε z - Phi_star ν ε z) * E (-z * x)) {z | z ≠ z₀_pole ν} := by
  let z₀ := z₀_pole ν
  let f_base (z : ℂ) := (Phi_circ ν ε z - Phi_star ν ε z)
  let f (z : ℂ) := f_base z * E (-z * x)
  obtain ⟨c_base, h_tendsto_base⟩ := tendsto_nhds_of_meromorphicOrderAt_nonneg
    ((Phi_circ.meromorphic ν ε z₀).sub (Phi_star.meromorphic ν ε z₀))
    (meromorphicOrderAt_phi_diff_nonneg ν ε hν)
  let c := c_base * E (-z₀ * x)
  let g (z : ℂ) := if z = z₀ then c else f z
  use g
  constructor
  · intro U hU z hz
    by_cases hz₀ : z = z₀
    · have h_anal_z₀ : AnalyticAt ℂ g z₀ :=
        analyticAt_removable_sing_mul_E x
          ((Phi_circ.meromorphic ν ε z₀).sub (Phi_star.meromorphic ν ε z₀))
          h_tendsto_base
      exact (hz₀ ▸ h_anal_z₀).differentiableAt.differentiableWithinAt
    · have h_not_pole : ∀ n : ℤ, z ≠ ↑n - I * ↑ν / (2 * ↑π) := by
        intro n hn; have h_re : z.re = n := by
          rw [hn, Complex.sub_re, Complex.intCast_re, mul_div_assoc, Complex.I_mul_re]
          simp; field_simp; norm_cast
        have h_im : z.im = -ν / (2 * π) := by
          rw [hn, Complex.sub_im, Complex.intCast_im, mul_div_assoc, Complex.I_mul_im]
          norm_cast; ring
        have h_rect := hz; rw [Rectangle, Complex.mem_reProdIm] at h_rect
        simp only [neg_re, one_re, sub_re, div_ofNat_re, mul_re, I_re, ofReal_re, zero_mul, I_im,
          ofReal_im, mul_zero, sub_self, sub_zero, neg_im, one_im, neg_zero, sub_im, div_ofNat_im,
          zero_div, mul_im, one_mul, zero_add, zero_sub] at h_rect
        rw [Set.uIcc_of_le (by norm_num), Set.uIcc_of_ge (by linarith)] at h_rect
        have h_n : n = -1 := unique_int_in_Icc n (-1) (h_re ▸ h_rect.1) (by norm_num) (by norm_num)
        subst h_n
        exact hz₀ (Complex.ext
          (by
            rw [h_re]
            dsimp [z₀, z₀_pole]
            simp [Complex.div_im, Complex.ofReal_re, Complex.ofReal_im]
          )
          (by rw [h_im]; dsimp [z₀, z₀_pole]; simp; norm_cast; ring))
      have h_anal_z : AnalyticAt ℂ g z := by
        have h_eq : g =ᶠ[nhds z] f := by
          filter_upwards [eventually_ne_nhds hz₀] with w hw
          dsimp [g]; rw [if_neg hw]
        rw [analyticAt_congr h_eq]
        apply AnalyticAt.mul
        · exact (Phi_circ.analyticAt_of_not_pole ν ε z h_not_pole).sub
            (Phi_star.analyticAt_of_not_pole ν ε z h_not_pole)
        · unfold E; fun_prop
      exact h_anal_z.differentiableAt.differentiableWithinAt
  · intro z hz; dsimp [g]; rw [if_neg hz]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean#L3716).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4730827a7084551f7643dc7ab62b8d647252630c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
