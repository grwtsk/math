# sourcePairing_triangular_discrepancy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ddba42b-fbc9-ef4d-7162-c3660b9c671a",
  "kind": "theorem",
  "lexical_name": "sourcePairing_triangular_discrepancy",
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
  "slug": "sourcepairing-triangular-discrepancy--b8fe71832b990f3330d10672",
  "source": {
    "blob": "04415c608a313f8c1d7e17edff3f6e63db0bd82a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 169,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAdaptiveTriangularConsumer/Variantfef9c59d578bebe81100cf3560bdc33e092cf37118dd82e6c45ed4f7680444a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8fe71832b990f3330d106728d3fecee6fbfaab594c0265161f6162968aa8efb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAdaptiveTriangularConsumer/Variantfef9c59d578bebe81100cf3560bdc33e092cf37118dd82e6c45ed4f7680444a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ddba42b-fbc9-ef4d-7162-c3660b9c671a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourcePairing_triangular_discrepancy (A : ℝ) (hA : 1 ≤ A) :
    |sourceHankelPairing A - triangularPairing A| ≤ B1 A / bandwidth A := by
  classical
  rw [sourcePairing_eq_finite A hA]
  unfold triangularPairing B1
  rw [← Finset.sum_sub_distrib, Finset.sum_div]
  apply (Finset.abs_sum_le_sum_abs _ _).trans
  apply Finset.sum_le_sum
  intro m hm
  rw [← Finset.sum_sub_distrib, Finset.sum_div]
  apply (Finset.abs_sum_le_sum_abs _ _).trans
  apply Finset.sum_le_sum
  intro n hn
  have hc := actual_correlation_abs_le_one A (frequency m n) hA
  have he : coefficient A m n * sourceCorrelation explicitSecondDerivative A (frequency m n) -
      coefficient A m n * (1 - frequency m n / bandwidth A) *
        sourceCorrelation explicitSecondDerivative A (frequency m n) =
      (frequency m n * coefficient A m n / bandwidth A) *
        sourceCorrelation explicitSecondDerivative A (frequency m n) := by ring
  rw [he, abs_mul, abs_div, abs_mul, abs_of_nonneg (frequency_nonneg m n),
    abs_of_pos (bandwidth_pos A hA)]
  exact mul_le_of_le_one_right
    (div_nonneg (mul_nonneg (frequency_nonneg m n) (abs_nonneg _))
      (bandwidth_pos A hA).le) hc

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAdaptiveTriangularConsumer/Variantfef9c59d578bebe81100cf3560bdc33e092cf37118dd82e6c45ed4f7680444a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAdaptiveTriangularConsumer/Variantfef9c59d578bebe81100cf3560bdc33e092cf37118dd82e6c45ed4f7680444a6.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04415c608a313f8c1d7e17edff3f6e63db0bd82a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
