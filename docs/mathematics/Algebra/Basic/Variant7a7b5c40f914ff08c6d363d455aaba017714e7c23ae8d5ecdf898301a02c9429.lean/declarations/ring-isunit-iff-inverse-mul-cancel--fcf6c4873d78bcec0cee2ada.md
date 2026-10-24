# Ring.isUnit_iff_inverse_mul_cancel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b3148d9bd8bac8cbc1c64edf40b1c0bbb61f2916",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 188,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7a7b5c40f914ff08c6d363d455aaba017714e7c23ae8d5ecdf898301a02c9429.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:417a6d6a-295c-9324-cd2e-0a54a893db86",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d754727e-bd1d-e5ad-2c50-64b3cdf144c3",
  "kind": "theorem",
  "lexical_name": "Ring.isUnit_iff_inverse_mul_cancel",
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
  "slug": "ring-isunit-iff-inverse-mul-cancel--fcf6c4873d78bcec0cee2ada",
  "source": {
    "blob": "b3148d9bd8bac8cbc1c64edf40b1c0bbb61f2916",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 188,
    "path": "GRWTSK/Algebra/Basic/Variant7a7b5c40f914ff08c6d363d455aaba017714e7c23ae8d5ecdf898301a02c9429.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fcf6c4873d78bcec0cee2adabdf69672eba02c8be3e48d927257171ba3296289",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant7a7b5c40f914ff08c6d363d455aaba017714e7c23ae8d5ecdf898301a02c9429.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d754727e-bd1d-e5ad-2c50-64b3cdf144c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ring.isUnit_iff_inverse_mul_cancel (x : M₀) : IsUnit x ↔ x⁻¹ʳ * x = 1 := by
  nontriviality M₀
  refine ⟨Ring.inverse_mul_cancel x, ?_⟩
  contrapose
  simp +contextual [not_isUnit_iff_inverse_eq_zero]

grind_pattern Ring.isUnit_iff_inverse_mul_cancel => IsUnit x, x⁻¹ʳ

@[simp, grind =]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant7a7b5c40f914ff08c6d363d455aaba017714e7c23ae8d5ecdf898301a02c9429.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant7a7b5c40f914ff08c6d363d455aaba017714e7c23ae8d5ecdf898301a02c9429.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3148d9bd8bac8cbc1c64edf40b1c0bbb61f2916` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
