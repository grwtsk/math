# varphi_fourier_minus_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c14acd40-a584-1851-8de0-a2bb7dc9c744",
  "kind": "theorem",
  "lexical_name": "varphi_fourier_minus_error",
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
  "slug": "varphi-fourier-minus-error--b20129ceb66d0c162f25eef7",
  "source": {
    "blob": "fe1ca3fba3ce69f1a74f1c88c8189358b833ea04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 5374,
    "line": 5348,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b20129ceb66d0c162f25eef7e320164c29a192808d98d79a83be06996932cdb6",
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

Occurrence: `result:c14acd40-a584-1851-8de0-a2bb7dc9c744`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 5348–5374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem varphi_fourier_minus_error (ν : ℝ) (hν : ν > 0) :
    ∫ x in Set.univ, (Inu ν x - (𝓕 (ϕ_pm ν (-1)) x).re) = 1 / ν - 1 / (Real.exp ν - 1) := by
  let hf_hat_int := varphi_hat_integrable ν (-1) hν.ne'
  have h_phi_zero : (ϕ_pm ν (-1) 0).re = 1 / (rexp ν - 1) := by
    simp only [ϕ_pm, Real.sign_zero, ofReal_zero, zero_mul, add_zero, Phi_circ]
    norm_num [coth, Complex.tanh_eq_sinh_div_cosh, Complex.sinh, Complex.cosh]
    simp only [← ofReal_div, ← ofReal_neg, ← ofReal_ofNat, ← ofReal_sub, ← ofReal_add, ← ofReal_exp, ofReal_re]
    rw [Real.exp_neg]
    field_simp [Real.exp_ne_zero, (Real.exp_eq_one_iff ν).not.mpr hν.ne']
    rw [pow_two, ← Real.exp_add]; ring_nf
    field_simp [show -1 + rexp ν ≠ 0 by rw [add_comm]; exact sub_ne_zero.mpr ((Real.exp_eq_one_iff ν).not.mpr hν.ne')]
    ring
  simp only [MeasureTheory.setIntegral_univ]
  erw [integral_sub (Inu_integrable ν hν) hf_hat_int.re, Inu_integral ν hν,
    varphi_fourier_inversion_re ν (-1) hν.ne' hf_hat_int, h_phi_zero]

@[blueprint
  "varphi-fourier-plus-error"
  (title := "$L^1$ error bound for Fourier transform of $\\varphi^+$")
  (statement := /--
\[
\int_{-\infty}^{\infty} (\hat{\varphi_\nu^+}(x) - I_\nu(x))\, dx = \frac{1}{1 - e^{-\nu}} - \frac{1}{\nu}.
\]
  -/)
  (proof := /-- See previous. -/)
  (latexEnv := "proposition")
  (discussion := 1232)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean#L5348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe1ca3fba3ce69f1a74f1c88c8189358b833ea04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
