# realized_port_normal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4d84b66-a43d-9f45-54de-27e8273b594e",
  "kind": "theorem",
  "lexical_name": "realized_port_normal",
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
  "slug": "realized-port-normal--f01a1ba3ee22aa4f252cf1ab",
  "source": {
    "blob": "24c5041cc027e8ebe82362df03293179df267734",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 144,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechWeightedMinimum.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f01a1ba3ee22aa4f252cf1ab288047162a2990211baa6d81c7b2fea75dafa696",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechWeightedMinimum.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4d84b66-a43d-9f45-54de-27e8273b594e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem realized_port_normal (a b : ℤ) (k : ℕ) (l : ℚ)
    (hl : (a : ℚ)*(b : ℚ)*l = 1) (q : Parameters k) :
    FreyCechGaugeMetric.normalForm ((a : ℚ) : ℝ) ((b : ℚ) : ℝ) k
      (FreyCechIntegralGauge.realize a b k (integerPort a b k (integralCell q))) =
      FreyCechIntegralGauge.realize a b k (integerPort a b k (integralCell q)) := by
  rw [realized_port_source]
  have hn := GRWTSK.Analysis.LinearAlgebra.ThreeCellGaugeMetric.normalForm_map
    (realLift (a : ℚ) (b : ℚ) l hl k).toLinearMap
    (FreyCechIntegralGauge.realize a b k (integralCell q))
  change FreyCechGaugeMetric.normalForm _ _ _
      (fun j => realLift (a : ℚ) (b : ℚ) l hl k
        ((FreyCechIntegralGauge.realize a b k (integralCell q)).1 j),
       fun j => realLift (a : ℚ) (b : ℚ) l hl k
        ((FreyCechIntegralGauge.realize a b k (integralCell q)).2 j)) =
      (fun j => realLift (a : ℚ) (b : ℚ) l hl k
        ((FreyCechGaugeMetric.normalForm _ _ _
          (FreyCechIntegralGauge.realize a b k (integralCell q))).1 j),
       fun j => realLift (a : ℚ) (b : ℚ) l hl k
        ((FreyCechGaugeMetric.normalForm _ _ _
          (FreyCechIntegralGauge.realize a b k (integralCell q))).2 j)) at hn
  rw [realized_source_normal] at hn
  exact hn

/-- Native grade two: the composite costs differ from 36, 48, and 1296. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechWeightedMinimum.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechWeightedMinimum.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24c5041cc027e8ebe82362df03293179df267734` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
