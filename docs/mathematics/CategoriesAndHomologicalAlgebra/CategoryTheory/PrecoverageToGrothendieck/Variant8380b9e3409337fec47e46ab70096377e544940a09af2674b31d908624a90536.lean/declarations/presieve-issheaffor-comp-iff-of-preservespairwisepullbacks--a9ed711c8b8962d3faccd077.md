# Presieve.IsSheafFor.comp_iff_of_preservesPairwisePullbacks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "801321f4438ed7a239b08c9286537093c33a35fb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 243,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/83/8380b9e3409337fec47e46ab70096377e544940a09af2674b31d908624a90536.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0fec5f24-9f9f-be95-f1e2-085eaeb65a1c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b10d280a-4cb8-60e6-59a9-5dadac1c588e",
  "kind": "lemma",
  "lexical_name": "Presieve.IsSheafFor.comp_iff_of_preservesPairwisePullbacks",
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
  "slug": "presieve-issheaffor-comp-iff-of-preservespairwisepullbacks--a9ed711c8b8962d3faccd077",
  "source": {
    "blob": "801321f4438ed7a239b08c9286537093c33a35fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 243,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PrecoverageToGrothendieck/Variant8380b9e3409337fec47e46ab70096377e544940a09af2674b31d908624a90536.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9ed711c8b8962d3faccd0771f4c8192fbcb0f5baf75e20739818d051a556dd9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PrecoverageToGrothendieck/Variant8380b9e3409337fec47e46ab70096377e544940a09af2674b31d908624a90536.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b10d280a-4cb8-60e6-59a9-5dadac1c588e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Presieve.IsSheafFor.comp_iff_of_preservesPairwisePullbacks (F : C ⥤ D) (P : Dᵒᵖ ⥤ Type*)
    {X : C} (R : Presieve X) [R.HasPairwisePullbacks]
    [F.PreservesPairwisePullbacks R] :
    Presieve.IsSheafFor (F.op ⋙ P) R ↔ Presieve.IsSheafFor P (R.map F) := by
  have : (R.map F).HasPairwisePullbacks := .map_of_preservesPairwisePullbacks _ _
  obtain ⟨ι, Y, f, rfl⟩ := R.exists_eq_ofArrows
  rw [map_ofArrows] at this ⊢
  simp_rw [Presieve.isSheafFor_arrows_iff_pullbacks]
  dsimp [Arrows.PullbackCompatible]
  congr! with x
  rw [forall₂_congr]
  intro i j
  have : PreservesLimit (cospan (f i) (f j)) F :=
    F.preservesLimit_cospan_of_mem_presieve (ofArrows _ f) ⟨i⟩ ⟨j⟩
  have : HasPullback (F.map (f i)) (F.map (f j)) := hasPullback_of_preservesPullback _ _ _
  rw [← pullbackComparison_comp_fst, op_comp, Functor.map_comp,
    ← pullbackComparison_comp_snd, op_comp, Functor.map_comp]
  have : Function.Bijective (P.map (pullbackComparison F (f i) (f j)).op) := by
    rw [← isIso_iff_bijective]
    infer_instance
  exact this.1.eq_iff

namespace GrothendieckTopology

/-- The induced coverage by a Grothendieck topology as a precoverage. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PrecoverageToGrothendieck/Variant8380b9e3409337fec47e46ab70096377e544940a09af2674b31d908624a90536.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PrecoverageToGrothendieck/Variant8380b9e3409337fec47e46ab70096377e544940a09af2674b31d908624a90536.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `801321f4438ed7a239b08c9286537093c33a35fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
