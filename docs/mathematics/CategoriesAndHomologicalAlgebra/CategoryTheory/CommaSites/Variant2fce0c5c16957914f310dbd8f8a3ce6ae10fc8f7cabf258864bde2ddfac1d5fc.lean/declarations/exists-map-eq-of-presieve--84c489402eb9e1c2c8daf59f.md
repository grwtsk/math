# exists_map_eq_of_presieve

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f66fa35-baf8-6f70-5103-13bffe420cc2",
  "kind": "lemma",
  "lexical_name": "exists_map_eq_of_presieve",
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
  "slug": "exists-map-eq-of-presieve--84c489402eb9e1c2c8daf59f",
  "source": {
    "blob": "33b32aa53c98b96560b146b47c67a9d665a7f620",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 53,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommaSites/Variant2fce0c5c16957914f310dbd8f8a3ce6ae10fc8f7cabf258864bde2ddfac1d5fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84c489402eb9e1c2c8daf59f28f1cfab5bf96ec5a1b5900ca810693c0977c464",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommaSites/Variant2fce0c5c16957914f310dbd8f8a3ce6ae10fc8f7cabf258864bde2ddfac1d5fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f66fa35-baf8-6f70-5103-13bffe420cc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_map_eq_of_presieve (K : Precoverage C) (H : K ≤ P.precoverage)
    {X : P.Over ⊤ S} {R : Presieve ((MorphismProperty.Over.forget P ⊤ S).obj X)}
    (hR : R ∈ (K.comap <| CategoryTheory.Over.forget S) _) :
    ∃ T : Presieve X, T.map (MorphismProperty.Over.forget P ⊤ S) = R := by
  rw [Precoverage.mem_iff_exists_zeroHypercover] at hR
  obtain ⟨𝒰, rfl⟩ := hR
  let 𝒱 : PreZeroHypercover X :=
    ⟨𝒰.I₀, fun i ↦ Over.mk _ (𝒰.X i).hom ?_, fun i ↦ Over.homMk (𝒰.f i).left (by simp) trivial⟩
  · use 𝒱.presieve₀
    rw [Presieve.map_ofArrows]
    rfl
  · rw [← CategoryTheory.Over.w (𝒰.f i)]
    exact P.comp_mem _ _ (H _ 𝒰.mem₀ ⟨⟨i⟩⟩) X.prop

variable (K : Precoverage C) [K.HasIsos] [K.IsStableUnderBaseChange] [K.IsStableUnderComposition]
  [K.HasPullbacks]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommaSites/Variant2fce0c5c16957914f310dbd8f8a3ce6ae10fc8f7cabf258864bde2ddfac1d5fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommaSites/Variant2fce0c5c16957914f310dbd8f8a3ce6ae10fc8f7cabf258864bde2ddfac1d5fc.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33b32aa53c98b96560b146b47c67a9d665a7f620` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
