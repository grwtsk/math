# cubic_ratio_response

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:38bf0b1f-0de7-ae8d-8d61-7747c2f17740",
  "kind": "theorem",
  "lexical_name": "cubic_ratio_response",
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
  "slug": "cubic-ratio-response--68bd6f02978c46a971457692",
  "source": {
    "blob": "78ada58f59d7210b8fa01dd53477696de3ae809e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 289,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceMultiplicativePackets/Varianta52eaa22ace53e076e96374d97ca50eca10c7bd6a52c516f10a38f7cd6f8cac1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68bd6f02978c46a971457692d12ff211c3913f3aabe1ca64144e15f7dc6c7594",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceMultiplicativePackets/Varianta52eaa22ace53e076e96374d97ca50eca10c7bd6a52c516f10a38f7cd6f8cac1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38bf0b1f-0de7-ae8d-8d61-7747c2f17740`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cubic_ratio_response (A : ℝ) {n m r : ℕ}
    (hn : 0 < n) (hm : 0 < m) (hr : 0 < r) :
    (∑ e : Fin 4, sourceCorrelation explicitSecondDerivative A
      (Real.log (cubicRatioKey n m r e : ℝ))) =
        sourceCorrelation explicitSecondDerivative A (Real.log n + Real.log m + Real.log r) +
        sourceCorrelation explicitSecondDerivative A (Real.log n + Real.log m - Real.log r) +
        sourceCorrelation explicitSecondDerivative A (Real.log n - Real.log m + Real.log r) +
        sourceCorrelation explicitSecondDerivative A (-Real.log n + Real.log m + Real.log r) := by
  have hn0 : (n : ℝ) ≠ 0 := by positivity
  have hm0 : (m : ℝ) ≠ 0 := by positivity
  have hr0 : (r : ℝ) ≠ 0 := by positivity
  have h10 : (1 : Fin 4) ≠ 0 := by decide
  have h20 : (2 : Fin 4) ≠ 0 := by decide
  have h21 : (2 : Fin 4) ≠ 1 := by decide
  have h30 : (3 : Fin 4) ≠ 0 := by decide
  have h31 : (3 : Fin 4) ≠ 1 := by decide
  have h32 : (3 : Fin 4) ≠ 2 := by decide
  simp only [Fin.sum_univ_four, cubicRatioKey, ite_true, if_neg h10, if_neg h20,
    if_neg h21, if_neg h30, if_neg h31, if_neg h32,
    Rat.cast_mul, Rat.cast_div, Rat.cast_natCast]
  rw [Real.log_mul (mul_ne_zero hn0 hm0) hr0, Real.log_mul hn0 hm0,
    Real.log_div (mul_ne_zero hn0 hm0) hr0, Real.log_mul hn0 hm0,
    Real.log_div (mul_ne_zero hn0 hr0) hm0, Real.log_mul hn0 hr0,
    Real.log_div (mul_ne_zero hm0 hr0) hn0, Real.log_mul hm0 hr0]
  have h3 : Real.log (n : ℝ) + Real.log (r : ℝ) - Real.log (m : ℝ) =
      Real.log (n : ℝ) - Real.log (m : ℝ) + Real.log (r : ℝ) := by ring
  have h4 : Real.log (m : ℝ) + Real.log (r : ℝ) - Real.log (n : ℝ) =
      -Real.log (n : ℝ) + Real.log (m : ℝ) + Real.log (r : ℝ) := by ring
  rw [h3, h4]

/-- Distinct tuples and signs retain their multiplicity before ratio aggregation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceMultiplicativePackets/Varianta52eaa22ace53e076e96374d97ca50eca10c7bd6a52c516f10a38f7cd6f8cac1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceMultiplicativePackets/Varianta52eaa22ace53e076e96374d97ca50eca10c7bd6a52c516f10a38f7cd6f8cac1.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78ada58f59d7210b8fa01dd53477696de3ae809e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
