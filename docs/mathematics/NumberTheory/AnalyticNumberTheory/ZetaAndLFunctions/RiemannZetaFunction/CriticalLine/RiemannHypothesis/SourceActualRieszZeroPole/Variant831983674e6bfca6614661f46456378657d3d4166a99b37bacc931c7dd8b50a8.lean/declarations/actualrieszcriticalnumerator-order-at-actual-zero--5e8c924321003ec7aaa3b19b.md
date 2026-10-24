# actualRieszCriticalNumerator_order_at_actual_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a9011a1-12ba-5821-1d49-5a55a00e81eb",
  "kind": "theorem",
  "lexical_name": "actualRieszCriticalNumerator_order_at_actual_zero",
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
  "slug": "actualrieszcriticalnumerator-order-at-actual-zero--5e8c924321003ec7aaa3b19b",
  "source": {
    "blob": "e0110ef8939ac44840ac2971e733226a8c74a10b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 93,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszZeroPole/Variant831983674e6bfca6614661f46456378657d3d4166a99b37bacc931c7dd8b50a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e8c924321003ec7aaa3b19ba194755e93e48ae9132060b6b6227786eb1c305c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszZeroPole/Variant831983674e6bfca6614661f46456378657d3d4166a99b37bacc931c7dd8b50a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a9011a1-12ba-5821-1d49-5a55a00e81eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualRieszCriticalNumerator_order_at_actual_zero
    (ρ : (zetaZeros zetaSeam).carrier) :
    meromorphicOrderAt actualRieszCriticalNumerator ((ρ : ℂ) - 1 / 2) = -1 := by
  have hreg := rational_subtraction_analytic ρ
  have hlt : meromorphicOrderAt (fun z : ℂ => -logDeriv riemannZeta (1 / 2 + z))
      ((ρ : ℂ) - 1 / 2) <
      meromorphicOrderAt (fun z : ℂ => -(1 / (z - 1 / 2)))
        ((ρ : ℂ) - 1 / 2) := by
    rw [translated_neg_logDeriv_order ρ]
    exact lt_of_lt_of_le (by norm_num) hreg.meromorphicOrderAt_nonneg
  simpa only [Pi.add_apply, actualRieszCriticalNumerator, sub_eq_add_neg,
    translated_neg_logDeriv_order ρ] using
    meromorphicOrderAt_add_eq_left_of_lt hreg.meromorphicAt hlt

/-- No holomorphic punctured-germ extension exists through an actual right-hand zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszZeroPole/Variant831983674e6bfca6614661f46456378657d3d4166a99b37bacc931c7dd8b50a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszZeroPole/Variant831983674e6bfca6614661f46456378657d3d4166a99b37bacc931c7dd8b50a8.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0110ef8939ac44840ac2971e733226a8c74a10b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
