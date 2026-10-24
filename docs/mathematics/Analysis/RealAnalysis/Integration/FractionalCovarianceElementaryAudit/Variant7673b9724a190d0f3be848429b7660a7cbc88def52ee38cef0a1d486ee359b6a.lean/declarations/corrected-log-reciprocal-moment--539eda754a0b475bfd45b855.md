# corrected_log_reciprocal_moment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d1f33770-ac1e-330c-ffc3-54f8bc1bcf1f",
  "kind": "theorem",
  "lexical_name": "corrected_log_reciprocal_moment",
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
  "slug": "corrected-log-reciprocal-moment--539eda754a0b475bfd45b855",
  "source": {
    "blob": "0bf6173162e2e35fb50dfbba55b2e9734e216584",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 84,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FractionalCovarianceElementaryAudit/Variant7673b9724a190d0f3be848429b7660a7cbc88def52ee38cef0a1d486ee359b6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:539eda754a0b475bfd45b8551e140cce00105adf41fe43ada71c2d642f6bd037",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FractionalCovarianceElementaryAudit/Variant7673b9724a190d0f3be848429b7660a7cbc88def52ee38cef0a1d486ee359b6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1f33770-ac1e-330c-ffc3-54f8bc1bcf1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem corrected_log_reciprocal_moment (X : ℕ) (hX : 1 ≤ X) :
    (∑ d ∈ Icc 1 X, dampedCoefficient X 0 d / (d : ℝ) * Real.log (d : ℝ)) =
      -logNormalization X := by
  have hs : (∑ d ∈ Icc 1 X, dampedCoefficient X 0 d / (d : ℝ) * Real.log (d : ℝ)) =
      (∑ d ∈ Icc 1 X, (ArithmeticFunction.moebius d : ℝ) / (d : ℝ) * Real.log (d : ℝ)) -
        mobiusReciprocalSum X * Real.log (X : ℝ) := by
    simp only [dampedCoefficient, neg_zero, zero_mul, Real.exp_zero, mul_one]
    simp_rw [sub_div, sub_mul, ite_div, ite_mul, zero_div, zero_mul]
    rw [sum_sub_distrib]
    simp [hX, (show (X : ℝ) ≠ 0 by exact_mod_cast (show X ≠ 0 by omega))]
  rw [hs]
  apply Complex.ofReal_injective
  have he := logNormalization_eq X hX
  simp only [Complex.ofReal_sub, Complex.ofReal_sum, Complex.ofReal_mul,
    Complex.ofReal_div, Complex.ofReal_natCast, Complex.ofReal_intCast, Complex.ofReal_neg]
  linear_combination he

/-- The full coefficient mass retains the original Mertens-prefix endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FractionalCovarianceElementaryAudit/Variant7673b9724a190d0f3be848429b7660a7cbc88def52ee38cef0a1d486ee359b6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FractionalCovarianceElementaryAudit/Variant7673b9724a190d0f3be848429b7660a7cbc88def52ee38cef0a1d486ee359b6a.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bf6173162e2e35fb50dfbba55b2e9734e216584` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
