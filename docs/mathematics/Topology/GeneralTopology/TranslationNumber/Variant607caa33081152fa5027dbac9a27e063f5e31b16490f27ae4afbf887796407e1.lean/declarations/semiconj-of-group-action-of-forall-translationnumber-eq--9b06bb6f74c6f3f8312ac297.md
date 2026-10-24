# semiconj_of_group_action_of_forall_translationNumber_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a34fa161-7020-7bec-9c6c-26e90416d35c",
  "kind": "theorem",
  "lexical_name": "semiconj_of_group_action_of_forall_translationNumber_eq",
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
  "slug": "semiconj-of-group-action-of-forall-translationnumber-eq--9b06bb6f74c6f3f8312ac297",
  "source": {
    "blob": "092e7da723d91029af270352b07150f63677e197",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 874,
    "line": 839,
    "path": "GRWTSK/Topology/GeneralTopology/TranslationNumber/Variant607caa33081152fa5027dbac9a27e063f5e31b16490f27ae4afbf887796407e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b06bb6f74c6f3f8312ac2976a4944cf7704bc7fe8ecee336856738797624201",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TranslationNumber/Variant607caa33081152fa5027dbac9a27e063f5e31b16490f27ae4afbf887796407e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a34fa161-7020-7bec-9c6c-26e90416d35c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 839–874.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem semiconj_of_group_action_of_forall_translationNumber_eq {G : Type*} [Group G]
    (f₁ f₂ : G →* CircleDeg1Lift) (h : ∀ g, τ (f₁ g) = τ (f₂ g)) :
    ∃ F : CircleDeg1Lift, ∀ g, Semiconj F (f₁ g) (f₂ g) := by
  -- Equality of translation number guarantees that for each `x`
  -- the set `{f₂ g⁻¹ (f₁ g x) | g : G}` is bounded above.
  have : ∀ x, BddAbove (range fun g => f₂ g⁻¹ (f₁ g x)) := by
    refine fun x => ⟨x + 2, ?_⟩
    rintro _ ⟨g, rfl⟩
    have : τ (f₂ g⁻¹) = -τ (f₂ g) := by
      rw [← MonoidHom.coe_toHomUnits, MonoidHom.map_inv, translationNumber_units_inv,
        MonoidHom.coe_toHomUnits]
    calc
      f₂ g⁻¹ (f₁ g x) ≤ f₂ g⁻¹ (x + τ (f₁ g) + 1) :=
        mono _ (map_lt_add_translationNumber_add_one _ _).le
      _ = f₂ g⁻¹ (x + τ (f₂ g)) + 1 := by rw [h, map_add_one]
      _ ≤ x + τ (f₂ g) + τ (f₂ g⁻¹) + 1 + 1 :=
        add_le_add_right (map_lt_add_translationNumber_add_one _ _).le _
      _ = x + 2 := by simp [this, add_assoc, one_add_one_eq_two]
  -- We have a theorem about actions by `OrderIso`, so we introduce auxiliary maps
  -- to `ℝ ≃o ℝ`.
  set F₁ := toOrderIso.comp f₁.toHomUnits
  set F₂ := toOrderIso.comp f₂.toHomUnits
  have hF₁ : ∀ g, ⇑(F₁ g) = f₁ g := fun _ => rfl
  have hF₂ : ∀ g, ⇑(F₂ g) = f₂ g := fun _ => rfl
  -- Now we apply `csSup_div_semiconj` and go back to `f₁` and `f₂`.
  refine ⟨⟨⟨fun x ↦ ⨆ g', (F₂ g')⁻¹ (F₁ g' x), fun x y hxy => ?_⟩, fun x => ?_⟩,
    csSup_div_semiconj F₂ F₁ fun x => ?_⟩ <;> simp only [hF₁, hF₂, ← map_inv, coe_mk]
  · exact ciSup_mono (this y) fun g => mono _ (mono _ hxy)
  · simp only [map_add_one]
    exact (Monotone.map_ciSup_of_continuousAt (continuousAt_id.add continuousAt_const)
      (monotone_id.add_const (1 : ℝ)) (this x)).symm
  · exact this x

/-- If two lifts of circle homeomorphisms have the same translation number, then they are
semiconjugate by a `CircleDeg1Lift`. This version uses arguments `f₁ f₂ : CircleDeg1Liftˣ`
to assume that `f₁` and `f₂` are homeomorphisms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TranslationNumber/Variant607caa33081152fa5027dbac9a27e063f5e31b16490f27ae4afbf887796407e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TranslationNumber/Variant607caa33081152fa5027dbac9a27e063f5e31b16490f27ae4afbf887796407e1.lean#L839).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `092e7da723d91029af270352b07150f63677e197` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
