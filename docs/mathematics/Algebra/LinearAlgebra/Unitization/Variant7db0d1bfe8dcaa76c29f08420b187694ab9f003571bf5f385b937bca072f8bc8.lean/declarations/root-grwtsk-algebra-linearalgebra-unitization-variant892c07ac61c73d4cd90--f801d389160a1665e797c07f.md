# _root_.GRWTSK.Algebra.LinearAlgebra.Unitization.Variant892c07ac61c73d4cd90d555a6b5bcbf1f1d4eb06f13994f18e361c401a09ffd2.NonUnitalAlgHom.toAlgHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8d2cd9b007c6db6b1d225ac3af358a0c8f97ade9155e1aad2dfd53148f8b3c15",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.Unitization.Variant892c07ac61c73d4cd90d555a6b5bcbf1f1d4eb06f13994f18e361c401a09ffd2.NonUnitalAlgHom.toAlgHom",
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
  "slug": "root-grwtsk-algebra-linearalgebra-unitization-variant892c07ac61c73d4cd90--f801d389160a1665e797c07f",
  "source": {
    "blob": "5090788d9a9b3101f6d2a35ab3dcac8f0faea5eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 773,
    "line": 744,
    "path": "GRWTSK/Algebra/LinearAlgebra/Unitization/Variant7db0d1bfe8dcaa76c29f08420b187694ab9f003571bf5f385b937bca072f8bc8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f801d389160a1665e797c07fccad682e01002f367214aef1aad6c8047a8ab7f4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Unitization/Variant7db0d1bfe8dcaa76c29f08420b187694ab9f003571bf5f385b937bca072f8bc8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8d2cd9b007c6db6b1d225ac3af358a0c8f97ade9155e1aad2dfd53148f8b3c15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 744–773.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.Algebra.LinearAlgebra.Unitization.Variant892c07ac61c73d4cd90d555a6b5bcbf1f1d4eb06f13994f18e361c401a09ffd2.NonUnitalAlgHom.toAlgHom (φ : A →ₙₐ[R] C) : Unitization R A →ₐ[R] C where
  toFun := fun x => algebraMap R C x.fst + φ x.snd
  map_one' := by simp only [fst_one, map_one, snd_one, φ.map_zero, add_zero]
  map_mul' := fun x y => by
    induction x with
    | inl_add_inr x_r x_a =>
      induction y with
      | inl_add_inr =>
        simp only [fst_mul, fst_add, fst_inl, fst_inr, snd_mul, snd_add, snd_inl, snd_inr, add_zero,
          map_mul, zero_add, map_add, map_smul φ]
        rw [add_mul, mul_add, mul_add]
        rw [← Algebra.commutes _ (φ x_a)]
        simp only [Algebra.algebraMap_eq_smul_one, smul_one_mul, add_assoc]
  map_zero' := by simp only [fst_zero, map_zero, snd_zero, φ.map_zero, add_zero]
  map_add' := fun x y => by
    induction x with
    | inl_add_inr =>
      induction y with
      | inl_add_inr =>
        simp only [fst_add, fst_inl, fst_inr, add_zero, map_add, snd_add, snd_inl, snd_inr,
          zero_add, φ.map_add]
        rw [add_add_add_comm]
  commutes' := fun r => by
    simp only [algebraMap_eq_inl, fst_inl, snd_inl, φ.map_zero, add_zero]


set_option backward.isDefEq.respectTransparency false in
/-- Non-unital algebra homomorphisms from `A` into a unital `R`-algebra `C` lift uniquely to
`Unitization R A →ₐ[R] C`. This is the universal property of the unitization. -/
@[simps! apply symm_apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Unitization/Variant7db0d1bfe8dcaa76c29f08420b187694ab9f003571bf5f385b937bca072f8bc8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Unitization/Variant7db0d1bfe8dcaa76c29f08420b187694ab9f003571bf5f385b937bca072f8bc8.lean#L744).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5090788d9a9b3101f6d2a35ab3dcac8f0faea5eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
