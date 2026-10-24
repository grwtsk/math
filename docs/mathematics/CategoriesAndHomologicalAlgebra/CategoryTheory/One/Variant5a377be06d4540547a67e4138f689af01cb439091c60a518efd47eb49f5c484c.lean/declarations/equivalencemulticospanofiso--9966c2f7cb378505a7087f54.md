# equivalenceMulticospanOfIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6e3bb7d5d29ae3f30f2d9ed37c5555a1f0f2de69ee73f0e85ddc154d8ee9d220",
  "kind": "def",
  "lexical_name": "equivalenceMulticospanOfIso",
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
  "slug": "equivalencemulticospanofiso--9966c2f7cb378505a7087f54",
  "source": {
    "blob": "40445eeb605b3ea9ff344dfd2758e1e5f43192df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 829,
    "line": 808,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/One/Variant5a377be06d4540547a67e4138f689af01cb439091c60a518efd47eb49f5c484c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9966c2f7cb378505a7087f54d81ff81121615878d05e7ee0e84bda87c74c3ccd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/One/Variant5a377be06d4540547a67e4138f689af01cb439091c60a518efd47eb49f5c484c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6e3bb7d5d29ae3f30f2d9ed37c5555a1f0f2de69ee73f0e85ddc154d8ee9d220`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 808–829.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivalenceMulticospanOfIso {E F : PreOneHypercover.{w} S} (f : E ≅ F) :
    WalkingMulticospan E.multicospanShape ≌ WalkingMulticospan F.multicospanShape where
  functor := f.hom.mapMulticospan
  inverse := f.inv.mapMulticospan
  unitIso :=
    eqToIso (WalkingMulticospan.functor_ext (by simp)
      (fun _ ↦ by dsimp; congr; apply PreOneHypercover.I₁'.ext <;> simp)
      (fun _ ↦ by dsimp; rw [eqToHom_naturality]; apply PreOneHypercover.I₁'.ext <;> simp)
      (fun _ ↦ by dsimp; rw [eqToHom_naturality]; apply PreOneHypercover.I₁'.ext <;> simp))
  counitIso :=
    eqToIso (WalkingMulticospan.functor_ext (by simp)
      (fun _ ↦ by dsimp; congr 1; apply PreOneHypercover.I₁'.ext <;> simp)
      (fun _ ↦ by dsimp; rw [eqToHom_naturality]; apply PreOneHypercover.I₁'.ext <;> simp)
      (fun _ ↦ by dsimp; rw [eqToHom_naturality]; apply PreOneHypercover.I₁'.ext <;> simp))
  functor_unitIso_comp c := by
    cases c <;> rw [eqToIso.hom, eqToHom_app, eqToHom_map] <;> simp

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- If `E` and `F` are isomorphic pre-`1`-hypercovers and `G` is a presheaf,
the multifork for `E` is exact if and only if the multifork for `F` is exact. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/One/Variant5a377be06d4540547a67e4138f689af01cb439091c60a518efd47eb49f5c484c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/One/Variant5a377be06d4540547a67e4138f689af01cb439091c60a518efd47eb49f5c484c.lean#L808).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40445eeb605b3ea9ff344dfd2758e1e5f43192df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
