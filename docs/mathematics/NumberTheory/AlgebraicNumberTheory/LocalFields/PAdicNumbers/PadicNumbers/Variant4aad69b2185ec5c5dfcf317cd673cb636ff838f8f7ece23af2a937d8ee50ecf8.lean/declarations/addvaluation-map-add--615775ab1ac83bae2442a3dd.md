# AddValuation.map_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1908c4ea-e6f2-b976-627e-7ebebfb170b6",
  "kind": "theorem",
  "lexical_name": "AddValuation.map_add",
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
  "slug": "addvaluation-map-add--615775ab1ac83bae2442a3dd",
  "source": {
    "blob": "03992962c56bade9f45eae6542bea6aa3fcdf176",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1153,
    "line": 1137,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant4aad69b2185ec5c5dfcf317cd673cb636ff838f8f7ece23af2a937d8ee50ecf8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:615775ab1ac83bae2442a3dd5427c4a8503a4adc9a8bc989bd37d98588046bee",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant4aad69b2185ec5c5dfcf317cd673cb636ff838f8f7ece23af2a937d8ee50ecf8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1908c4ea-e6f2-b976-627e-7ebebfb170b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1137–1153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AddValuation.map_add (x y : ℚ_[p]) :
    min (addValuationDef x) (addValuationDef y) ≤ addValuationDef (x + y : ℚ_[p]) := by
  simp only [addValuationDef]
  by_cases hxy : x + y = 0
  · rw [hxy, if_pos (Eq.refl _)]
    exact le_top
  · by_cases hx : x = 0
    · rw [hx, if_pos (Eq.refl _), min_eq_right, zero_add]
      exact le_top
    · by_cases hy : y = 0
      · rw [hy, if_pos (Eq.refl _), min_eq_left, add_zero]
        exact le_top
      · rw [if_neg hx, if_neg hy, if_neg hxy, ← WithTop.coe_min, WithTop.coe_le_coe]
        exact valuation_map_add hxy
#align padic.add_valuation.map_add Padic.AddValuation.map_add

/-- The additive `p`-adic valuation on `ℚ_[p]`, as an `addValuation`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant4aad69b2185ec5c5dfcf317cd673cb636ff838f8f7ece23af2a937d8ee50ecf8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant4aad69b2185ec5c5dfcf317cd673cb636ff838f8f7ece23af2a937d8ee50ecf8.lean#L1137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03992962c56bade9f45eae6542bea6aa3fcdf176` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
