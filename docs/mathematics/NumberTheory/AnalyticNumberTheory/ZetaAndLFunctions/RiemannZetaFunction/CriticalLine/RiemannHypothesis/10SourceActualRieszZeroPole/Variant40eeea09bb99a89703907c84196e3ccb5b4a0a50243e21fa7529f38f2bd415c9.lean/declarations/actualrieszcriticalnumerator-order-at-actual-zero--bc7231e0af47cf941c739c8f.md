# actualRieszCriticalNumerator_order_at_actual_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2dab9e6-2d22-b647-11c0-bd15943e2468",
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
  "slug": "actualrieszcriticalnumerator-order-at-actual-zero--bc7231e0af47cf941c739c8f",
  "source": {
    "blob": "2b19a4ea71ac4ca8adc797d7d05f5f2deb3021c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 106,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/10SourceActualRieszZeroPole/Variant40eeea09bb99a89703907c84196e3ccb5b4a0a50243e21fa7529f38f2bd415c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc7231e0af47cf941c739c8f6065beca780abd29df37609c72f79124d5c2c9d0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/10SourceActualRieszZeroPole/Variant40eeea09bb99a89703907c84196e3ccb5b4a0a50243e21fa7529f38f2bd415c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2dab9e6-2d22-b647-11c0-bd15943e2468`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–125.

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
    have hn : (-1 : WithTop ℤ) < 0 := WithTop.coe_lt_coe.mpr (by norm_num)
    exact lt_of_lt_of_le hn hreg.meromorphicOrderAt_nonneg
  have ho := meromorphicOrderAt_add_eq_left_of_lt hreg.meromorphicAt hlt
  have he : actualRieszCriticalNumerator =
      (fun z : ℂ => -logDeriv riemannZeta (1 / 2 + z)) +
        (fun z : ℂ => -(1 / (z - 1 / 2))) := by
    funext z
    simp only [actualRieszCriticalNumerator, Pi.add_apply, sub_eq_add_neg]
  rw [he, ho, translated_neg_logDeriv_order ρ]

/-- No holomorphic punctured-germ extension exists through an actual right-hand zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/10SourceActualRieszZeroPole/Variant40eeea09bb99a89703907c84196e3ccb5b4a0a50243e21fa7529f38f2bd415c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/10SourceActualRieszZeroPole/Variant40eeea09bb99a89703907c84196e3ccb5b4a0a50243e21fa7529f38f2bd415c9.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b19a4ea71ac4ca8adc797d7d05f5f2deb3021c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
