# coeff_order

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1a6666eebcbad8083bd16dbb18992385b8506479",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2241,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/759b15322e4d5b163c1266047f4b098a3d5b43ac16c7f3f16bd8d83cdca85ad0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f83c8c31-10d0-6072-6689-3170865f7c06",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7c80d731-6008-9977-5813-bdac47e092f6",
  "kind": "theorem",
  "lexical_name": "coeff_order",
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
  "slug": "coeff-order--b45c5941d2e0b6fb95828d54",
  "source": {
    "blob": "1a6666eebcbad8083bd16dbb18992385b8506479",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2248,
    "line": 2241,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant759b15322e4d5b163c1266047f4b098a3d5b43ac16c7f3f16bd8d83cdca85ad0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b45c5941d2e0b6fb95828d54d3a0a5a91c1f6a7502e658d4873fad1afc5a2aeb",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant759b15322e4d5b163c1266047f4b098a3d5b43ac16c7f3f16bd8d83cdca85ad0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c80d731-6008-9977-5813-bdac47e092f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2241–2248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_order (h : (order φ).Dom) : coeff R (φ.order.get h) φ ≠ 0 := by
  simp only [order, order_finite_iff_ne_zero.mp h, not_false_iff, dif_neg, PartENat.get_natCast']
  generalize_proofs h
  exact Nat.find_spec h
#align power_series.coeff_order PowerSeries.coeff_order

/-- If the `n`th coefficient of a formal power series is nonzero,
then the order of the power series is less than or equal to `n`.-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant759b15322e4d5b163c1266047f4b098a3d5b43ac16c7f3f16bd8d83cdca85ad0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant759b15322e4d5b163c1266047f4b098a3d5b43ac16c7f3f16bd8d83cdca85ad0.lean#L2241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a6666eebcbad8083bd16dbb18992385b8506479` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
