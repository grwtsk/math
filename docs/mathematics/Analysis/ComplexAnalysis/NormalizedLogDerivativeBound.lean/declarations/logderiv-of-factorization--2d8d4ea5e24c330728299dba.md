# logDeriv_of_factorization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5eb54fb5-86f4-b2b4-63ce-eaf07b7c795b",
  "kind": "theorem",
  "lexical_name": "logDeriv_of_factorization",
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
  "slug": "logderiv-of-factorization--2d8d4ea5e24c330728299dba",
  "source": {
    "blob": "44b683e049ac87227567f5bcccc8d2cbd10209af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 75,
    "path": "GRWTSK/Analysis/Complex/NormalizedLogDerivativeBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d8d4ea5e24c330728299dba662d574dbbb40db7bfed2b76ec55ce96640b6fb3",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/NormalizedLogDerivativeBound.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5eb54fb5-86f4-b2b4-63ce-eaf07b7c795b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logDeriv_of_factorization {ι : Type*} (S : Finset ι) (a : ι → ℂ) (m : ι → ℕ)
    (L f : ℂ → ℂ) (C z : ℂ) (hC : C ≠ 0) (hL : DifferentiableAt ℂ L z)
    (ha : ∀ i ∈ S, ‖a i‖ ≤ 11 / 4) (hz : ‖z‖ ≤ 9 / 4)
    (hne : ∀ i ∈ S, z ≠ a i)
    (hfactor : f =ᶠ[𝓝 z] fun w => C *
      (Complex.exp (L w) * ∏ i ∈ S, (factor 3 (a i) w) ^ m i)) :
    logDeriv f z = deriv L z + ∑ i ∈ S, (m i : ℂ) * logDeriv (factor 3 (a i)) z := by
  classical
  let P : ℂ → ℂ := fun w => ∏ i ∈ S, (factor 3 (a i) w) ^ m i
  have hden (i : ι) (hi : i ∈ S) : (3 : ℂ) ^ 2 - conj (a i) * z ≠ 0 :=
    denominator_ne_zero 3 (by norm_num) (a i) z (by linarith [ha i hi]) (by linarith)
  have hfac (i : ι) (hi : i ∈ S) : factor 3 (a i) z ≠ 0 :=
    factor_ne_zero 3 (by norm_num) (a i) z (hne i hi) (hden i hi)
  have hdf (i : ι) (hi : i ∈ S) : DifferentiableAt ℂ (factor 3 (a i)) z :=
    differentiableAt_factor 3 (a i) z (hden i hi)
  have hP : P z ≠ 0 := Finset.prod_ne_zero_iff.mpr
    (fun i hi => pow_ne_zero _ (hfac i hi))
  have hdP : DifferentiableAt ℂ P z :=
    DifferentiableAt.fun_finsetProd (fun i hi => (hdf i hi).pow (m i))
  have he := (logDeriv_congr_nhds hfactor).eq_of_nhds
  rw [he, logDeriv_const_mul z C hC]
  change logDeriv (fun w => Complex.exp (L w) * P w) z = _
  rw [logDeriv_mul (f := fun w => Complex.exp (L w)) (g := P) z (Complex.exp_ne_zero _) hP hL.cexp hdP, logDeriv_exp L z hL]
  congr 1
  dsimp only [P]
  rw [logDeriv_prod (s := S) (x := z) (f := fun i w => (factor 3 (a i) w) ^ m i) (fun i hi => pow_ne_zero _ (hfac i hi))
    (fun i hi => (hdf i hi).pow (m i))]
  exact Finset.sum_congr rfl (fun i hi => logDeriv_fun_pow (hdf i hi) (m i))

/-- The bound includes BOTH the pole and disk-normalization terms of every factor.
Constructing hfactor and the normalized analytic logarithm for zeta is NOT proved here. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/NormalizedLogDerivativeBound.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/NormalizedLogDerivativeBound.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44b683e049ac87227567f5bcccc8d2cbd10209af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
