# coefficient_weight_le_cutoff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51cab9c6-517a-edc1-cbcb-549c3fd82d32",
  "kind": "theorem",
  "lexical_name": "coefficient_weight_le_cutoff",
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
  "slug": "coefficient-weight-le-cutoff--64541b504ef9fb31f519fb84",
  "source": {
    "blob": "d630d8c2bcb3f954d0bae95fca53c8a3bf44c95f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 41,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAdaptiveGaussianBudget/Variant2314ca6d69183f1091e7a980d89f29753cd5ed50521a2de482dc1a084757e376.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64541b504ef9fb31f519fb84adb7d7d17f2b4e19a2bfb630d62512841b68913c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAdaptiveGaussianBudget/Variant2314ca6d69183f1091e7a980d89f29753cd5ed50521a2de482dc1a084757e376.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51cab9c6-517a-edc1-cbcb-549c3fd82d32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coefficient_weight_le_cutoff {N n : ℕ} (hn : 2 ≤ n) (hnN : n ≤ N) :
    |(ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n| ≤ (N : ℝ) := by
  have hn1 : (1 : ℝ) ≤ n := by exact_mod_cast (by omega : 1 ≤ n)
  have hs : 1 ≤ Real.sqrt (n : ℝ) := Real.one_le_sqrt.mpr hn1
  calc
    _ = |ArithmeticFunction.vonMangoldt n - 1| / Real.sqrt n := by
      rw [abs_div, abs_of_nonneg (Real.sqrt_nonneg _)]
    _ ≤ |ArithmeticFunction.vonMangoldt n - 1| := div_le_self (abs_nonneg _) hs
    _ ≤ (n : ℝ) := coefficient_abs_le_nat hn
    _ ≤ (N : ℝ) := by exact_mod_cast hnN

/-- Square-shell geometry prices each unchanged signed atom's drift by two. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAdaptiveGaussianBudget/Variant2314ca6d69183f1091e7a980d89f29753cd5ed50521a2de482dc1a084757e376.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAdaptiveGaussianBudget/Variant2314ca6d69183f1091e7a980d89f29753cd5ed50521a2de482dc1a084757e376.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d630d8c2bcb3f954d0bae95fca53c8a3bf44c95f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
