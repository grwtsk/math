# cesaroWeight_second_abs_le_origin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e942720-f3b9-b4d2-a31d-92af856a8993",
  "kind": "theorem",
  "lexical_name": "cesaroWeight_second_abs_le_origin",
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
  "slug": "cesaroweight-second-abs-le-origin--a620f35502dc7d709e1d1579",
  "source": {
    "blob": "821e80595eda3e899b2205346082fe173794f14e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 80,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiveCesaroKernelBudget/Variantefba39a99f348667ce3c07dcb770f961194837adc4ba8ac7fe2180b505618c18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a620f35502dc7d709e1d157982ef0f99c712c81f54222fed9260a70540f0c1b4",
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

Occurrence: `result:0e942720-f3b9-b4d2-a31d-92af856a8993`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cesaroWeight_second_abs_le_origin (A t : ℝ) (hA : 91 ≤ A)
    (ht : 0 ≤ t) :
    |deriv (deriv (cesaroWeight A)) t| ≤ 67 / A ^ 4 * t + 5 / (2 * A ^ 2) := by
  have h3 := actualCorrelation_third_abs_le hA t
  rw [abs_of_nonneg ht] at h3
  have h2 := actualCorrelation_second_abs_le_five hA t
  rw [cesaroWeight_second_deriv A t (by linarith : 0 < A)]
  have hb := abs_add_le
    (deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t)
    (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t / 2)
  rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)] at hb
  have h2h : |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t| / 2 ≤
      5 / (2 * A ^ 2) := by
    calc
      _ ≤ (5 / A ^ 2) / 2 := div_le_div_of_nonneg_right h2 (by norm_num)
      _ = _ := by ring
  exact hb.trans (add_le_add h3 h2h)

/-- Both actual zero traces give a triangular third-derivative envelope. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiveCesaroKernelBudget/Variantefba39a99f348667ce3c07dcb770f961194837adc4ba8ac7fe2180b505618c18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiveCesaroKernelBudget/Variantefba39a99f348667ce3c07dcb770f961194837adc4ba8ac7fe2180b505618c18.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `821e80595eda3e899b2205346082fe173794f14e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
