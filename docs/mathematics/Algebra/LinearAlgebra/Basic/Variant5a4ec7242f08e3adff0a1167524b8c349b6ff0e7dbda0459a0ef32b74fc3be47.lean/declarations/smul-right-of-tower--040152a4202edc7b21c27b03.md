# smul_right_of_tower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "87acffcbfa9444b83e13bc4513ba68c9b3936cbc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 84,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5a4ec7242f08e3adff0a1167524b8c349b6ff0e7dbda0459a0ef32b74fc3be47.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:97682f2d-79bd-e125-5de9-ad50ca5d617b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a5a8f8d6-8a50-b204-50cc-b4b2e8422e25",
  "kind": "lemma",
  "lexical_name": "smul_right_of_tower",
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
  "slug": "smul-right-of-tower--040152a4202edc7b21c27b03",
  "source": {
    "blob": "87acffcbfa9444b83e13bc4513ba68c9b3936cbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 84,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant5a4ec7242f08e3adff0a1167524b8c349b6ff0e7dbda0459a0ef32b74fc3be47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:040152a4202edc7b21c27b0372d5dc439b934d6c40b1953acb8e2c1535fd166d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant5a4ec7242f08e3adff0a1167524b8c349b6ff0e7dbda0459a0ef32b74fc3be47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5a8f8d6-8a50-b204-50cc-b4b2e8422e25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma smul_right_of_tower (r : S) (x y : M) : B x (r • y) = r • B x y := by
  rw [← IsScalarTower.algebraMap_smul R r, smul_right, Algebra.smul_def]

variable {D : BilinForm R M} {D₁ : BilinForm R₁ M₁}

-- TODO: instantiate `FunLike`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant5a4ec7242f08e3adff0a1167524b8c349b6ff0e7dbda0459a0ef32b74fc3be47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant5a4ec7242f08e3adff0a1167524b8c349b6ff0e7dbda0459a0ef32b74fc3be47.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87acffcbfa9444b83e13bc4513ba68c9b3936cbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
