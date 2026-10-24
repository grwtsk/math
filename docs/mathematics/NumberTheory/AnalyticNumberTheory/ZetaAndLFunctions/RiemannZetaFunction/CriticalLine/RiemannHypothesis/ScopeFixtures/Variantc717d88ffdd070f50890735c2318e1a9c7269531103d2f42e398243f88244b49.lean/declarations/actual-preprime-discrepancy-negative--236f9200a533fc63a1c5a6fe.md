# actual_preprime_discrepancy_negative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0091e0c3-31f4-7b1d-d5b6-4ae5280d547e",
  "kind": "theorem",
  "lexical_name": "actual_preprime_discrepancy_negative",
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
  "slug": "actual-preprime-discrepancy-negative--236f9200a533fc63a1c5a6fe",
  "source": {
    "blob": "16b737c51b40275d12632b1485ea88147d972059",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 29,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixtures/Variantc717d88ffdd070f50890735c2318e1a9c7269531103d2f42e398243f88244b49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:236f9200a533fc63a1c5a6fed4b342c99292cbdcd53e3d7cf781275d0c357a8d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixtures/Variantc717d88ffdd070f50890735c2318e1a9c7269531103d2f42e398243f88244b49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0091e0c3-31f4-7b1d-d5b6-4ae5280d547e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_preprime_discrepancy_negative :
    criticalCumulativeDiscrepancy (Real.log 2 / 2) < 0 := by
  have hl : 0 < Real.log 2 := Real.log_pos (by norm_num)
  have he := primeLogError_below_first_prime
    (show Real.log 2 / 2 < Real.log 2 by linarith)
  have hz : primeLogPrefix (Real.log 2 / 2) = 0 := by
    unfold primeLogError at he
    linarith
  unfold criticalCumulativeDiscrepancy
  rw [hz, zero_sub]
  have hd := criticalDensity_integral_pos (A := Real.log 2 / 4) (by linarith)
  have hx : 2 * (Real.log 2 / 4) = Real.log 2 / 2 := by ring
  rw [hx] at hd
  exact neg_neg_of_pos hd

/-- The upper touching prime remains in the closed inventory with zero primitive factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixtures/Variantc717d88ffdd070f50890735c2318e1a9c7269531103d2f42e398243f88244b49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixtures/Variantc717d88ffdd070f50890735c2318e1a9c7269531103d2f42e398243f88244b49.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16b737c51b40275d12632b1485ea88147d972059` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
