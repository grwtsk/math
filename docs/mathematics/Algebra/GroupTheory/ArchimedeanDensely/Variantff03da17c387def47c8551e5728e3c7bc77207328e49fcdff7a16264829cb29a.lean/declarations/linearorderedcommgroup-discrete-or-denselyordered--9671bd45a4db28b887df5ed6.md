# LinearOrderedCommGroup.discrete_or_denselyOrdered

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2144c65ecf08d5c4a3d68152d38d997816769f90",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 272,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ff03da17c387def47c8551e5728e3c7bc77207328e49fcdff7a16264829cb29a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ccd17024-443d-083f-0636-6c8c3d7b8063",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d93f94f-15f2-2b48-5b33-4224e1a00e7c",
  "kind": "lemma",
  "lexical_name": "LinearOrderedCommGroup.discrete_or_denselyOrdered",
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
  "slug": "linearorderedcommgroup-discrete-or-denselyordered--9671bd45a4db28b887df5ed6",
  "source": {
    "blob": "2144c65ecf08d5c4a3d68152d38d997816769f90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 272,
    "path": "GRWTSK/Algebra/GroupTheory/ArchimedeanDensely/Variantff03da17c387def47c8551e5728e3c7bc77207328e49fcdff7a16264829cb29a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9671bd45a4db28b887df5ed6d9262b46b6806c84226ba002d4b9c924f044a492",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ArchimedeanDensely/Variantff03da17c387def47c8551e5728e3c7bc77207328e49fcdff7a16264829cb29a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d93f94f-15f2-2b48-5b33-4224e1a00e7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LinearOrderedCommGroup.discrete_or_denselyOrdered :
    Nonempty (G ≃*o Multiplicative ℤ) ∨ DenselyOrdered G := by
  rw [← OrderAddMonoidIso.toMultiplicativeRight.nonempty_congr]
  exact LinearOrderedAddCommGroup.discrete_or_denselyOrdered (Additive G)

variable (G) in
/-- Any linearly ordered mul-archimedean group is either isomorphic (and order-isomorphic)
to the multiplicative integers, or is densely ordered, exclusively.

(See also `LinearOrderedCommGroup.isCyclic_iff_not_denselyOrdered`.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ArchimedeanDensely/Variantff03da17c387def47c8551e5728e3c7bc77207328e49fcdff7a16264829cb29a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ArchimedeanDensely/Variantff03da17c387def47c8551e5728e3c7bc77207328e49fcdff7a16264829cb29a.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2144c65ecf08d5c4a3d68152d38d997816769f90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
