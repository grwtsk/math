# ι_eq_iff_rel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a49c338f-6d6d-f095-f70e-9a5ccdaaeaa8",
  "kind": "theorem",
  "lexical_name": "ι_eq_iff_rel",
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
  "slug": "eq-iff-rel--f4164c9af0e467b26ebb3196",
  "source": {
    "blob": "802ab5a48fc2bafc2785400233ac230009dd09c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 206,
    "path": "GRWTSK/Topology/GeneralTopology/Gluing/Variant7e958de37e962f3ac915d8980f9671ba01bf559861ecd789fabc1370366a86de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4164c9af0e467b26ebb3196947580937bf551f390d359df790861c8abb7ea81",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Gluing/Variant7e958de37e962f3ac915d8980f9671ba01bf559861ecd789fabc1370366a86de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a49c338f-6d6d-f095-f70e-9a5ccdaaeaa8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ι_eq_iff_rel (i j : D.J) (x : D.U i) (y : D.U j) :
    𝖣.ι i x = 𝖣.ι j y ↔ D.Rel ⟨i, x⟩ ⟨j, y⟩ := by
  constructor
  · delta GlueData.ι
    simp_rw [← Multicoequalizer.ι_sigmaπ]
    intro h
    rw [←
      show _ = Sigma.mk i x from ConcreteCategory.congr_hom (sigmaIsoSigma.{_, u} D.U).inv_hom_id _]
    rw [←
      show _ = Sigma.mk j y from ConcreteCategory.congr_hom (sigmaIsoSigma.{_, u} D.U).inv_hom_id _]
    change InvImage D.Rel (sigmaIsoSigma.{_, u} D.U).hom _ _
    simp only [TopCat.sigmaIsoSigma_inv_apply]
    rw [← (InvImage.equivalence _ _ D.rel_equiv).eqvGen_iff]
    refine' EqvGen.mono _ (D.eqvGen_of_π_eq h : _)
    rintro _ _ ⟨x⟩
    rw [←show (sigmaIsoSigma.{u, u} _).inv _ = x from
        ConcreteCategory.congr_hom (sigmaIsoSigma.{u, u} _).hom_inv_id x]
    generalize (sigmaIsoSigma.{u, u} D.V).hom x = x'
    obtain ⟨⟨i, j⟩, y⟩ := x'
    unfold InvImage MultispanIndex.fstSigmaMap MultispanIndex.sndSigmaMap
    simp only [Opens.inclusion_apply, TopCat.comp_app, sigmaIsoSigma_inv_apply,
      Cofan.mk_ι_app]
    rw [←comp_apply, colimit.ι_desc, ←comp_apply, colimit.ι_desc]
    erw [sigmaIsoSigma_hom_ι_apply, sigmaIsoSigma_hom_ι_apply]
    exact Or.inr ⟨y, by dsimp [GlueData.diagram]; simp only [true_and]; rfl⟩
  · rintro (⟨⟨⟩⟩ | ⟨z, e₁, e₂⟩)
    rfl
    dsimp only at *
    -- porting note: there were `subst e₁` and `subst e₂`, instead of the `rw`
    rw [← e₁, ← e₂] at *
    simp
set_option linter.uppercaseLean3 false in
#align Top.glue_data.ι_eq_iff_rel TopCat.GlueData.ι_eq_iff_rel

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Gluing/Variant7e958de37e962f3ac915d8980f9671ba01bf559861ecd789fabc1370366a86de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Gluing/Variant7e958de37e962f3ac915d8980f9671ba01bf559861ecd789fabc1370366a86de.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `802ab5a48fc2bafc2785400233ac230009dd09c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
