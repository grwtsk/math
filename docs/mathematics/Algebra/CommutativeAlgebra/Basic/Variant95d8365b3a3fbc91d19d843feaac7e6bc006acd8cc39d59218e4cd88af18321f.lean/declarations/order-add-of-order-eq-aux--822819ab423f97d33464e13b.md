# order_add_of_order_eq.aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e711cfd7-dac1-1132-c826-486eaedf37f5",
  "kind": "theorem",
  "lexical_name": "order_add_of_order_eq.aux",
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
  "slug": "order-add-of-order-eq-aux--822819ab423f97d33464e13b",
  "source": {
    "blob": "bfdc8f72082525c52f1fe03aa34cc279cb8e9735",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2357,
    "line": 2340,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant95d8365b3a3fbc91d19d843feaac7e6bc006acd8cc39d59218e4cd88af18321f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:822819ab423f97d33464e13b6d9dc21b53c7d9dde3aba567a097708ff5e68751",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant95d8365b3a3fbc91d19d843feaac7e6bc006acd8cc39d59218e4cd88af18321f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e711cfd7-dac1-1132-c826-486eaedf37f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2340–2357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem order_add_of_order_eq.aux (φ ψ : PowerSeries R) (_h : order φ ≠ order ψ)
    (H : order φ < order ψ) : order (φ + ψ) ≤ order φ ⊓ order ψ := by
  suffices order (φ + ψ) = order φ by
    rw [le_inf_iff, this]
    exact ⟨le_rfl, le_of_lt H⟩
  · rw [order_eq]
    constructor
    · intro i hi
      rw [← hi] at H
      rw [(coeff _ _).map_add, coeff_of_lt_order i H, add_zero]
      exact (order_eq_nat.1 hi.symm).1
    · intro i hi
      rw [(coeff _ _).map_add, coeff_of_lt_order i hi, coeff_of_lt_order i (lt_trans hi H),
        zero_add]
-- #align power_series.order_add_of_order_eq.aux power_series.order_add_of_order_eq.aux

/-- The order of the sum of two formal power series
 is the minimum of their orders if their orders differ.-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant95d8365b3a3fbc91d19d843feaac7e6bc006acd8cc39d59218e4cd88af18321f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant95d8365b3a3fbc91d19d843feaac7e6bc006acd8cc39d59218e4cd88af18321f.lean#L2340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfdc8f72082525c52f1fe03aa34cc279cb8e9735` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
