# Precoverage.RespectsIso.of_forall_exists_iso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3ff61dc-847d-348f-0cdf-f4255bc8d9b5",
  "kind": "lemma",
  "lexical_name": "Precoverage.RespectsIso.of_forall_exists_iso",
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
  "slug": "precoverage-respectsiso-of-forall-exists-iso--9ac2a52dd973084a264dd94f",
  "source": {
    "blob": "cd9c26e21a5063af78a6c3abe6ee69a13dd2444b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 686,
    "line": 644,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant1d32f3371e1930649d3129368bb57884b613f114d32305a998702e2c85bf46c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ac2a52dd973084a264dd94f2c7a1969cbee7dbfb7906096f6d39e3c3da5d135",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant1d32f3371e1930649d3129368bb57884b613f114d32305a998702e2c85bf46c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3ff61dc-847d-348f-0cdf-f4255bc8d9b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 644–686.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Precoverage.RespectsIso.of_forall_exists_iso [J.RespectsIso] {S : C} {R T : Presieve S}
    (hRT : ∀ ⦃Z : C⦄ (g : Z ⟶ S), R g → ∃ (Y : C) (e : Y ≅ Z), T (e.hom ≫ g))
    (hTR : ∀ ⦃Z : C⦄ (g : Z ⟶ S), T g → ∃ (Y : C) (e : Y ≅ Z), R (e.hom ≫ g))
    (hR : R ∈ J S) :
    T ∈ J S := by
  choose YR eR hTeg using hRT
  choose YT eT hReg using hTR
  let E : PreZeroHypercover S :=
    { I₀ := R.uncurry ⊕ T.uncurry
      X i := i.elim (fun j ↦ j.1.1) (fun j ↦ YT _ j.2)
      f i :=
        match i with
        | .inl i => by exact i.1.2
        | .inr i => by exact (eT _ i.2).hom ≫ i.1.2 }
  let F : PreZeroHypercover S :=
    { I₀ := R.uncurry ⊕ T.uncurry
      X i := i.elim (fun j ↦ YR _ j.2) (fun j ↦ j.1.1)
      f i :=
        match i with
        | .inl i => by exact (eR _ i.2).hom ≫ i.1.2
        | .inr i => by exact i.1.2 }
  let e : E ≅ F := by
    refine PreZeroHypercover.isoMk (Equiv.refl _) (fun i ↦ ?_) (fun i ↦ ?_)
    · match i with
      | .inl i => dsimp [E, F]; symm; exact eR _ _
      | .inr i => dsimp [E, F]; apply eT
    · cases i <;> simp [E, F]
  have hER : E.presieve₀ = R := by
    refine le_antisymm ?_ fun Y g hg ↦ .mk (Sum.inl (⟨⟨Y, g⟩, hg⟩ : R.uncurry))
    rintro - - ⟨i⟩
    match i with
    | .inl i => exact i.2
    | .inr i => apply hReg
  have hFT : F.presieve₀ = T := by
    refine le_antisymm ?_ fun Y g hg ↦ .mk (Sum.inr (⟨⟨Y, g⟩, hg⟩ : T.uncurry))
    rintro - - ⟨i⟩
    match i with
    | .inl i => apply hTeg
    | .inr i => exact i.2
  rw [← hFT]
  apply RespectsIso.of_iso e
  rwa [hER]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant1d32f3371e1930649d3129368bb57884b613f114d32305a998702e2c85bf46c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant1d32f3371e1930649d3129368bb57884b613f114d32305a998702e2c85bf46c3.lean#L644).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd9c26e21a5063af78a6c3abe6ee69a13dd2444b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
