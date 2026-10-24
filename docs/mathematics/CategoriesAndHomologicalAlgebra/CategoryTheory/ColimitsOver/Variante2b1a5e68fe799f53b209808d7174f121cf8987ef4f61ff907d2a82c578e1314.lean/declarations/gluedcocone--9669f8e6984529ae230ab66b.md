# gluedCocone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:49d3270014625f9927e468a4e22ddf539c7b6d70b14e7c47eebb648fa5f7a568",
  "kind": "def",
  "lexical_name": "gluedCocone",
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
  "slug": "gluedcocone--9669f8e6984529ae230ab66b",
  "source": {
    "blob": "df3e1cbd5a174f6e271346af5460e6ee9abd0018",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 203,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variante2b1a5e68fe799f53b209808d7174f121cf8987ef4f61ff907d2a82c578e1314.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9669f8e6984529ae230ab66b2cbd62bfbb4481cf51cc3d6b7c66ec96606c60ea",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variante2b1a5e68fe799f53b209808d7174f121cf8987ef4f61ff907d2a82c578e1314.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:49d3270014625f9927e468a4e22ddf539c7b6d70b14e7c47eebb648fa5f7a568`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def gluedCocone : Cocone D := by
  letI 𝒱 (a : J) : (D.obj a).left.OpenCover := 𝒰.pullback₁ (D.obj a).hom
  refine { pt := d.glued, ι.app a := ?_, ι.naturality {a b} f := ?_ }
  · refine ⟨(𝒱 a).glueMorphismsOverOfLocallyDirected ?_ ?_ ?_, trivial, trivial⟩
    · intro i
      exact ((d.cocone i).ι.app a).left ≫ colimit.ι d.relativeGluingData.functor i
    · intro i j hij
      conv_rhs => rw [← colimit.w d.relativeGluingData.functor hij]
      simp only [← Category.assoc]
      congr 1
      exact congr($(d.cocone_ι_transitionMap hij a).left).symm
    · intro
      simp [𝒱, pullback.condition, glued]
  · ext
    apply (𝒱 a).hom_ext
    intro i
    have : (𝒱 a).f i ≫ (D.map f).left =
        ((D ⋙ Over.pullback _ _ (𝒰.f i)).map f).left ≫ (𝒱 b).f i := by
      simp [𝒱]
    dsimp
    rw [Category.comp_id, Scheme.OpenCover.map_glueMorphismsOverOfLocallyDirected_left,
      reassoc_of% this, Scheme.OpenCover.map_glueMorphismsOverOfLocallyDirected_left,
      ← Over.comp_left_assoc, ← Comma.comp_hom, ← Functor.comp_map, Cocone.w]

set_option backward.isDefEq.respectTransparency false in
@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variante2b1a5e68fe799f53b209808d7174f121cf8987ef4f61ff907d2a82c578e1314.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variante2b1a5e68fe799f53b209808d7174f121cf8987ef4f61ff907d2a82c578e1314.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df3e1cbd5a174f6e271346af5460e6ee9abd0018` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
