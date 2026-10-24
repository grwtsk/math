# Phi_fourier_holo_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff796b0e5ce50fb625a95391f29798f81bd649bf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 3685,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:20300114-0062-b073-fd15-c12c43cd3030",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b7f1a532-d74c-15e9-2c50-195d635c19ad",
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
  "slug": "phi-fourier-holo-left--70fbc08c133fa4c496dfa657",
  "source": {
    "blob": "ff796b0e5ce50fb625a95391f29798f81bd649bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3737,
    "line": 3685,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70fbc08c133fa4c496dfa657f936e8e16e3083ed5092d108156ca52a5d038a57",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7f1a532-d74c-15e9-2c50-195d635c19ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3685–3737.

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
            dsimp [z₀, z₀_pole]
            rw [h_re, Complex.div_im, Complex.ofReal_im, Complex.mul_im, Complex.ofReal_im]
            simp
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

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean#L3685).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff796b0e5ce50fb625a95391f29798f81bd649bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
