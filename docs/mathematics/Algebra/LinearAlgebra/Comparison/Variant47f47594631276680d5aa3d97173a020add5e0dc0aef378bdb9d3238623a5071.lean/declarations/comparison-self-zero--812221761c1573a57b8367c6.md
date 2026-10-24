# comparison_self_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f4b547b550b7d6f8f31bd0c139a43efb71bc903c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 43,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/47/47f47594631276680d5aa3d97173a020add5e0dc0aef378bdb9d3238623a5071.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d17b5baa-a604-dba1-d133-483908f33831",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e648d8d9-1026-ef4f-498d-f15947ad69a3",
  "kind": "theorem",
  "lexical_name": "comparison_self_zero",
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
  "slug": "comparison-self-zero--812221761c1573a57b8367c6",
  "source": {
    "blob": "f4b547b550b7d6f8f31bd0c139a43efb71bc903c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 43,
    "path": "GRWTSK/Algebra/LinearAlgebra/Comparison/Variant47f47594631276680d5aa3d97173a020add5e0dc0aef378bdb9d3238623a5071.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:812221761c1573a57b8367c681015b7917f7dbdadc137e98cdee9a8e343c580f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Comparison/Variant47f47594631276680d5aa3d97173a020add5e0dc0aef378bdb9d3238623a5071.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e648d8d9-1026-ef4f-498d-f15947ad69a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comparison_self_zero (M : PaddedBinaryLogicMatrix rows cols) :
    compare M M = zeroComparison rows cols := by
  apply MatrixComparison.ext
  · apply BinaryLogicMatrix.ext
    intro i j
    simp [compare, zeroComparison, BinaryLogicMatrix.zero]
  · apply BinaryLogicMatrix.ext
    intro i j
    simp [compare, zeroComparison, BinaryLogicMatrix.zero]
  · apply BinaryLogicMatrix.ext
    intro i j
    simp [compare, zeroComparison, BinaryLogicMatrix.zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Comparison/Variant47f47594631276680d5aa3d97173a020add5e0dc0aef378bdb9d3238623a5071.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Comparison/Variant47f47594631276680d5aa3d97173a020add5e0dc0aef378bdb9d3238623a5071.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4b547b550b7d6f8f31bd0c139a43efb71bc903c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
