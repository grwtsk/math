# monoidalCategoryMop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4fea7dc1e1cc7a2f01f294bec0873ad79d4065c41357f9939ab94696d1268860",
  "kind": "instance",
  "lexical_name": "monoidalCategoryMop",
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
  "slug": "monoidalcategorymop--37dff600d6cb90b33e43bb14",
  "source": {
    "blob": "4cbc54511d7a7f6046706e617f954907fad3e059",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 253,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Opposite/Variantafdaa207c61d063b416132dc55947e87369dbc0818bd80da332b39a1bf5323d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:37dff600d6cb90b33e43bb143539ea45a21b24e67fe9d1871f5d09a5405ca064",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Opposite/Variantafdaa207c61d063b416132dc55947e87369dbc0818bd80da332b39a1bf5323d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4fea7dc1e1cc7a2f01f294bec0873ad79d4065c41357f9939ab94696d1268860`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance monoidalCategoryMop : MonoidalCategory Cᴹᵒᵖ where
  tensorObj X Y := mop (unmop Y ⊗ unmop X)
  whiskerLeft X _ _ f := (f.unmop ▷ X.unmop).mop
  whiskerRight f X := (X.unmop ◁ f.unmop).mop
  tensorHom f g := (g.unmop ⊗ₘ f.unmop).mop
  tensorHom_def _ _ := Quiver.Hom.unmop_inj (tensorHom_def' _ _)
  tensorHom_comp_tensorHom _ _ _ _ := Quiver.Hom.unmop_inj <| by simp
  tensorUnit := mop (𝟙_ C)
  associator X Y Z := (α_ (unmop Z) (unmop Y) (unmop X)).symm.mop
  leftUnitor X := (ρ_ (unmop X)).mop
  rightUnitor X := (λ_ (unmop X)).mop
  associator_naturality f g h := Quiver.Hom.unmop_inj <| by simp
  leftUnitor_naturality f := Quiver.Hom.unmop_inj <| by simp
  rightUnitor_naturality f := Quiver.Hom.unmop_inj <| by simp
  triangle X Y := Quiver.Hom.unmop_inj <| by dsimp; monoidal_coherence
  pentagon W X Y Z := Quiver.Hom.unmop_inj <| by dsimp; monoidal_coherence

-- it would be nice if we could autogenerate all of these somehow
section MonoidalOppositeLemmas

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Opposite/Variantafdaa207c61d063b416132dc55947e87369dbc0818bd80da332b39a1bf5323d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Opposite/Variantafdaa207c61d063b416132dc55947e87369dbc0818bd80da332b39a1bf5323d1.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cbc54511d7a7f6046706e617f954907fad3e059` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
