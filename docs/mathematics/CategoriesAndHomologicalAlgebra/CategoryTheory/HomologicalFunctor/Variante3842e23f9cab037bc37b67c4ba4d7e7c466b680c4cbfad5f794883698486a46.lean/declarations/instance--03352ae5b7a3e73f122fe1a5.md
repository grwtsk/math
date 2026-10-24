# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:564b3bdd826ccecff45c86a84666a7de52b857005fc1ace4d8f35383b314b66f",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--03352ae5b7a3e73f122fe1a5",
  "source": {
    "blob": "5552b70022e379268543fb0d313b5d17150e33d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 122,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:03352ae5b7a3e73f122fe1a595981fed34b8fb86c58dc27e50ae9775214dff8c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:564b3bdd826ccecff45c86a84666a7de52b857005fc1ace4d8f35383b314b66f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance (priority := 100) [F.IsHomological] :
    PreservesLimitsOfShape (Discrete WalkingPair) F := by
  suffices ∀ (X₁ X₂ : C), PreservesLimit (pair X₁ X₂) F from
    ⟨fun {X} => preservesLimit_of_iso_diagram F (diagramIsoPair X).symm⟩
  intro X₁ X₂
  have : HasBinaryBiproduct (F.obj X₁) (F.obj X₂) := HasBinaryBiproducts.has_binary_biproduct _ _
  have : Mono (F.biprodComparison X₁ X₂) := by
    rw [mono_iff_cancel_zero]
    intro Z f hf
    let S := (ShortComplex.mk _ _ (biprod.inl_snd (X := X₁) (Y := X₂))).map F
    have : Mono S.f := by dsimp [S]; infer_instance
    have ex : S.Exact := F.map_distinguished_exact _ (binaryBiproductTriangle_distinguished X₁ X₂)
    obtain ⟨g, rfl⟩ := ex.lift' f (by simpa using hf =≫ biprod.snd)
    dsimp [S] at hf ⊢
    replace hf := hf =≫ biprod.fst
    simp only [assoc, biprodComparison_fst, zero_comp, ← F.map_comp, biprod.inl_fst,
      F.map_id, comp_id] at hf
    rw [hf, zero_comp]
  have : PreservesBinaryBiproduct X₁ X₂ F := preservesBinaryBiproduct_of_mono_biprodComparison _
  apply Limits.preservesBinaryProduct_of_preservesBinaryBiproduct

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5552b70022e379268543fb0d313b5d17150e33d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
