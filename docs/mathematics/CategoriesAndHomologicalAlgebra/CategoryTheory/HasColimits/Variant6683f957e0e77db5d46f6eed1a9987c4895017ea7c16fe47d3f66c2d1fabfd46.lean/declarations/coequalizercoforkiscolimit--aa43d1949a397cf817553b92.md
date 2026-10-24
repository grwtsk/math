# coequalizerCoforkIsColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0449fa34a2e61ad5851a758a636178d501515e513bcd1d741df4e09d4cb4edf9",
  "kind": "def",
  "lexical_name": "coequalizerCoforkIsColimit",
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
  "slug": "coequalizercoforkiscolimit--aa43d1949a397cf817553b92",
  "source": {
    "blob": "8f30ce3951fc6d5176ac2cd390b25bb7643718bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 274,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant6683f957e0e77db5d46f6eed1a9987c4895017ea7c16fe47d3f66c2d1fabfd46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aa43d1949a397cf817553b9227ea74ab4af2ba50434195ff19000dfdf00c814b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant6683f957e0e77db5d46f6eed1a9987c4895017ea7c16fe47d3f66c2d1fabfd46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0449fa34a2e61ad5851a758a636178d501515e513bcd1d741df4e09d4cb4edf9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def coequalizerCoforkIsColimit : IsColimit (coequalizerCofork f g) := by
  apply Cofork.IsColimit.mk'
  intro s
  have e : f.toShHom ≫ s.π.toShHom = g.toShHom ≫ s.π.toShHom := by injection s.condition
  refine ⟨⟨coequalizer.desc s.π.toShHom e, ?_⟩, ?_⟩
  · intro x
    rcases (TopCat.epi_iff_surjective
      (coequalizer.π f.toShHom g.toShHom).base).mp inferInstance x with ⟨y, rfl⟩
    -- Porting note: was `apply isLocalHom_of_comp _ (PresheafedSpace.stalkMap ...)`, this
    -- used to allow you to provide the proof that `... ≫ ...` is a local ring homomorphism later,
    -- but this is no longer possible
    set h := _
    change IsLocalHom h
    suffices _ : IsLocalHom (((coequalizerCofork f g).π.1.stalkMap _).hom.comp h) by
      apply isLocalHom_of_comp _ ((coequalizerCofork f g).π.1.stalkMap _).hom
    rw [← CommRingCat.hom_ofHom h, ← CommRingCat.hom_comp]
    erw [← PresheafedSpace.stalkMap.comp]
    apply isLocalHom_stalkMap_congr _ _ (coequalizer.π_desc s.π.toShHom e).symm y
    infer_instance
  constructor
  · exact LocallyRingedSpace.Hom.ext' (coequalizer.π_desc _ _)
  intro m h
  replace h : (coequalizerCofork f g).π.toShHom ≫ m.1 = s.π.toShHom := by rw [← h]; rfl
  apply LocallyRingedSpace.Hom.ext'
  apply (colimit.isColimit (parallelPair f.toShHom g.toShHom)).uniq (Cofork.ofπ s.π.toShHom e) m.1
  rintro ⟨⟩
  · rw [← (colimit.cocone (parallelPair f.toShHom g.toShHom)).w WalkingParallelPairHom.left,
      Category.assoc]
    change _ ≫ _ ≫ _ = _ ≫ _
    congr
  · exact h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant6683f957e0e77db5d46f6eed1a9987c4895017ea7c16fe47d3f66c2d1fabfd46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant6683f957e0e77db5d46f6eed1a9987c4895017ea7c16fe47d3f66c2d1fabfd46.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f30ce3951fc6d5176ac2cd390b25bb7643718bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
