# diagram.isoOfIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:65d8c466895f8dbb22f5c92bd12d19b76545907d5a398d3fa8f81e436e5927f7",
  "kind": "def",
  "lexical_name": "diagram.isoOfIso",
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
  "slug": "diagram-isoofiso--b27635a7e290f1c716df260b",
  "source": {
    "blob": "47af846b3bad3f84b4d53bfe593d212c35f51fb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 131,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantb1ddbc901985f90c0607ac50900529bb80197d98ca2ffe7737e41aeb8d3d71fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b27635a7e290f1c716df260bb1747be53c4158f181b27e5c65ddeebeec864f59",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantb1ddbc901985f90c0607ac50900529bb80197d98ca2ffe7737e41aeb8d3d71fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:65d8c466895f8dbb22f5c92bd12d19b76545907d5a398d3fa8f81e436e5927f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def diagram.isoOfIso (α : F ≅ G) : diagram F U ≅ diagram.{v'} G U :=
  NatIso.ofComponents (by
    rintro ⟨⟩
    · exact piOpens.isoOfIso U α
    · exact piInters.isoOfIso U α)
    (by
      rintro ⟨⟩ ⟨⟩ ⟨⟩
      · simp
      · -- Porting note (https://github.com/leanprover-community/mathlib4/issues/11041): `ext` can't see `limit.hom_ext` applies here:
        refine limit.hom_ext (fun _ => ?_)
        simp only [leftRes, piOpens.isoOfIso, piInters.isoOfIso, parallelPair_map_left,
          Functor.mapIso_hom, lim_map, limit.lift_map, limit.lift_π, Cones.postcompose_obj_π,
          NatTrans.comp_app, Fan.mk_π_app, Discrete.natIso_hom_app, Iso.app_hom, Category.assoc,
          NatTrans.naturality, limMap_π_assoc]
      · -- Porting note (https://github.com/leanprover-community/mathlib4/issues/11041): `ext` can't see `limit.hom_ext` applies here:
        refine limit.hom_ext (fun _ => ?_)
        simp only [rightRes, piOpens.isoOfIso, piInters.isoOfIso, parallelPair_map_right,
          Functor.mapIso_hom, lim_map, limit.lift_map, limit.lift_π, Cones.postcompose_obj_π,
          NatTrans.comp_app, Fan.mk_π_app, Discrete.natIso_hom_app, Iso.app_hom, Category.assoc,
          NatTrans.naturality, limMap_π_assoc]
      · simp)

/-- If `F G : Presheaf C X` are isomorphic presheaves,
then the `fork F U`, the canonical cone of the sheaf condition diagram for `F`,
is isomorphic to `fork F G` postcomposed with the corresponding isomorphism between
sheaf condition diagrams.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantb1ddbc901985f90c0607ac50900529bb80197d98ca2ffe7737e41aeb8d3d71fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantb1ddbc901985f90c0607ac50900529bb80197d98ca2ffe7737e41aeb8d3d71fb.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47af846b3bad3f84b4d53bfe593d212c35f51fb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
