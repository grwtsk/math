# intValuation.map_add_le_max'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc4f0afa-732c-060e-9054-fc1ba3a40960",
  "kind": "theorem",
  "lexical_name": "intValuation.map_add_le_max'",
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
  "slug": "intvaluation-map-add-le-max--f4118856db64a0522ccd33c9",
  "source": {
    "blob": "fc35879c144dcdc3a6ac3ea530c5869201a11449",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 141,
    "path": "GRWTSK/Topology/GeneralTopology/AdicValuation/Variant22f9209d1ee533b59045033547640d3e5bc7e3454086b6f346c34783727b3385.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4118856db64a0522ccd33c9c16b915c202e38bc8e40425f777d587b8f5ab0d0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AdicValuation/Variant22f9209d1ee533b59045033547640d3e5bc7e3454086b6f346c34783727b3385.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc4f0afa-732c-060e-9054-fc1ba3a40960`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intValuation.map_add_le_max' (x y : R) :
    v.intValuationDef (x + y) ≤ max (v.intValuationDef x) (v.intValuationDef y) := by
  by_cases hx : x = 0
  · rw [hx, zero_add]
    order
  · by_cases hy : y = 0
    · rw [hy, add_zero]
      order
    · by_cases hxy : x + y = 0
      · rw [intValuationDef, ite_eq_left hxy]; exact zero_le
      · rw [v.intValuationDef_if_neg hxy, v.intValuationDef_if_neg hx, v.intValuationDef_if_neg hy,
          le_max_iff]
        simp only [exp_le_exp, neg_le_neg_iff, Nat.cast_le, ← min_le_iff]
        set nmin :=
          min ((Associates.mk v.asIdeal).count (Associates.mk (Ideal.span {x})).factors)
            ((Associates.mk v.asIdeal).count (Associates.mk (Ideal.span {y})).factors)
        have h_dvd_x : x ∈ v.asIdeal ^ nmin := by
          rw [← Associates.le_singleton_iff x nmin _,
            Associates.prime_pow_dvd_iff_le (Associates.mk_ne_zero'.mpr hx) _]
          · exact min_le_left _ _
          exact v.associates_irreducible
        have h_dvd_y : y ∈ v.asIdeal ^ nmin := by
          rw [← Associates.le_singleton_iff y nmin _,
            Associates.prime_pow_dvd_iff_le (Associates.mk_ne_zero'.mpr hy) _]
          · exact min_le_right _ _
          exact v.associates_irreducible
        have h_dvd_xy : Associates.mk v.asIdeal ^ nmin ≤ Associates.mk (Ideal.span {x + y}) := by
          rw [Associates.le_singleton_iff]
          exact Ideal.add_mem (v.asIdeal ^ nmin) h_dvd_x h_dvd_y
        rw [Associates.prime_pow_dvd_iff_le (Associates.mk_ne_zero'.mpr hxy) _] at h_dvd_xy
        · exact h_dvd_xy
        exact v.associates_irreducible

/-- The `v`-adic valuation on `R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AdicValuation/Variant22f9209d1ee533b59045033547640d3e5bc7e3454086b6f346c34783727b3385.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AdicValuation/Variant22f9209d1ee533b59045033547640d3e5bc7e3454086b6f346c34783727b3385.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc35879c144dcdc3a6ac3ea530c5869201a11449` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
