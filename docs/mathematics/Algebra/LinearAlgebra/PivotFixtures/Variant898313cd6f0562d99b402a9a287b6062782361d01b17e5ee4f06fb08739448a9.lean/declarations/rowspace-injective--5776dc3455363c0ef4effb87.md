# rowSpace_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ae809fd0969c05dbc954f4ab36f76878c53e2bbb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/898313cd6f0562d99b402a9a287b6062782361d01b17e5ee4f06fb08739448a9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:294c8d79-c47a-833e-6117-01986d9dd3f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dbe681f2-2da2-8092-8e71-472f285b04a6",
  "kind": "theorem",
  "lexical_name": "rowSpace_injective",
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
  "slug": "rowspace-injective--5776dc3455363c0ef4effb87",
  "source": {
    "blob": "ae809fd0969c05dbc954f4ab36f76878c53e2bbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 40,
    "path": "GRWTSK/Algebra/LinearAlgebra/PivotFixtures/Variant898313cd6f0562d99b402a9a287b6062782361d01b17e5ee4f06fb08739448a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5776dc3455363c0ef4effb87c9c5ddefa9f32cfc509b2bb8a261e08fd28ebab5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PivotFixtures/Variant898313cd6f0562d99b402a9a287b6062782361d01b17e5ee4f06fb08739448a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbe681f2-2da2-8092-8e71-472f285b04a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rowSpace_injective : Function.Injective (fun x : Chart24 => frameRowSpace x.matrix) := by
  intro x y h
  apply matrix_injective
  exact normalized_eq_of_frameRowSpace_eq x.matrix y.matrix ![0, 1]
    (pivotSubmatrix_eq_one x) (pivotSubmatrix_eq_one y) h

/-- A chart point as an actual dimension-two real subspace, without quotient-rank ambiguity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PivotFixtures/Variant898313cd6f0562d99b402a9a287b6062782361d01b17e5ee4f06fb08739448a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PivotFixtures/Variant898313cd6f0562d99b402a9a287b6062782361d01b17e5ee4f06fb08739448a9.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae809fd0969c05dbc954f4ab36f76878c53e2bbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
