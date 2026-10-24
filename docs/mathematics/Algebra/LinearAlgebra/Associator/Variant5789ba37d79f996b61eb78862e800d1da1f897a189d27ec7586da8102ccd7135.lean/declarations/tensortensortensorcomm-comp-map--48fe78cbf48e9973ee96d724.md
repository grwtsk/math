# tensorTensorTensorComm_comp_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "feccf5348a2553cb4f456aeca001d460c14e846e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 298,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/5789ba37d79f996b61eb78862e800d1da1f897a189d27ec7586da8102ccd7135.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c3f3e2b9-7198-1959-c240-6852ab8f77ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4aaab31a-87e3-9125-50de-b32addc5f0a5",
  "kind": "theorem",
  "lexical_name": "tensorTensorTensorComm_comp_map",
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
  "slug": "tensortensortensorcomm-comp-map--48fe78cbf48e9973ee96d724",
  "source": {
    "blob": "feccf5348a2553cb4f456aeca001d460c14e846e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 298,
    "path": "GRWTSK/Algebra/LinearAlgebra/Associator/Variant5789ba37d79f996b61eb78862e800d1da1f897a189d27ec7586da8102ccd7135.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48fe78cbf48e9973ee96d724348d871694c26e05815cffea83b3cd9cea2dd882",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Associator/Variant5789ba37d79f996b61eb78862e800d1da1f897a189d27ec7586da8102ccd7135.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4aaab31a-87e3-9125-50de-b32addc5f0a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tensorTensorTensorComm_comp_map {V W : Type*}
    [AddCommMonoid V] [AddCommMonoid W] [Module R V] [Module R W]
    (f : M →ₗ[R] S) (g : N →ₗ[R] T) (h : P →ₗ[R] V) (j : Q →ₗ[R] W) :
    tensorTensorTensorComm R S T V W ∘ₗ map (map f g) (map h j) =
      map (map f h) (map g j) ∘ₗ tensorTensorTensorComm R M N P Q :=
  ext_fourfold' fun _ _ _ _ => rfl

variable (M N P Q)

/-- This special case is useful for describing the interplay between `dualTensorHomEquiv` and
composition of linear maps.

E.g., composition of linear maps gives a map `(M → N) ⊗ (N → P) → (M → P)`, and applying
`dual_tensor_hom_equiv.symm` to the three hom-modules gives a map
`(M.dual ⊗ N) ⊗ (N.dual ⊗ P) → (M.dual ⊗ P)`, which agrees with the application of `contractRight`
on `N ⊗ N.dual` after the suitable rebracketing.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Associator/Variant5789ba37d79f996b61eb78862e800d1da1f897a189d27ec7586da8102ccd7135.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Associator/Variant5789ba37d79f996b61eb78862e800d1da1f897a189d27ec7586da8102ccd7135.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `feccf5348a2553cb4f456aeca001d460c14e846e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
