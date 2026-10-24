# UpperHalfPlane.qExpansion_coeff_eq_exp_mul_fourierCoeffOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:611b2e31-0a0d-c0e6-59fd-51ef36869522",
  "kind": "lemma",
  "lexical_name": "UpperHalfPlane.qExpansion_coeff_eq_exp_mul_fourierCoeffOn",
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
  "slug": "upperhalfplane-qexpansion-coeff-eq-exp-mul-fouriercoeffon--2f50221cbd456fc4b55554f3",
  "source": {
    "blob": "7798e860b352902c4209973f3f9536aa8d123544",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 237,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Bounds/Varianteac9c314a32f28fbee86dcad4449d12b04e436d19cbae193ca3ebb3e9c7555b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f50221cbd456fc4b55554f3814ad1bea2f85c444fd8d05b1d5d17e66de8bfa5",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Bounds/Varianteac9c314a32f28fbee86dcad4449d12b04e436d19cbae193ca3ebb3e9c7555b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:611b2e31-0a0d-c0e6-59fd-51ef36869522`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma UpperHalfPlane.qExpansion_coeff_eq_exp_mul_fourierCoeffOn {f : ℍ → ℂ} {h : ℝ} (hh : 0 < h)
    (hfper : Function.Periodic (f ∘ ofComplex) h) (hfhol : MDiff f)
    (hfbdd : IsBoundedAtImInfty f) {y : ℝ} (hy : 0 < y) (n : ℕ) :
    (qExpansion h f).coeff n = Real.exp (2 * π * n * y / h) *
      fourierCoeffOn hh (fun x : ℝ ↦ f ⟨x + y * UpperHalfPlane.I, by simpa using hy⟩) n := by
  have hq (u : ℝ) : (1 / 𝕢 h (u + y * UpperHalfPlane.I) ^ n : ℂ) =
      ↑(Real.exp (2 * π * n * y / h)) * fourier (-(n : ℤ)) (u : AddCircle h) := by
    push_cast [fourier_coe_apply, Function.Periodic.qParam, one_div, ← Complex.exp_nat_mul,
      ← Complex.exp_neg, ← Complex.exp_add]
    grind [Complex.I_sq]
  rw [qExpansion_coeff_eq_intervalIntegral hh hfper hfhol hfbdd n hy,
    fourierCoeffOn_eq_integral, sub_zero]
  simp_rw [hq, mul_assoc, intervalIntegral.integral_const_mul]
  simp [mul_left_comm]

/-- The negative-index Fourier coefficients of the restriction of `f` to a horizontal line vanish:
up to a constant, the `-(n + 1)`-th coefficient is the constant term of the `q`-expansion of
`𝕢 ^ (n + 1) * f`, which vanishes at the cusp. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Bounds/Varianteac9c314a32f28fbee86dcad4449d12b04e436d19cbae193ca3ebb3e9c7555b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Bounds/Varianteac9c314a32f28fbee86dcad4449d12b04e436d19cbae193ca3ebb3e9c7555b9.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7798e860b352902c4209973f3f9536aa8d123544` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
