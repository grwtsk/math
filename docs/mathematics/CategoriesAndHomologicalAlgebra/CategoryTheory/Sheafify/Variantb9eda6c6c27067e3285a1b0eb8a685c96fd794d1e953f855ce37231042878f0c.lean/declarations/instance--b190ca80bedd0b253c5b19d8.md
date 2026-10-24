# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9364bb7d648336031a495d509c80d518d244dfe470ce0a75f1834fc1ab6bf9e4",
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
  "slug": "instance--b190ca80bedd0b253c5b19d8",
  "source": {
    "blob": "10045c7187f1a7c70ec23b0b08a494137feccd41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 182,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b190ca80bedd0b253c5b19d8f7c6f68d2a028f772fbcc3a240173897f57b7410",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9364bb7d648336031a495d509c80d518d244dfe470ce0a75f1834fc1ab6bf9e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Nonempty (SMulCandidate α φ r m) := ⟨by
  let S := (Presheaf.imageSieve α r ⊓ Presheaf.imageSieve φ m)
  have hS : S ∈ J _ := by
    apply J.intersection_covering
    all_goals apply Presheaf.imageSieve_mem
  have h₁ : S ≤ Presheaf.imageSieve α r := fun _ _ h => h.1
  have h₂ : S ≤ Presheaf.imageSieve φ m := fun _ _ h => h.2
  let r₀ := (Presieve.FamilyOfElements.localPreimage (whiskerRight α (forget _)) r).restrict h₁
  let m₀ := (Presieve.FamilyOfElements.localPreimage (whiskerRight φ (forget _)) m).restrict h₂
  have hr₀ : (r₀.map (whiskerRight α (forget _))).IsAmalgamation r := by
    rw [Presieve.FamilyOfElements.restrict_map]
    apply Presieve.isAmalgamation_restrict
    apply Presieve.FamilyOfElements.isAmalgamation_map_localPreimage
  have hm₀ : (m₀.map (whiskerRight φ (forget _))).IsAmalgamation m := by
    rw [Presieve.FamilyOfElements.restrict_map]
    apply Presieve.isAmalgamation_restrict
    apply Presieve.FamilyOfElements.isAmalgamation_map_localPreimage
  exact SMulCandidate.mk' α φ r m S hS r₀ m₀ hr₀ hm₀ _ (Presieve.IsSheafFor.isAmalgamation
    (((sheafCompose J (forget _)).obj A).2.isSheafFor S hS)
    (Presieve.FamilyOfElements.isCompatible_map_smul α φ A.isSeparated r m r₀ m₀ hr₀ hm₀))⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10045c7187f1a7c70ec23b0b08a494137feccd41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
