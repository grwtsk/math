# Finset.four_functions_theorem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "738ca974415fdd82f0c148cb81e348db01ad47f7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 266,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f600f9107a0615157912352a0cc410850227717c7127470cf8fade52b07f69a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ecc1eeed-3942-6384-1685-3979b9f3b5e5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2648ddd0-fd2c-a70e-d29d-6962d1243572",
  "kind": "lemma",
  "lexical_name": "Finset.four_functions_theorem",
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
  "slug": "finset-four-functions-theorem--de8289f8b90fc573a3ba40cb",
  "source": {
    "blob": "738ca974415fdd82f0c148cb81e348db01ad47f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 266,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FourFunctions/Variantf600f9107a0615157912352a0cc410850227717c7127470cf8fade52b07f69a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de8289f8b90fc573a3ba40cb8974ecad3db48ac6a0c16e0fe1c4a2734b568c7f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FourFunctions/Variantf600f9107a0615157912352a0cc410850227717c7127470cf8fade52b07f69a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2648ddd0-fd2c-a70e-d29d-6962d1243572`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma Finset.four_functions_theorem (u : Finset α)
    (h₁ : 0 ≤ f₁) (h₂ : 0 ≤ f₂) (h₃ : 0 ≤ f₃) (h₄ : 0 ≤ f₄)
    (h : ∀ ⦃s⦄, s ⊆ u → ∀ ⦃t⦄, t ⊆ u → f₁ s * f₂ t ≤ f₃ (s ∩ t) * f₄ (s ∪ t))
    {𝒜 ℬ : Finset (Finset α)} (h𝒜 : 𝒜 ⊆ u.powerset) (hℬ : ℬ ⊆ u.powerset) :
    (∑ s ∈ 𝒜, f₁ s) * ∑ s ∈ ℬ, f₂ s ≤ (∑ s ∈ 𝒜 ⊼ ℬ, f₃ s) * ∑ s ∈ 𝒜 ⊻ ℬ, f₄ s := by
  induction u using Finset.induction generalizing f₁ f₂ f₃ f₄ 𝒜 ℬ with
  | empty =>
    simp only [Finset.powerset_empty, Finset.subset_singleton_iff] at h𝒜 hℬ
    obtain rfl | rfl := h𝒜
    · simp
    obtain rfl | rfl := hℬ
    · simp
    simpa using h (subset_refl ∅) subset_rfl
  | insert a u hu ih =>
    specialize ih (collapse_nonneg h₁) (collapse_nonneg h₂) (collapse_nonneg h₃)
      (collapse_nonneg h₄) (collapse_modular hu h₁ h₂ h₃ h₄ h 𝒜 ℬ) Subset.rfl Subset.rfl
    have : 𝒜 ⊼ ℬ ⊆ powerset (insert a u) := by simpa using infs_subset h𝒜 hℬ
    have : 𝒜 ⊻ ℬ ⊆ powerset (insert a u) := by simpa using sups_subset h𝒜 hℬ
    simpa only [powerset_sups_powerset_self, powerset_infs_powerset_self, sum_collapse,
      not_false_eq_true, *] using ih

variable (f₁ f₂ f₃ f₄) [Finite α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FourFunctions/Variantf600f9107a0615157912352a0cc410850227717c7127470cf8fade52b07f69a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FourFunctions/Variantf600f9107a0615157912352a0cc410850227717c7127470cf8fade52b07f69a0.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `738ca974415fdd82f0c148cb81e348db01ad47f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
