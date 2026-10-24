# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:520dd24a8f083c01231814dbd4d244f38842f81b0c62c1cc97a0438f9b75e3fd",
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
  "slug": "instance--083da8a6bdba2d63a44b40a5",
  "source": {
    "blob": "60018dfa547f52aecca1d71e0a42cfa58205705b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 145,
    "path": "GRWTSK/Topology/GeneralTopology/ValuedField/Variant624c46d1c32519a496106756f40a5c5ebb85e11aa88d0c163f4af793d69682a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:083da8a6bdba2d63a44b40a57a6840364c008d085feb97f9c05d8a60118fcb16",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ValuedField/Variant624c46d1c32519a496106756f40a5c5ebb85e11aa88d0c163f4af793d69682a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:520dd24a8f083c01231814dbd4d244f38842f81b0c62c1cc97a0438f9b75e3fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) completable : CompletableTopField K :=
  { ValuedRing.separated with
    nice := by
      rintro F hF h0
      have : ∃ γ₀ : Γ₀ˣ, ∃ M ∈ F, ∀ x ∈ M, (γ₀ : Γ₀) ≤ v x := by
        rcases Filter.inf_eq_bot_iff.mp h0 with ⟨U, U_in, M, M_in, H⟩
        rcases Valued.mem_nhds_zero.mp U_in with ⟨γ₀, hU⟩
        exists γ₀, M, M_in
        intro x xM
        apply le_of_not_lt _
        intro hyp
        have : x ∈ U ∩ M := ⟨hU hyp, xM⟩
        rwa [H] at this
      rcases this with ⟨γ₀, M₀, M₀_in, H₀⟩
      rw [Valued.cauchy_iff] at hF ⊢
      refine' ⟨hF.1.map _, _⟩
      replace hF := hF.2
      intro γ
      rcases hF (min (γ * γ₀ * γ₀) γ₀) with ⟨M₁, M₁_in, H₁⟩
      clear hF
      use (fun x : K => x⁻¹) '' (M₀ ∩ M₁)
      constructor
      · rw [mem_map]
        apply mem_of_superset (Filter.inter_mem M₀_in M₁_in)
        exact subset_preimage_image _ _
      · rintro _ ⟨x, ⟨x_in₀, x_in₁⟩, rfl⟩ _ ⟨y, ⟨y_in₀, y_in₁⟩, rfl⟩
        simp only [mem_setOf_eq]
        specialize H₁ x x_in₁ y y_in₁
        replace x_in₀ := H₀ x x_in₀
        replace  := H₀ y y_in₀
        clear H₀
        apply Valuation.inversion_estimate
        · have : (v x : Γ₀) ≠ 0 := by
            intro h
            rw [h] at x_in₀
            simp at x_in₀
          exact (Valuation.ne_zero_iff _).mp this
        · refine' lt_of_lt_of_le H₁ _
          rw [Units.min_val]
          apply min_le_min _ x_in₀
          rw [mul_assoc]
          have : ((γ₀ * γ₀ : Γ₀ˣ) : Γ₀) ≤ v x * v x :=
            calc
              ↑γ₀ * ↑γ₀ ≤ ↑γ₀ * v x := mul_le_mul_left' x_in₀ ↑γ₀
              _ ≤ _ := mul_le_mul_right' x_in₀ (v x)
          rw [Units.val_mul]
          exact mul_le_mul_left' this γ }
#align valued.completable Valued.completable

open WithZeroTopology

/-- The extension of the valuation of a valued field to the completion of the field. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ValuedField/Variant624c46d1c32519a496106756f40a5c5ebb85e11aa88d0c163f4af793d69682a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ValuedField/Variant624c46d1c32519a496106756f40a5c5ebb85e11aa88d0c163f4af793d69682a6.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60018dfa547f52aecca1d71e0a42cfa58205705b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
