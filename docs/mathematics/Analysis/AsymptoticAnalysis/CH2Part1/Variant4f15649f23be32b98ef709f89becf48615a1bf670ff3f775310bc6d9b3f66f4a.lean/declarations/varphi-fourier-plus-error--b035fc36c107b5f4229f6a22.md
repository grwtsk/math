# varphi_fourier_plus_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f597f84d-8823-5f49-a2d6-8bccd88b11de",
  "kind": "theorem",
  "lexical_name": "varphi_fourier_plus_error",
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
  "slug": "varphi-fourier-plus-error--b035fc36c107b5f4229f6a22",
  "source": {
    "blob": "fe1ca3fba3ce69f1a74f1c88c8189358b833ea04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 5396,
    "line": 5375,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b035fc36c107b5f4229f6a22ee97338758a951502da8bd4c509710d10cf9c2b2",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f597f84d-8823-5f49-a2d6-8bccd88b11de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 5375–5396.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem varphi_fourier_plus_error (ν : ℝ) (hν : ν > 0) :
    ∫ x in Set.univ, ((𝓕 (ϕ_pm ν 1) x).re - Inu ν x) = 1 / (1 - Real.exp (-ν)) - 1 / ν := by
  let hf_hat_int := varphi_hat_integrable ν 1 hν.ne'
  have h_phi_zero : (ϕ_pm ν 1 0).re = 1 / (1 - Real.exp (-ν)) := by
    simp only [ϕ_pm, Real.sign_zero, ofReal_zero, zero_mul, add_zero, Phi_circ]
    norm_num [coth, Complex.tanh_eq_sinh_div_cosh, Complex.sinh, Complex.cosh]
    simp only [← ofReal_div, ← ofReal_neg, ← ofReal_ofNat, ← ofReal_sub, ← ofReal_add, ← ofReal_exp, ofReal_re]
    rw [Real.exp_neg]
    have h_sinh_nz : rexp (ν / 2) - rexp (- (ν / 2)) ≠ 0 := by
      refine sub_ne_zero.mpr (Real.exp_lt_exp.mpr ?_).ne'; linarith
    field_simp [Real.exp_ne_zero, h_sinh_nz]
    ring_nf; simp only [pow_two, ← Real.exp_add]
    rw [show ν * (1 / 2) + ν * (1 / 2) = ν by ring]; simp only [Real.exp_neg]
    field_simp [Real.exp_ne_zero, h_sinh_nz,
      show rexp ν - 1 ≠ 0 from sub_ne_zero.mpr ((Real.exp_eq_one_iff ν).not.mpr hν.ne'),
      show -1 + rexp ν ≠ 0 by rw [add_comm]; exact sub_ne_zero.mpr ((Real.exp_eq_one_iff ν).not.mpr hν.ne'),
      show 1 - rexp (-ν) ≠ 0 from sub_ne_zero.mpr (Real.exp_lt_one_iff.mpr (neg_lt_zero.mpr hν)).ne.symm]
    ring
  simp only [MeasureTheory.setIntegral_univ]
  erw [integral_sub hf_hat_int.re (Inu_integrable ν hν), Inu_integral ν hν,
    varphi_fourier_inversion_re ν 1 hν.ne' hf_hat_int, h_phi_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean#L5375).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe1ca3fba3ce69f1a74f1c88c8189358b833ea04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
