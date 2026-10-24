# riesz_monomial_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b088c133-223c-e208-0cec-54a0f46ba42f",
  "kind": "theorem",
  "lexical_name": "riesz_monomial_norm_le",
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
  "slug": "riesz-monomial-norm-le--d9cda9bdf485183bbba1cb6d",
  "source": {
    "blob": "ff9a7415a01d712979568726c105559022eb44ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 56,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RieszResidueAudit/Variant567941f51a0f493ae88a6c0a72718cb383a2922e556c4a9bcf3dec1630b18b15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9cda9bdf485183bbba1cb6dafca19408655b35cbc84950674dab70b645c6d4b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RieszResidueAudit/Variant567941f51a0f493ae88a6c0a72718cb383a2922e556c4a9bcf3dec1630b18b15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b088c133-223c-e208-0cec-54a0f46ba42f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem riesz_monomial_norm_le (A : ℝ) (hA : 1 ≤ A) (s : ℂ) (hs : 1 ≤ ‖s‖) (j : ℕ) :
    ‖(rieszCoefficient j : ℂ) * ((j + 9).factorial : ℂ) /
      ((A : ℂ) ^ j * s ^ (j + 10))‖ ≤
        |rieszCoefficient j| * ((j + 9).factorial : ℝ) / ‖s‖ ^ 10 := by
  have hAp : 0 < A := by linarith
  have hsp : 0 < ‖s‖ := by linarith
  have hAj : 1 ≤ A ^ j := one_le_pow₀ hA
  have hsj : ‖s‖ ^ 10 ≤ ‖s‖ ^ (j + 10) := pow_le_pow_right₀ hs (by omega)
  have hden : ‖s‖ ^ 10 ≤ A ^ j * ‖s‖ ^ (j + 10) := by
    calc
      _ ≤ ‖s‖ ^ (j + 10) := hsj
      _ ≤ A ^ j * ‖s‖ ^ (j + 10) := by
        nlinarith [pow_nonneg (norm_nonneg s) (j + 10)]
  simp only [norm_div, norm_mul, norm_pow, Complex.norm_real, Real.norm_eq_abs,
    abs_of_pos hAp, Complex.norm_natCast]
  exact div_le_div_of_nonneg_left (by positivity) (by positivity) hden

/-- The complete finite coefficient sum has a uniform tenth-order high-frequency bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RieszResidueAudit/Variant567941f51a0f493ae88a6c0a72718cb383a2922e556c4a9bcf3dec1630b18b15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RieszResidueAudit/Variant567941f51a0f493ae88a6c0a72718cb383a2922e556c4a9bcf3dec1630b18b15.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff9a7415a01d712979568726c105559022eb44ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
