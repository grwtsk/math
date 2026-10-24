# sixEnergy_port_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee3ffe3b-35c6-9d8a-192b-3c3e785635fe",
  "kind": "theorem",
  "lexical_name": "sixEnergy_port_bounds",
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
  "slug": "sixenergy-port-bounds--bc92d7d3210499cf807958c0",
  "source": {
    "blob": "f780e01c0ca42b41ccd7d27ce062852b4e6d10fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 132,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechGaugeMetric.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc92d7d3210499cf807958c06e6bbc2e9dd795539acb26ba9cfd25200dac38c7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechGaugeMetric.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee3ffe3b-35c6-9d8a-192b-3c3e785635fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sixEnergy_port_bounds (a b l : ℝ) (hl : a * b * l = 1) (hab : 1 ≤ a * b)
    (k : ℕ) (v : FreyCechHeat.Data a b k) :
    sixEnergy a b k v ≤ sixEnergy a b k (FreyCechHeat.port a b l hl k v) ∧
    sixEnergy a b k (FreyCechHeat.port a b l hl k v) ≤ ((a * b) ^ 2) ^ k * sixEnergy a b k v := by
  have hb := coefficientEnergy_bounds a b l hl hab k
  simp only [sixEnergy_agrees, FreyCechHeat.port]
  constructor
  · exact add_le_add (Finset.sum_le_sum (fun j _ => (hb (v.1 j)).1))
      (Finset.sum_le_sum (fun j _ => (hb (v.2 j)).1))
  · calc
      _ ≤ (∑ j, ((a * b) ^ 2) ^ k * coefficientEnergy a b k (v.1 j)) +
          ∑ j, ((a * b) ^ 2) ^ k * coefficientEnergy a b k (v.2 j) :=
        add_le_add (Finset.sum_le_sum (fun j _ => (hb (v.1 j)).2))
          (Finset.sum_le_sum (fun j _ => (hb (v.2 j)).2))
      _ = _ := by rw [← Finset.mul_sum, ← Finset.mul_sum, ← mul_add]

/-- Quotienting gauges is NOT a source-independent metric normalization of the port. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechGaugeMetric.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechGaugeMetric.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f780e01c0ca42b41ccd7d27ce062852b4e6d10fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
