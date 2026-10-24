# IsMulHom.to_isMonoidHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fb2c91f52f43205912d3c4f1a25a28ea666f098b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 191,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/65/6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f483cbea-772e-a363-f01c-0953d2715624",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d6d36430-112e-3f2a-8054-d937e1aa2123",
  "kind": "theorem",
  "lexical_name": "IsMulHom.to_isMonoidHom",
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
  "slug": "ismulhom-to-ismonoidhom--36ebb6cf2954c4099570046a",
  "source": {
    "blob": "fb2c91f52f43205912d3c4f1a25a28ea666f098b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 191,
    "path": "GRWTSK/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36ebb6cf2954c4099570046aabf927acec4c72c57e2aa7074188f3af794b90ae",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6d36430-112e-3f2a-8054-d937e1aa2123`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsMulHom.to_isMonoidHom [MulOneClass α] [Group β] {f : α → β} (hf : IsMulHom f) :
    IsMonoidHom f :=
  { map_one := mul_right_eq_self.1 <| by rw [← hf.map_mul, one_mul]
    map_mul := hf.map_mul }
#align is_mul_hom.to_is_monoid_hom IsMulHom.to_isMonoidHom
#align is_add_hom.to_is_add_monoid_hom IsAddHom.to_isAddMonoidHom

namespace IsMonoidHom

variable [MulOneClass α] [MulOneClass β] {f : α → β}

/-- The identity map is a monoid homomorphism. -/
@[to_additive "The identity map is an additive monoid homomorphism."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb2c91f52f43205912d3c4f1a25a28ea666f098b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
