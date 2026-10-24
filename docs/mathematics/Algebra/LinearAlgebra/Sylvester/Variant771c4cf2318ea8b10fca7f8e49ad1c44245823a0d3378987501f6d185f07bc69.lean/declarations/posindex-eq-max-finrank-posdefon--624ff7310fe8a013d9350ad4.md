# posIndex_eq_max_finrank_posDefOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a8a662e47dc8adf7442e41bc58e732f0bba70d04",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 304,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/77/771c4cf2318ea8b10fca7f8e49ad1c44245823a0d3378987501f6d185f07bc69.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:05d811ca-d918-2436-85fb-92abb4b7cc12",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:64bfae7d-ff82-9dad-f976-de78e9ad81b7",
  "kind": "theorem",
  "lexical_name": "posIndex_eq_max_finrank_posDefOn",
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
  "slug": "posindex-eq-max-finrank-posdefon--624ff7310fe8a013d9350ad4",
  "source": {
    "blob": "a8a662e47dc8adf7442e41bc58e732f0bba70d04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 304,
    "path": "GRWTSK/Algebra/LinearAlgebra/Sylvester/Variant771c4cf2318ea8b10fca7f8e49ad1c44245823a0d3378987501f6d185f07bc69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:624ff7310fe8a013d9350ad4686381d6b8cb7c76fde22dc57763930e0ed91e4c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Sylvester/Variant771c4cf2318ea8b10fca7f8e49ad1c44245823a0d3378987501f6d185f07bc69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64bfae7d-ff82-9dad-f976-de78e9ad81b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem posIndex_eq_max_finrank_posDefOn {A : Matrix n n 𝕜} (hA : A.IsHermitian) :
    ∃ W : Submodule 𝕜 (n → 𝕜), PosDefOn A W ∧
      Module.finrank 𝕜 W = posIndex hA :=
  ⟨_, posDefOn_range_hermPosPart hA, finrank_range_hermPosPart hA⟩

end RHLinalg
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Sylvester/Variant771c4cf2318ea8b10fca7f8e49ad1c44245823a0d3378987501f6d185f07bc69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Sylvester/Variant771c4cf2318ea8b10fca7f8e49ad1c44245823a0d3378987501f6d185f07bc69.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8a662e47dc8adf7442e41bc58e732f0bba70d04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
