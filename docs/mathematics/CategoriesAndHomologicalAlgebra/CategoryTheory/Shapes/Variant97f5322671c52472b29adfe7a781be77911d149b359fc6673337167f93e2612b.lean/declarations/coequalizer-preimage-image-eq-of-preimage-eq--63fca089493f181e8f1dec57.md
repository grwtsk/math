# coequalizer_preimage_image_eq_of_preimage_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef7de0f8-bf0d-7edd-e174-71c937e4ce61",
  "kind": "theorem",
  "lexical_name": "coequalizer_preimage_image_eq_of_preimage_eq",
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
  "slug": "coequalizer-preimage-image-eq-of-preimage-eq--63fca089493f181e8f1dec57",
  "source": {
    "blob": "ae5f6933d50835813059f1b3b61dd118236aa49e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 557,
    "line": 531,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Shapes/Variant97f5322671c52472b29adfe7a781be77911d149b359fc6673337167f93e2612b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63fca089493f181e8f1dec57e603c90c88e101dfbe247fb935089ea5ddb39bf4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Shapes/Variant97f5322671c52472b29adfe7a781be77911d149b359fc6673337167f93e2612b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef7de0f8-bf0d-7edd-e174-71c937e4ce61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 531–557.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coequalizer_preimage_image_eq_of_preimage_eq (π : Y ⟶ Z) (e : f ≫ π = g ≫ π)
    (h : IsColimit (Cofork.ofπ π e)) (U : Set Y) (H : f ⁻¹' U = g ⁻¹' U) : π ⁻¹' (π '' U) = U := by
  have lem : ∀ x y, Function.Coequalizer.Rel f g x y → (x ∈ U ↔ y ∈ U) := by
    rintro _ _ ⟨x⟩
    change x ∈ f ⁻¹' U ↔ x ∈ g ⁻¹' U
    rw [H]
  -- Porting note: tidy was able to fill the structure automatically
  have eqv : _root_.Equivalence fun x y => x ∈ U ↔ y ∈ U :=
    { refl := by tauto
      symm := by tauto
      trans := by tauto }
  ext
  constructor
  · rw [←
      show _ = π from
        h.comp_coconePointUniqueUpToIso_inv (coequalizerColimit f g).2
          WalkingParallelPair.one]
    rintro ⟨y, hy, e'⟩
    dsimp at e'
    replace e' :=
      (mono_iff_injective
            (h.coconePointUniqueUpToIso (coequalizerColimit f g).isColimit).inv).mp
        inferInstance e'
    exact (eqv.eqvGen_iff.mp (Relation.EqvGen.mono lem (Quot.eqvGen_exact e'))).mp hy
  · exact fun hx => ⟨_, hx, rfl⟩

/-- The categorical coequalizer in `Type u` is the quotient by `f g ~ g x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Shapes/Variant97f5322671c52472b29adfe7a781be77911d149b359fc6673337167f93e2612b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Shapes/Variant97f5322671c52472b29adfe7a781be77911d149b359fc6673337167f93e2612b.lean#L531).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae5f6933d50835813059f1b3b61dd118236aa49e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
