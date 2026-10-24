# has_injective_coseparator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70e0903a-4168-b508-f29d-b14d6a9ac706",
  "kind": "theorem",
  "lexical_name": "has_injective_coseparator",
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
  "slug": "has-injective-coseparator--e1b32e825ef25a0da17d7f76",
  "source": {
    "blob": "972ed4a12a30a3cfdf06304976696ac68c6e483b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 41,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant1f7ecdbcdf82d8e3f7676511c59b10d30e81cd2e90c40c462bcf1af9cfd54861.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1b32e825ef25a0da17d7f76286c5b9b063cfa5883b3b6037409cc13b63afbc6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant1f7ecdbcdf82d8e3f7676511c59b10d30e81cd2e90c40c462bcf1af9cfd54861.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70e0903a-4168-b508-f29d-b14d6a9ac706`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem has_injective_coseparator [HasLimits C] [EnoughInjectives C] (G : C) (hG : IsSeparator G) :
    ∃ G : C, Injective G ∧ IsCoseparator G := by
  haveI : WellPowered.{v} C := wellPowered_of_isDetector G hG.isDetector
  haveI : HasProductsOfShape (Subobject (op G)) C := hasProductsOfShape_of_small _ _
  let T : C := Injective.under (piObj fun P : Subobject (op G) => unop P)
  refine ⟨T, inferInstance, (Preadditive.isCoseparator_iff _).2 fun X Y f hf => ?_⟩
  refine (Preadditive.isSeparator_iff _).1 hG _ fun h => ?_
  suffices hh : factorThruImage (h ≫ f) = 0 by
    rw [← Limits.image.fac (h ≫ f), hh, zero_comp]
  let R := Subobject.mk (factorThruImage (h ≫ f)).op
  let q₁ : image (h ≫ f) ⟶ unop R :=
    (Subobject.underlyingIso (factorThruImage (h ≫ f)).op).unop.hom
  let q₂ : unop (R : Cᵒᵖ) ⟶ piObj fun P : Subobject (op G) => unop P :=
    section_ (Pi.π (fun P : Subobject (op G) => (unop P : C)) R)
  let q : image (h ≫ f) ⟶ T := q₁ ≫ q₂ ≫ Injective.ι _
  exact zero_of_comp_mono q
    (by rw [← Injective.comp_factorThru q (Limits.image.ι (h ≫ f)), Limits.image.fac_assoc,
      Category.assoc, hf, comp_zero])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant1f7ecdbcdf82d8e3f7676511c59b10d30e81cd2e90c40c462bcf1af9cfd54861.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant1f7ecdbcdf82d8e3f7676511c59b10d30e81cd2e90c40c462bcf1af9cfd54861.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `972ed4a12a30a3cfdf06304976696ac68c6e483b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
