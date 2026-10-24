# flattenEquiv_apply_flatIdx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5eb5184a986f4659bb9c15c5810f7a175fd3d45c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 157,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/29b9c05cabd489629a5ba7fc229759eebc85c9cb15e93fc5dc27b669c6de45cf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e24ec671-0bf9-c3e3-ec7b-ebe27cde3ee0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f304f35d-ddf4-412d-925f-a6ae26217899",
  "kind": "theorem",
  "lexical_name": "flattenEquiv_apply_flatIdx",
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
  "slug": "flattenequiv-apply-flatidx--7413173a4edab9f0b94930b7",
  "source": {
    "blob": "5eb5184a986f4659bb9c15c5810f7a175fd3d45c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 157,
    "path": "GRWTSK/Algebra/LinearAlgebra/GaloisField/Variant29b9c05cabd489629a5ba7fc229759eebc85c9cb15e93fc5dc27b669c6de45cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7413173a4edab9f0b94930b7b2254296fba4b57be2d8168ba023ee9cbdf08393",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/GaloisField/Variant29b9c05cabd489629a5ba7fc229759eebc85c9cb15e93fc5dc27b669c6de45cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f304f35d-ddf4-412d-925f-a6ae26217899`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem flattenEquiv_apply_flatIdx
    (A : BinMat m n) (i : Fin m) (j : Fin n) :
    flattenEquiv m n A (BinMatMut.flatIdx i j) = A i j := by
  change A ((rowMajorIndexEquiv m n).symm (BinMatMut.flatIdx i j)).1
      ((rowMajorIndexEquiv m n).symm (BinMatMut.flatIdx i j)).2 = A i j
  have hp : (rowMajorIndexEquiv m n).symm (BinMatMut.flatIdx i j) = (i, j) := by
    apply (rowMajorIndexEquiv m n).injective
    rw [Equiv.apply_symm_apply, rowMajorIndexEquiv_apply]
  rw [hp]

/-- Row-major flattening preserves pointwise XOR. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/GaloisField/Variant29b9c05cabd489629a5ba7fc229759eebc85c9cb15e93fc5dc27b669c6de45cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/GaloisField/Variant29b9c05cabd489629a5ba7fc229759eebc85c9cb15e93fc5dc27b669c6de45cf.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5eb5184a986f4659bb9c15c5810f7a175fd3d45c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
