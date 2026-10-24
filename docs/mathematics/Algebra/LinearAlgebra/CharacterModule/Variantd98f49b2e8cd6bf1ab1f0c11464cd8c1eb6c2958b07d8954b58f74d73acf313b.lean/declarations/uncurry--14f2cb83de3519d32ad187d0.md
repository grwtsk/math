# uncurry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d1307007be256f5e246bf57449355a88837569fcbe1e67fc8779d0cc36186d1e",
  "kind": "def",
  "lexical_name": "uncurry",
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
  "slug": "uncurry--14f2cb83de3519d32ad187d0",
  "source": {
    "blob": "82cd0054df8d1ca85be58fab8aabe5edc300b5ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 123,
    "path": "GRWTSK/Algebra/LinearAlgebra/CharacterModule/Variantd98f49b2e8cd6bf1ab1f0c11464cd8c1eb6c2958b07d8954b58f74d73acf313b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:14f2cb83de3519d32ad187d01d34f10ada52f19bfa1c19089ec9e9989bbabf37",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CharacterModule/Variantd98f49b2e8cd6bf1ab1f0c11464cd8c1eb6c2958b07d8954b58f74d73acf313b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d1307007be256f5e246bf57449355a88837569fcbe1e67fc8779d0cc36186d1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps] noncomputable def uncurry :
    (A →ₗ[R] CharacterModule B) →ₗ[R] CharacterModule (A ⊗[R] B) where
  toFun c := TensorProduct.liftAddHom c.toAddMonoidHom fun r a b ↦ congr($(c.map_smul r a) b)
  map_add' c c' := DFunLike.ext _ _ fun x ↦ by refine x.induction_on ?_ ?_ ?_ <;> aesop
  map_smul' r c := DFunLike.ext _ _ fun x ↦ x.induction_on
    (by simp_rw [map_zero]) (fun a b ↦ congr($(c.map_smul r a) b).symm) (by aesop)

/--
Any character `c` in `(A ⊗ B)⋆` induces a linear map `A → B⋆` by `a ↦ b ↦ c (a ⊗ b)`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CharacterModule/Variantd98f49b2e8cd6bf1ab1f0c11464cd8c1eb6c2958b07d8954b58f74d73acf313b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CharacterModule/Variantd98f49b2e8cd6bf1ab1f0c11464cd8c1eb6c2958b07d8954b58f74d73acf313b.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82cd0054df8d1ca85be58fab8aabe5edc300b5ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
