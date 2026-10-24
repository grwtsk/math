# dimension_comp_eq_dimension_add_dimension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "776ac658e62c6151c33aa6e39659c0cdd3af5890",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 287,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/12e045ba367a79b52812cdc5d2c14b784319865bcd86298b6947d2d707b6cbc6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b1a01185-d909-d9f0-5fef-de5e087f88f2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:505bd136-7b37-9ac0-908d-b001723462cc",
  "kind": "lemma",
  "lexical_name": "dimension_comp_eq_dimension_add_dimension",
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
  "slug": "dimension-comp-eq-dimension-add-dimension--187e4032f384bdcf456deb09",
  "source": {
    "blob": "776ac658e62c6151c33aa6e39659c0cdd3af5890",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 287,
    "path": "GRWTSK/Algebra/LinearAlgebra/Submersive/Variant12e045ba367a79b52812cdc5d2c14b784319865bcd86298b6947d2d707b6cbc6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:187e4032f384bdcf456deb092a482b1a39b7d2233c7cbcb9a413568be6be1ae5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Submersive/Variant12e045ba367a79b52812cdc5d2c14b784319865bcd86298b6947d2d707b6cbc6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:505bd136-7b37-9ac0-908d-b001723462cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dimension_comp_eq_dimension_add_dimension [Finite ι] [Finite ι'] [Finite σ] [Finite σ'] :
    (Q.comp P).dimension = Q.dimension + P.dimension := by
  simp only [Presentation.dimension]
  have : Nat.card σ ≤ Nat.card ι :=
    card_relations_le_card_vars_of_isFinite P
  have : Nat.card σ' ≤ Nat.card ι' :=
    card_relations_le_card_vars_of_isFinite Q
  simp only [Nat.card_sum]
  lia

section

/-!
### Jacobian of composition

Let `S` be an `R`-algebra and `T` be an `S`-algebra with presentations `P` and `Q` respectively.
In this section we compute the Jacobian of the composition of `Q` and `P` to be
the product of the Jacobians. For this we use a block decomposition of the Jacobi matrix and show
that the upper-right block vanishes, the upper-left block has determinant Jacobian of `Q` and
the lower-right block has determinant Jacobian of `P`.

-/

variable [Fintype σ] [Fintype σ']

open scoped Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Submersive/Variant12e045ba367a79b52812cdc5d2c14b784319865bcd86298b6947d2d707b6cbc6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Submersive/Variant12e045ba367a79b52812cdc5d2c14b784319865bcd86298b6947d2d707b6cbc6.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `776ac658e62c6151c33aa6e39659c0cdd3af5890` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
