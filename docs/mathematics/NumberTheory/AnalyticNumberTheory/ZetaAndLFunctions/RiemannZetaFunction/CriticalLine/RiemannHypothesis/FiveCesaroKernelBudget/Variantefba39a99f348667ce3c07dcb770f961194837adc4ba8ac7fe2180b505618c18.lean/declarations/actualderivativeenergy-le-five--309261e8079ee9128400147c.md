# actualDerivativeEnergy_le_five

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90ba0219-1ae3-8cdc-c602-bf1250d688e3",
  "kind": "theorem",
  "lexical_name": "actualDerivativeEnergy_le_five",
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
  "slug": "actualderivativeenergy-le-five--309261e8079ee9128400147c",
  "source": {
    "blob": "821e80595eda3e899b2205346082fe173794f14e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 39,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiveCesaroKernelBudget/Variantefba39a99f348667ce3c07dcb770f961194837adc4ba8ac7fe2180b505618c18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:309261e8079ee9128400147ca95f3fc8230d370c4fe9cdf729ca72b40bfd5c63",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiveCesaroKernelBudget/Variantefba39a99f348667ce3c07dcb770f961194837adc4ba8ac7fe2180b505618c18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90ba0219-1ae3-8cdc-c602-bf1250d688e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualDerivativeEnergy_le_five {A : ℝ} (hA : 91 ≤ A) :
    A ^ 2 * (∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x) ^ 2) ≤ 5 := by
  have hp : 0 < A := by linarith
  rw [actual_derivative_energy_eq hp]
  let r := (A ^ 2)⁻¹
  have hr0 : 0 ≤ r := by positivity
  have hr1 : r ≤ 1 / 8000 := by
    dsimp [r]
    rw [inv_eq_one_div]
    apply (div_le_div_iff₀ (by positivity : 0 < A ^ 2)
      (by norm_num : (0 : ℝ) < 8000)).2
    nlinarith
  apply (div_le_iff₀ (normPolynomial_pos r hr0)).2
  have hr2 : r ^ 2 ≤ r / 8000 := by nlinarith
  unfold derivativePolynomial normPolynomial
  nlinarith [sq_nonneg r]

/-- The actual curvature has coefficient five at all real separations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiveCesaroKernelBudget/Variantefba39a99f348667ce3c07dcb770f961194837adc4ba8ac7fe2180b505618c18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiveCesaroKernelBudget/Variantefba39a99f348667ce3c07dcb770f961194837adc4ba8ac7fe2180b505618c18.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `821e80595eda3e899b2205346082fe173794f14e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
