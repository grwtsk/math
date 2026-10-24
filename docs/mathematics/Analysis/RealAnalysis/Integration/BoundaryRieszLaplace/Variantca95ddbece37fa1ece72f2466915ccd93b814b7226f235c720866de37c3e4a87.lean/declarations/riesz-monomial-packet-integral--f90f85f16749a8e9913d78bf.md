# riesz_monomial_packet_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:345f559e-3761-2f1c-a52a-dfdf0f838c79",
  "kind": "theorem",
  "lexical_name": "riesz_monomial_packet_integral",
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
  "slug": "riesz-monomial-packet-integral--f90f85f16749a8e9913d78bf",
  "source": {
    "blob": "4627b51cad9e5e3548397b71f4bdcc95a69add45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 99,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variantca95ddbece37fa1ece72f2466915ccd93b814b7226f235c720866de37c3e4a87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f90f85f16749a8e9913d78bf0a709a68c32add9eedc0ef31efea95b131f6f0f1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variantca95ddbece37fa1ece72f2466915ccd93b814b7226f235c720866de37c3e4a87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:345f559e-3761-2f1c-a52a-dfdf0f838c79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem riesz_monomial_packet_integral (j : ℕ) (s : ℂ) (hs : 0 < s.re) :
    (∫ y in Ioi (0 : ℝ), rieszMonomialPacket j s y) =
      (s ^ 2 - 1 / 4) ^ 2 * ((j + 9).factorial : ℂ) / s ^ (j + 10) := by
  have h5 := (half_line_polynomial_laplace_integrable (j + 5) s hs).const_mul
    ((j + 9).descFactorial 4 : ℂ)
  have h7 := (half_line_polynomial_laplace_integrable (j + 7) s hs).const_mul
    (((j + 9).descFactorial 2 : ℂ) / 2)
  have h9 := (half_line_polynomial_laplace_integrable (j + 9) s hs).const_mul (1 / 16 : ℂ)
  have h57 : IntegrableOn (fun y : ℝ ↦
      ((j + 9).descFactorial 4 : ℂ) * ((y : ℂ) ^ (j + 5) * Complex.exp (-s * (y : ℂ))) -
        (((j + 9).descFactorial 2 : ℂ) / 2) *
          ((y : ℂ) ^ (j + 7) * Complex.exp (-s * (y : ℂ)))) (Ioi 0) := h5.sub h7
  unfold rieszMonomialPacket
  rw [integral_add h57 h9, integral_sub h5 h7]
  simp_rw [integral_const_mul, half_line_polynomial_laplace_integral _ s hs]
  have h4 : ((j + 9).descFactorial 4 : ℂ) * ((j + 5).factorial : ℂ) =
      ((j + 9).factorial : ℂ) := by
    have h := Nat.factorial_mul_descFactorial (n := j + 9) (k := 4) (by omega)
    rw [show j + 9 - 4 = j + 5 by omega] at h
    rw [mul_comm]
    exact_mod_cast h
  have h2 : ((j + 9).descFactorial 2 : ℂ) * ((j + 7).factorial : ℂ) =
      ((j + 9).factorial : ℂ) := by
    have h := Nat.factorial_mul_descFactorial (n := j + 9) (k := 2) (by omega)
    rw [show j + 9 - 2 = j + 7 by omega] at h
    rw [mul_comm]
    exact_mod_cast h
  have hne : s ≠ 0 := by intro h; simp [h] at hs
  simp only [show j + 5 + 1 = j + 6 by omega, show j + 7 + 1 = j + 8 by omega,
    show j + 9 + 1 = j + 10 by omega]
  rw [← mul_div_assoc, h4, div_mul_div_comm, h2, div_mul_div_comm, one_mul]
  rw [show j + 10 = j + 6 + 4 by omega, pow_add,
    show j + 8 = j + 6 + 2 by omega, pow_add]
  field_simp
  ring

/-- The actual extension integrand is its finite sum of justified differential packets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variantca95ddbece37fa1ece72f2466915ccd93b814b7226f235c720866de37c3e4a87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variantca95ddbece37fa1ece72f2466915ccd93b814b7226f235c720866de37c3e4a87.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4627b51cad9e5e3548397b71f4bdcc95a69add45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
