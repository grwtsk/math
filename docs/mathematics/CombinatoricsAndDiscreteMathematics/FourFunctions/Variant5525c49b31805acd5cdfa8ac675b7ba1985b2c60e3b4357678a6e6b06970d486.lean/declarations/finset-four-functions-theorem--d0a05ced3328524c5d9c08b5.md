# Finset.four_functions_theorem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:181be1ed-7bd5-2f4c-7f4b-8159b050cac8",
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
  "slug": "finset-four-functions-theorem--d0a05ced3328524c5d9c08b5",
  "source": {
    "blob": "adc34eaf2b1dbafd34da9d2464810e6fb854e024",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 254,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant5525c49b31805acd5cdfa8ac675b7ba1985b2c60e3b4357678a6e6b06970d486.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0a05ced3328524c5d9c08b59a6daa5039f465e8137e94c2636d370690fb8a01",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant5525c49b31805acd5cdfa8ac675b7ba1985b2c60e3b4357678a6e6b06970d486.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:181be1ed-7bd5-2f4c-7f4b-8159b050cac8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–272.

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
    obtain rfl | rfl := h𝒜 <;> obtain rfl | rfl := hℬ <;> simp; exact h (subset_refl ∅) subset_rfl
  | insert a u hu ih =>
    specialize ih (collapse_nonneg h₁) (collapse_nonneg h₂) (collapse_nonneg h₃)
      (collapse_nonneg h₄) (collapse_modular hu h₁ h₂ h₃ h₄ h 𝒜 ℬ) Subset.rfl Subset.rfl
    have : 𝒜 ⊼ ℬ ⊆ powerset (insert a u) := by simpa using infs_subset h𝒜 hℬ
    have : 𝒜 ⊻ ℬ ⊆ powerset (insert a u) := by simpa using sups_subset h𝒜 hℬ
    simpa only [powerset_sups_powerset_self, powerset_infs_powerset_self, sum_collapse,
      not_false_eq_true, *] using ih

variable (f₁ f₂ f₃ f₄) [Fintype α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant5525c49b31805acd5cdfa8ac675b7ba1985b2c60e3b4357678a6e6b06970d486.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant5525c49b31805acd5cdfa8ac675b7ba1985b2c60e3b4357678a6e6b06970d486.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adc34eaf2b1dbafd34da9d2464810e6fb854e024` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
