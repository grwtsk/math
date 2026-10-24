# MulOpposite.smul_eq_mul_unop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5b9b613e9674f6f3d660e565df263556435baa7c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c4d4474d4d16aea7b0d510e739d5f4cb7fb217513d8180775ca8b9ef2963e304.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6b6d1a77-9c46-306d-c170-421b532eb932",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1642eb73-c7b3-378d-58eb-6edac782505d",
  "kind": "theorem",
  "lexical_name": "MulOpposite.smul_eq_mul_unop",
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
  "slug": "mulopposite-smul-eq-mul-unop--a5dad7a50d28d741dfb3d919",
  "source": {
    "blob": "5b9b613e9674f6f3d660e565df263556435baa7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 101,
    "path": "GRWTSK/Algebra/GroupTheory/Opposite/Variantc4d4474d4d16aea7b0d510e739d5f4cb7fb217513d8180775ca8b9ef2963e304.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5dad7a50d28d741dfb3d919a7409e3f480b7a5155d9854dc98a621eebae14a6",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Opposite/Variantc4d4474d4d16aea7b0d510e739d5f4cb7fb217513d8180775ca8b9ef2963e304.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1642eb73-c7b3-378d-58eb-6edac782505d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MulOpposite.smul_eq_mul_unop [Mul α] {a : αᵐᵒᵖ} {a' : α} : a • a' = a' * a.unop :=
  rfl
#align mul_opposite.smul_eq_mul_unop MulOpposite.smul_eq_mul_unop
#align add_opposite.vadd_eq_add_unop AddOpposite.vadd_eq_add_unop

/-- The right regular action of a group on itself is transitive. -/
@[to_additive "The right regular action of an additive group on itself is transitive."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Opposite/Variantc4d4474d4d16aea7b0d510e739d5f4cb7fb217513d8180775ca8b9ef2963e304.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Opposite/Variantc4d4474d4d16aea7b0d510e739d5f4cb7fb217513d8180775ca8b9ef2963e304.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b9b613e9674f6f3d660e565df263556435baa7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
