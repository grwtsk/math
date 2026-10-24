# vPullbackConeIsLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c1e4ae0088eaa18f9dbe0b194516756844cd6278aa8ce457b0c962a02d114665",
  "kind": "def",
  "lexical_name": "vPullbackConeIsLimit",
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
  "slug": "vpullbackconeislimit--0ac300c6c313e061c71b9495",
  "source": {
    "blob": "7afa24fe0a6ae7c2a7a42182bdb3b9fa30424220",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 516,
    "line": 492,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ac300c6c313e061c71b9495add244b7667a164bd26363d0960660230f6c367a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c1e4ae0088eaa18f9dbe0b194516756844cd6278aa8ce457b0c962a02d114665`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 492–516.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def vPullbackConeIsLimit (i j : D.J) : IsLimit (𝖣.vPullbackCone i j) :=
  PullbackCone.isLimitAux' _ fun s => by
    refine ⟨?_, ?_, ?_, ?_⟩
    · refine PresheafedSpace.IsOpenImmersion.lift (D.f i j) s.fst ?_
      erw [← D.toTopGlueData.preimage_range j i]
      have :
        s.fst.base ≫ D.toTopGlueData.ι i =
          s.snd.base ≫ D.toTopGlueData.ι j := by
        rw [← 𝖣.ι_gluedIso_hom (PresheafedSpace.forget _) _, ←
          𝖣.ι_gluedIso_hom (PresheafedSpace.forget _) _]
        have := congr_arg PresheafedSpace.Hom.base s.condition
        rw [comp_base, comp_base] at this
        replace this := reassoc_of% this
        exact this _
      rw [← Set.image_subset_iff, ← Set.image_univ, ← Set.image_comp, Set.image_univ]
      -- Porting note (https://github.com/leanprover-community/mathlib4/issues/11224): change `rw` to `erw`
      erw [← TopCat.coe_comp]
      rw [this, TopCat.coe_comp, ← Set.image_univ, Set.image_comp]
      exact Set.image_subset_range _ _
    · apply IsOpenImmersion.lift_fac
    · rw [← cancel_mono (𝖣.ι j), Category.assoc, ← (𝖣.vPullbackCone i j).condition]
      conv_rhs => rw [← s.condition]
      erw [IsOpenImmersion.lift_fac_assoc]
    · intro m e₁ _; rw [← cancel_mono (D.f i j)]; erw [e₁]; rw [IsOpenImmersion.lift_fac]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean#L492).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7afa24fe0a6ae7c2a7a42182bdb3b9fa30424220` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
