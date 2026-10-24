# functorialLocallySurjectiveInjectiveFactorization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:451520e053989f319e5a91569e864051578b925c4efe26c463d30b90890e82d7",
  "kind": "def",
  "lexical_name": "functorialLocallySurjectiveInjectiveFactorization",
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
  "slug": "functoriallocallysurjectiveinjectivefactorization--852e1e20c028dacdf974a65d",
  "source": {
    "blob": "5a05743855f3c7a694aec80ca11399dfa6fa91f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 52,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant008dd432214cf882742f873bc5cf1d47136b8dc0321c925e5add6787d3176b3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:852e1e20c028dacdf974a65dcac383811346e11b0b805be5ad79c86f422cc89a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant008dd432214cf882742f873bc5cf1d47136b8dc0321c925e5add6787d3176b3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:451520e053989f319e5a91569e864051578b925c4efe26c463d30b90890e82d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def functorialLocallySurjectiveInjectiveFactorization :
    (locallySurjective J A).FunctorialFactorizationData (locallyInjective J A) where
  Z := (sheafToPresheaf J A).mapArrow ⋙ (data.functorCategory Cᵒᵖ).Z ⋙ presheafToSheaf J A
  i := whiskerLeft Arrow.leftFunc (inv (sheafificationAdjunction J A).counit) ≫
        whiskerLeft (sheafToPresheaf J A).mapArrow
          (whiskerRight (data.functorCategory Cᵒᵖ).i (presheafToSheaf J A))
  p := whiskerLeft (sheafToPresheaf J A).mapArrow
        (whiskerRight (data.functorCategory Cᵒᵖ).p (presheafToSheaf J A)) ≫
          whiskerLeft Arrow.rightFunc (sheafificationAdjunction J A).counit
  fac := by
    ext f : 2
    dsimp
    simp only [assoc, ← Functor.map_comp_assoc,
      MorphismProperty.FunctorialFactorizationData.fac_app,
      NatIso.isIso_inv_app, IsIso.inv_comp_eq]
    exact (sheafificationAdjunction J A).counit.naturality f.hom
  hi _ := by
    dsimp [locallySurjective]
    rw [← isLocallySurjective_sheafToPresheaf_map_iff, Functor.map_comp,
      Presheaf.comp_isLocallySurjective_iff, isLocallySurjective_sheafToPresheaf_map_iff,
      Presheaf.isLocallySurjective_presheafToSheaf_map_iff]
    apply Presheaf.isLocallySurjective_of_surjective
    apply (data.functorCategory Cᵒᵖ).hi
  hp _ := by
    dsimp [locallyInjective]
    rw [← isLocallyInjective_sheafToPresheaf_map_iff, Functor.map_comp,
      Presheaf.isLocallyInjective_comp_iff, isLocallyInjective_sheafToPresheaf_map_iff,
      Presheaf.isLocallyInjective_presheafToSheaf_map_iff]
    apply Presheaf.isLocallyInjective_of_injective
    apply (data.functorCategory Cᵒᵖ).hp

section

variable (f : Arrow (Sheaf J A))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant008dd432214cf882742f873bc5cf1d47136b8dc0321c925e5add6787d3176b3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant008dd432214cf882742f873bc5cf1d47136b8dc0321c925e5add6787d3176b3c.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a05743855f3c7a694aec80ca11399dfa6fa91f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
