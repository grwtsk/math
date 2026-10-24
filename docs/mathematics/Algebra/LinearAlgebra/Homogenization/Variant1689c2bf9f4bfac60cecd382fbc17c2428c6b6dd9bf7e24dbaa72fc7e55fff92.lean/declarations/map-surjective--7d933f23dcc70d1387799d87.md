# map_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3042118c5b3242ed79b7ac712559c7ace17902cb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 353,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fec04ac5-06e0-c809-83d4-1eab94f2755b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e0d926c1-95f1-bd17-dba0-f553ae27a2c7",
  "kind": "theorem",
  "lexical_name": "map_surjective",
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
  "slug": "map-surjective--7d933f23dcc70d1387799d87",
  "source": {
    "blob": "3042118c5b3242ed79b7ac712559c7ace17902cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 368,
    "line": 353,
    "path": "GRWTSK/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d933f23dcc70d1387799d8772f5574ed6cff94a3c4c2143f02d6b706597fcec",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0d926c1-95f1-bd17-dba0-f553ae27a2c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 353–368.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_surjective {f : P₁ →ᵃ[R] P₂} : Function.Surjective (map f) ↔ Function.Surjective f where
  mp hf p := by
    obtain ⟨x, hx⟩ := hf (ofPoint p)
    have := congr(weight $hx)
    rw [weight_map, weight_ofPoint, weight_eq_one_iff] at this
    obtain ⟨q, rfl⟩ := this
    rw [map_apply_ofPoint] at hx
    exact ⟨q, ofPoint_injective hx⟩
  mpr hf := by
    rw [← LinearMap.range_eq_top, ← top_le_iff, ← span_range_ofPoint, Submodule.span_le,
      Set.range_subset_iff, hf.forall]
    exact fun p => ⟨ofPoint p, map_apply_ofPoint ..⟩

/-- An affine isomorphism between two affine spaces extends to a linear isomorphism between their
homogenizations. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Homogenization/Variant1689c2bf9f4bfac60cecd382fbc17c2428c6b6dd9bf7e24dbaa72fc7e55fff92.lean#L353).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3042118c5b3242ed79b7ac712559c7ace17902cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
