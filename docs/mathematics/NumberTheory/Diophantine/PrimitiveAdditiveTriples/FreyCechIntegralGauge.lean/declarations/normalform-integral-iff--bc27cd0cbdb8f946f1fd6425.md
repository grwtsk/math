# normalForm_integral_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7aa9c941-30a7-c751-0e35-4a0351221d6b",
  "kind": "theorem",
  "lexical_name": "normalForm_integral_iff",
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
  "slug": "normalform-integral-iff--bc27cd0cbdb8f946f1fd6425",
  "source": {
    "blob": "155bc57df48d9c6c7ff4ca47fed3ce6556858bcd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 78,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechIntegralGauge.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc27cd0cbdb8f946f1fd64255e3d206cba61b8500829f366d2d9861988f34b8c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechIntegralGauge.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7aa9c941-30a7-c751-0e35-4a0351221d6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalForm_integral_iff (a b : ℤ) (k : ℕ) (v : IntegerCell k) :
    (∃ u : IntegerCell k, realize a b k u =
      FreyCechGaugeMetric.normalForm ((a : ℚ) : ℝ) ((b : ℚ) : ℝ) k (realize a b k v)) ↔
    ∀ i : Index k,
      (3 : ℤ) ∣ (reduce (scalarCell k v i)).1 ∧
      (4 : ℤ) ∣ (reduce (scalarCell k v i)).2 1 - (reduce (scalarCell k v i)).2 0 ∧
      (4 : ℤ) ∣ (reduce (scalarCell k v i)).2 2 - (reduce (scalarCell k v i)).2 0 := by
  rw [in_realized_lattice_iff]
  simp_rw [FreyCechGaugeMetric.coefficient_normalForm, coefficient_realize, normalForm_cast]
  change (∀ i, IntegralMinimum (reduce (scalarCell k v i)).1
    (reduce (scalarCell k v i)).2) ↔ _
  simp_rw [minimum_integral_iff]

/-- Integral full-state recovery retains the two discarded gauge fields at every grade. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechIntegralGauge.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechIntegralGauge.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `155bc57df48d9c6c7ff4ca47fed3ce6556858bcd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
