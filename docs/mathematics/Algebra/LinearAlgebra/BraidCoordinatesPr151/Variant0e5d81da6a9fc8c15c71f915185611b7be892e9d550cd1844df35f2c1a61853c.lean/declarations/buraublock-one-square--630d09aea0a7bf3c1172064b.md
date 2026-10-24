# burauBlock_one_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4fbf5617e1a009bee0216725dc038fbcb33cb7db",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 147,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0e/0e5d81da6a9fc8c15c71f915185611b7be892e9d550cd1844df35f2c1a61853c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c16f106d-0ad1-befa-4ea1-75ba23aadfed",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e26860af-9bf0-3131-d193-d8365f12c992",
  "kind": "theorem",
  "lexical_name": "burauBlock_one_square",
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
  "slug": "buraublock-one-square--630d09aea0a7bf3c1172064b",
  "source": {
    "blob": "4fbf5617e1a009bee0216725dc038fbcb33cb7db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 147,
    "path": "GRWTSK/Algebra/LinearAlgebra/BraidCoordinatesPr151/Variant0e5d81da6a9fc8c15c71f915185611b7be892e9d550cd1844df35f2c1a61853c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:630d09aea0a7bf3c1172064b27a217d9f4022153cc82ea948799745cc057cd5f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BraidCoordinatesPr151/Variant0e5d81da6a9fc8c15c71f915185611b7be892e9d550cd1844df35f2c1a61853c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e26860af-9bf0-3131-d193-d8365f12c992`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem burauBlock_one_square : burauBlock 1 * burauBlock 1 = 1 := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [burauBlock, Matrix.mul_apply, Fin.sum_univ_succ]

end

end FormalResearch.PositiveAtlas.Grassmannian.Braid
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BraidCoordinatesPr151/Variant0e5d81da6a9fc8c15c71f915185611b7be892e9d550cd1844df35f2c1a61853c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BraidCoordinatesPr151/Variant0e5d81da6a9fc8c15c71f915185611b7be892e9d550cd1844df35f2c1a61853c.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fbf5617e1a009bee0216725dc038fbcb33cb7db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
