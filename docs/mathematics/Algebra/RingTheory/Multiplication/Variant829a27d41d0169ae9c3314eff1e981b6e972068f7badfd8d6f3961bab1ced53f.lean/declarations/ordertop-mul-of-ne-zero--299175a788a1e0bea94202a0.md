# orderTop_mul_of_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0b507c5c948b24ddb60d19f9bda5274e3c246980",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 520,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/829a27d41d0169ae9c3314eff1e981b6e972068f7badfd8d6f3961bab1ced53f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ebaed7fa-b463-0021-614e-9863ad1cc214",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2bd64d1a-2d96-29e0-c246-907b7009f6d5",
  "kind": "theorem",
  "lexical_name": "orderTop_mul_of_ne_zero",
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
  "slug": "ordertop-mul-of-ne-zero--299175a788a1e0bea94202a0",
  "source": {
    "blob": "0b507c5c948b24ddb60d19f9bda5274e3c246980",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 533,
    "line": 520,
    "path": "GRWTSK/Algebra/RingTheory/Multiplication/Variant829a27d41d0169ae9c3314eff1e981b6e972068f7badfd8d6f3961bab1ced53f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:299175a788a1e0bea94202a095c5d10fc7fdf05a4b5f931faddeab0b04b89193",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Multiplication/Variant829a27d41d0169ae9c3314eff1e981b6e972068f7badfd8d6f3961bab1ced53f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2bd64d1a-2d96-29e0-c246-907b7009f6d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 520–533.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orderTop_mul_of_ne_zero {x y : R⟦Γ⟧} (h : x.leadingCoeff * y.leadingCoeff ≠ 0) :
    (x * y).orderTop = x.orderTop + y.orderTop := by
  by_cases hx : x = 0; · simp [hx]
  by_cases hy : y = 0; · simp [hy]
  have : (x * y).coeff (x.order + y.order) ≠ 0 := by rwa [coeff_mul_order_add_order x y]
  have hxy : x * y ≠ 0 := fun h ↦ (by simp [h] at this)
  rw [← order_eq_orderTop_of_ne_zero hx, ← order_eq_orderTop_of_ne_zero hy,
    ← order_eq_orderTop_of_ne_zero hxy, ← WithTop.coe_add, WithTop.coe_eq_coe]
  refine le_antisymm (order_le_of_coeff_ne_zero this) ?_
  rw [HahnSeries.order_of_ne hx, HahnSeries.order_of_ne hy, HahnSeries.order_of_ne hxy,
    ← Set.IsWF.min_add]
  exact Set.IsWF.min_le_min_of_subset support_mul_subset

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Multiplication/Variant829a27d41d0169ae9c3314eff1e981b6e972068f7badfd8d6f3961bab1ced53f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Multiplication/Variant829a27d41d0169ae9c3314eff1e981b6e972068f7badfd8d6f3961bab1ced53f.lean#L520).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b507c5c948b24ddb60d19f9bda5274e3c246980` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
