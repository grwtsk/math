# min_mul_min_le_min_mul_mul'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1cc7f8d791e7605bce3f5f4e30072315afc1dbda",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 366,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/0318aebe5b4b0c2d329ae0f1d0edaabbc14998eea33ae4592d303d2c73f1ce11.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ee3f7ece-56e4-e5e9-fcac-55717e1a40bf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:46103eee-ab5c-49e1-56ee-4444fd1c6d5c",
  "kind": "theorem",
  "lexical_name": "min_mul_min_le_min_mul_mul'",
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
  "slug": "min-mul-min-le-min-mul-mul--5fcede366f4955c9750e19d3",
  "source": {
    "blob": "1cc7f8d791e7605bce3f5f4e30072315afc1dbda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 381,
    "line": 366,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant0318aebe5b4b0c2d329ae0f1d0edaabbc14998eea33ae4592d303d2c73f1ce11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fcede366f4955c9750e19d3172443320a0e6b9560ac25ea2ec78056dc555cea",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant0318aebe5b4b0c2d329ae0f1d0edaabbc14998eea33ae4592d303d2c73f1ce11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46103eee-ab5c-49e1-56ee-4444fd1c6d5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–381.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem min_mul_min_le_min_mul_mul' : min a c * min b d ≤ min (a * b) (c * d) :=
  le_min (mul_le_mul' (min_le_left _ _) <| min_le_left _ _) <|
    mul_le_mul' (min_le_right _ _) <| min_le_right _ _

end LinearOrder
end Mul

section MulOneClass

variable [MulOneClass α]

section LE

variable [LE α]

@[to_additive le_add_of_nonneg_right]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant0318aebe5b4b0c2d329ae0f1d0edaabbc14998eea33ae4592d303d2c73f1ce11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant0318aebe5b4b0c2d329ae0f1d0edaabbc14998eea33ae4592d303d2c73f1ce11.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1cc7f8d791e7605bce3f5f4e30072315afc1dbda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
