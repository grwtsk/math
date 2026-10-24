# centralizer_coe_map_includeLeft_eq_center_tensorProduct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "122454d0ae1418f5f8bb9f6938a2ed867b07a712",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 132,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/97b8c6c19b9bc47c9180def92b7746d3da7c2a323b77d09601f11b03a6cc88f4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2e1daef6-7c12-42f1-0e36-f29f884e717d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e5e8d74c-ca81-672e-9438-6680d8373c2a",
  "kind": "lemma",
  "lexical_name": "centralizer_coe_map_includeLeft_eq_center_tensorProduct",
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
  "slug": "centralizer-coe-map-includeleft-eq-center-tensorproduct--9c387a06ce5691bccd6093f3",
  "source": {
    "blob": "122454d0ae1418f5f8bb9f6938a2ed867b07a712",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 132,
    "path": "GRWTSK/Algebra/LinearAlgebra/Centralizer/Variant97b8c6c19b9bc47c9180def92b7746d3da7c2a323b77d09601f11b03a6cc88f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c387a06ce5691bccd6093f31f03c778d8575917db309379edf6433655e3d274",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Centralizer/Variant97b8c6c19b9bc47c9180def92b7746d3da7c2a323b77d09601f11b03a6cc88f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5e8d74c-ca81-672e-9438-6680d8373c2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma centralizer_coe_map_includeLeft_eq_center_tensorProduct
    (S : Subalgebra R A) [Module.Free R B] :
    Subalgebra.centralizer R
      (S.map (Algebra.TensorProduct.includeLeft (R := R) (B := B))) =
    (Algebra.TensorProduct.map (Subalgebra.centralizer R (S : Set A)).val
      (AlgHom.id R B)).range :=
  centralizer_coe_image_includeLeft_eq_center_tensorProduct R A B S

/--
Let `R` be a commutative ring and `A, B` be `R`-algebras where `A` is free as `R`-module.
For any subalgebra `S` of `B`, the centralizer of `1 ⊗ S ⊆ A ⊗ B` is `A ⊗ C_B(S)` where `C_B(S)` is
the centralizer of `S` in `B`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Centralizer/Variant97b8c6c19b9bc47c9180def92b7746d3da7c2a323b77d09601f11b03a6cc88f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Centralizer/Variant97b8c6c19b9bc47c9180def92b7746d3da7c2a323b77d09601f11b03a6cc88f4.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `122454d0ae1418f5f8bb9f6938a2ed867b07a712` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
