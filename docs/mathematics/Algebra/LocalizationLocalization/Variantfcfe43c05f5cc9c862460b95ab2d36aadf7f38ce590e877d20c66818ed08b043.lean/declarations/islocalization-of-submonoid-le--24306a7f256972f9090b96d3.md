# isLocalization_of_submonoid_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d82f06d7-7d6f-0779-0457-71593fa458b8",
  "kind": "theorem",
  "lexical_name": "isLocalization_of_submonoid_le",
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
  "slug": "islocalization-of-submonoid-le--24306a7f256972f9090b96d3",
  "source": {
    "blob": "6627644612543b753f443169fef0d405f8581f2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 199,
    "path": "GRWTSK/Algebra/LocalizationLocalization/Variantfcfe43c05f5cc9c862460b95ab2d36aadf7f38ce590e877d20c66818ed08b043.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24306a7f256972f9090b96d3e3551de5f99521017fca7645efb1eaecc6b4526e",
  "verification": {
    "reference": "docs/verification/Algebra/LocalizationLocalization/Variantfcfe43c05f5cc9c862460b95ab2d36aadf7f38ce590e877d20c66818ed08b043.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d82f06d7-7d6f-0779-0457-71593fa458b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLocalization_of_submonoid_le (M N : Submonoid R) (h : M ≤ N) [IsLocalization M S]
    [IsLocalization N T] [Algebra S T] [IsScalarTower R S T] :
    IsLocalization (N.map (algebraMap R S)) T :=
  { map_units' := by
      rintro ⟨_, ⟨y, hy, rfl⟩⟩
      convert IsLocalization.map_units T ⟨y, hy⟩
      exact (IsScalarTower.algebraMap_apply _ _ _ _).symm
    surj' := fun y => by
      obtain ⟨⟨x, s⟩, e⟩ := IsLocalization.surj N y
      refine ⟨⟨algebraMap R S x, _, _, s.prop, rfl⟩, ?_⟩
      simpa [← IsScalarTower.algebraMap_apply] using e
    exists_of_eq := fun {x₁ x₂} => by
      obtain ⟨⟨y₁, s₁⟩, e₁⟩ := IsLocalization.surj M x₁
      obtain ⟨⟨y₂, s₂⟩, e₂⟩ := IsLocalization.surj M x₂
      refine (Set.exists_image_iff (algebraMap R S) N fun c => c * x₁ = c * x₂).mpr.comp ?_
      dsimp only at e₁ e₂ ⊢
      suffices algebraMap R T (y₁ * s₂) = algebraMap R T (y₂ * s₁) →
          ∃ a : N, algebraMap R S (a * (y₁ * s₂)) = algebraMap R S (a * (y₂ * s₁)) by
        have h₁ := @IsUnit.mul_left_inj T _ _ (algebraMap S T x₁) (algebraMap S T x₂)
          (IsLocalization.map_units T ⟨(s₁ : R), h s₁.prop⟩)
        have h₂ := @IsUnit.mul_left_inj T _ _ ((algebraMap S T x₁) * (algebraMap R T s₁))
          ((algebraMap S T x₂) * (algebraMap R T s₁))
          (IsLocalization.map_units T ⟨(s₂ : R), h s₂.prop⟩)
        simp only [IsScalarTower.algebraMap_apply R S T, Subtype.coe_mk] at h₁ h₂
        simp only [IsScalarTower.algebraMap_apply R S T, map_mul, ← e₁, ← e₂, ← mul_assoc,
          mul_right_comm _ (algebraMap R S s₂),
          mul_right_comm _ (algebraMap S T (algebraMap R S s₂)),
          (IsLocalization.map_units S s₁).mul_left_inj,
          (IsLocalization.map_units S s₂).mul_left_inj] at this
        rw [h₂, h₁] at this
        simpa only [mul_comm] using this
      simp_rw [IsLocalization.eq_iff_exists N T, IsLocalization.eq_iff_exists M S]
      intro ⟨a, e⟩
      exact ⟨a, 1, by convert e using 1 <;> simp⟩ }

/-- If `M ≤ N` are submonoids of `R` such that `∀ x : N, ∃ m : R, m * x ∈ M`, then the
localization at `N` is equal to the localizaton of `M`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalizationLocalization/Variantfcfe43c05f5cc9c862460b95ab2d36aadf7f38ce590e877d20c66818ed08b043.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalizationLocalization/Variantfcfe43c05f5cc9c862460b95ab2d36aadf7f38ce590e877d20c66818ed08b043.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6627644612543b753f443169fef0d405f8581f2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
