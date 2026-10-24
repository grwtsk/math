# starPullbackIsoStar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:77004385385bc53934b1292eb22732c18d2be6f6f74fa13ef4b98681c0a37055",
  "kind": "def",
  "lexical_name": "starPullbackIsoStar",
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
  "slug": "starpullbackisostar--0ba30e195dedb0de90f48224",
  "source": {
    "blob": "a14df9f9175de7407c773096b4fa7040ac29cc7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 193,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant2138f3467db7d9811f60630519fd1d1c32cdffb939caee9e795aa2835e63f8f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ba30e195dedb0de90f482246f66983d6cc39af2a76c5c640806235018743ddd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant2138f3467db7d9811f60630519fd1d1c32cdffb939caee9e795aa2835e63f8f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:77004385385bc53934b1292eb22732c18d2be6f6f74fa13ef4b98681c0a37055`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def starPullbackIsoStar [HasPullbacks C] {X Y : C} (f : X ⟶ Y) :
    star Y ⋙ pullback f ≅ star X :=
  NatIso.ofComponents
    (fun Z ↦
      Over.isoMk
      (pullback.congrHom (by simp) rfl ≪≫ pullbackSymmetry _ _ ≪≫ pullbackProdFstIsoProd _ _)
    (by simp))

end HasBinaryProducts
end Over

namespace Under

attribute [local instance] hasPushout_of_right_iso

set_option backward.isDefEq.respectTransparency false in
/-- When `C` has pushouts, a morphism `f : X ⟶ Y` induces a functor `Under X ⥤ Under Y`,
by pushing a morphism forward along `f`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant2138f3467db7d9811f60630519fd1d1c32cdffb939caee9e795aa2835e63f8f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant2138f3467db7d9811f60630519fd1d1c32cdffb939caee9e795aa2835e63f8f2.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a14df9f9175de7407c773096b4fa7040ac29cc7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
