# squarePrefix_mul_deriv_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8077bd3c-8347-8346-c92e-8482f6bd2e19",
  "kind": "theorem",
  "lexical_name": "squarePrefix_mul_deriv_intervalIntegrable",
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
  "slug": "squareprefix-mul-deriv-intervalintegrable--04c26d63bdad5547405ac466",
  "source": {
    "blob": "a221246273566f67fe6880eef50a8f394591f58d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 163,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variante136a607dca4ad7c86d58f42d0d39e0b2518c036107690921206c8a65daa8162.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04c26d63bdad5547405ac4667abb945044d1fe58934ede419d6b55e2be3a500f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variante136a607dca4ad7c86d58f42d0d39e0b2518c036107690921206c8a65daa8162.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8077bd3c-8347-8346-c92e-8482f6bd2e19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squarePrefix_mul_deriv_intervalIntegrable (a b : ℝ) (hab : a ≤ b)
    (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F) :
    IntervalIntegrable (fun u => squarePrefix u * deriv F u) volume a b := by
  have hi : IntervalIntegrable (fun u => ∑ p ∈ primeLogInventory (b/2),
      squarePrefixCoefficient p * (if 2*Real.log (p : ℝ) ≤ u then deriv F u else 0))
      volume a b := by
    have hi' : IntervalIntegrable (∑ p ∈ primeLogInventory (b/2), fun u : ℝ =>
        squarePrefixCoefficient p * (if 2*Real.log (p : ℝ) ≤ u then deriv F u else 0))
        volume a b :=
      IntervalIntegrable.sum (primeLogInventory (b/2)) (fun p _ =>
        (intervalIntegrable_closed_step a b (2*Real.log (p : ℝ)) (deriv F)
          (hF.continuous_deriv_one.intervalIntegrable a b)).const_mul _)
    convert hi' using 1
    ext u
    simp
  apply hi.congr
  intro u hu
  dsimp only
  rw [squarePrefix_eq_steps b u ((uIoc_of_le hab ▸ hu).2), Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro p hp
  split_ifs <;> simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variante136a607dca4ad7c86d58f42d0d39e0b2518c036107690921206c8a65daa8162.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variante136a607dca4ad7c86d58f42d0d39e0b2518c036107690921206c8a65daa8162.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a221246273566f67fe6880eef50a8f394591f58d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
