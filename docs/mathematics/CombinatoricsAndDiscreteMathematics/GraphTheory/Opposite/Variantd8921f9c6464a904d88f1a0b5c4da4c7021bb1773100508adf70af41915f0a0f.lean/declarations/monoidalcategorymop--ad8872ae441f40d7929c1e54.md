# monoidalCategoryMop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c58b58b48656e7e906adc1652899e394477cf22939b6a3e7c44e268085e8f1d0",
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
  "slug": "monoidalcategorymop--ad8872ae441f40d7929c1e54",
  "source": {
    "blob": "a0d98eeb4abf36cf6e1ff6fa6c8d056c5d91936f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 229,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Opposite/Variantd8921f9c6464a904d88f1a0b5c4da4c7021bb1773100508adf70af41915f0a0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ad8872ae441f40d7929c1e5478aa202fbf404ce747ae7cbbe91f5540e02ac57c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Opposite/Variantd8921f9c6464a904d88f1a0b5c4da4c7021bb1773100508adf70af41915f0a0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c58b58b48656e7e906adc1652899e394477cf22939b6a3e7c44e268085e8f1d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance monoidalCategoryMop : MonoidalCategory Cᴹᵒᵖ where
  tensorObj X Y := mop (unmop Y ⊗ unmop X)
  whiskerLeft X _ _ f := (f.unmop ▷ X.unmop).mop
  whiskerRight f X := (X.unmop ◁ f.unmop).mop
  tensorHom f g := (g.unmop ⊗ f.unmop).mop
  tensorHom_def _ _ := Quiver.Hom.unmop_inj (tensorHom_def' _ _)
  tensorUnit := mop (𝟙_ C)
  associator X Y Z := (α_ (unmop Z) (unmop Y) (unmop X)).symm.mop
  leftUnitor X := (ρ_ (unmop X)).mop
  rightUnitor X := (λ_ (unmop X)).mop
  associator_naturality f g h := Quiver.Hom.unmop_inj <| by simp
  leftUnitor_naturality f := Quiver.Hom.unmop_inj <| by simp
  rightUnitor_naturality f := Quiver.Hom.unmop_inj <| by simp
  -- Porting note: Changed `by coherence` to `by simp` below
  triangle X Y := Quiver.Hom.unmop_inj <| by simp
  pentagon W X Y Z := Quiver.Hom.unmop_inj <| by dsimp; monoidal_coherence

-- it would be nice if we could autogenerate all of these somehow
section MonoidalOppositeLemmas

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Opposite/Variantd8921f9c6464a904d88f1a0b5c4da4c7021bb1773100508adf70af41915f0a0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Opposite/Variantd8921f9c6464a904d88f1a0b5c4da4c7021bb1773100508adf70af41915f0a0f.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0d98eeb4abf36cf6e1ff6fa6c8d056c5d91936f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
