# _root_.GRWTSK.Algebra.LinearAlgebra.IsAdjMatrix.Variantbf5d329f8ed74f4018d60419268afba6b0b001583b30f8439205ead3ec87d224.Matrix.isAdjMatrix_submatrix_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dbf4b530-e42a-3879-24ae-48c7dae981be",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.IsAdjMatrix.Variantbf5d329f8ed74f4018d60419268afba6b0b001583b30f8439205ead3ec87d224.Matrix.isAdjMatrix_submatrix_iff",
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
  "slug": "root-grwtsk-algebra-linearalgebra-isadjmatrix-variantbf5d329f8ed74f4018d--373c4f28c43c9c24fc5bc37a",
  "source": {
    "blob": "9a77cb9e3205252661c7c06b960d53dfa20e41a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 100,
    "path": "GRWTSK/Algebra/LinearAlgebra/AdjMatrix/Variant485cda56d31ff92ca7a95e7be4e4455ba22ba5c90b103e6dbb66fcf8804a2370.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:373c4f28c43c9c24fc5bc37ae694b2da4f71c31f298888c667b8484ae31ade92",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AdjMatrix/Variant485cda56d31ff92ca7a95e7be4e4455ba22ba5c90b103e6dbb66fcf8804a2370.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbf4b530-e42a-3879-24ae-48c7dae981be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.IsAdjMatrix.Variantbf5d329f8ed74f4018d60419268afba6b0b001583b30f8439205ead3ec87d224.Matrix.isAdjMatrix_submatrix_iff [Zero α] [One α] {f : W → V} (hf : f.Surjective) :
    (A.submatrix f f).IsAdjMatrix ↔ A.IsAdjMatrix := by
  refine ⟨fun h ↦ ?_, (·.submatrix f)⟩
  rw [← A.submatrix_id_id, ← f.comp_surjInv hf]
  apply h.submatrix

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AdjMatrix/Variant485cda56d31ff92ca7a95e7be4e4455ba22ba5c90b103e6dbb66fcf8804a2370.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AdjMatrix/Variant485cda56d31ff92ca7a95e7be4e4455ba22ba5c90b103e6dbb66fcf8804a2370.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a77cb9e3205252661c7c06b960d53dfa20e41a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
