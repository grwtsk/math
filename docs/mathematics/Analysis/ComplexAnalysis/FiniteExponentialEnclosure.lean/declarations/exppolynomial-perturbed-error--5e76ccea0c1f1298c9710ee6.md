# expPolynomial_perturbed_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca8cf4a0-a9d1-aebd-b7f5-8afd249dd013",
  "kind": "theorem",
  "lexical_name": "expPolynomial_perturbed_error",
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
  "slug": "exppolynomial-perturbed-error--5e76ccea0c1f1298c9710ee6",
  "source": {
    "blob": "89aa19c7c25a7b862d4113d93611f13574de58f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 85,
    "path": "GRWTSK/Analysis/Complex/FiniteExponentialEnclosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e76ccea0c1f1298c9710ee64ad474de0bf6c0d6a8e8f7aa4072e2ad44f5c5ae",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/FiniteExponentialEnclosure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca8cf4a0-a9d1-aebd-b7f5-8afd249dd013`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem expPolynomial_perturbed_error (u v : ℂ) (r d : ℝ) (K : ℕ)
    (hr : ‖v‖ ≤ r) (hK : r / ((K : ℝ) + 1) ≤ 1 / 2)
    (hd : ‖u - v‖ ≤ d) (hd1 : d ≤ 1) :
    ‖Complex.exp u - expPolynomial v K‖ ≤
      expRemainder r K +
        2 * (rectNorm (expPolynomial v K) + expRemainder r K) * d := by
  have he := expPolynomial_error v r K hr hK
  have hd0 : 0 ≤ d := (norm_nonneg _).trans hd
  have hupper : ‖Complex.exp v‖ ≤ rectNorm (expPolynomial v K) + expRemainder r K := by
    have h := norm_le_norm_sub_add (Complex.exp v) (expPolynomial v K)
    linarith [norm_le_rectNorm (expPolynomial v K)]
  have hnear := (exp_difference_near u v d hd hd1).trans
    (mul_le_mul_of_nonneg_right hupper (by positivity : 0 ≤ 2 * d))
  calc
    _ = ‖(Complex.exp u - Complex.exp v) + (Complex.exp v - expPolynomial v K)‖ := by
      congr 1
      ring
    _ ≤ ‖Complex.exp u - Complex.exp v‖ + ‖Complex.exp v - expPolynomial v K‖ :=
      norm_add_le _ _
    _ ≤ _ := by linarith

/-- A specification of primitive input enclosures, NOT a trusted result field.
No exponential value or exponential-error certificate is supplied. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/FiniteExponentialEnclosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/FiniteExponentialEnclosure.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89aa19c7c25a7b862d4113d93611f13574de58f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
