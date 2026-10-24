# uniq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aea335c2-089e-5512-b087-685cda6c5d4e",
  "kind": "theorem",
  "lexical_name": "uniq",
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
  "slug": "uniq--7329fb4871ec29a6ad2ee8aa",
  "source": {
    "blob": "49bcf455c9e0c6e6fcddfcf5bc909228bf3ca0dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 197,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant4999e82b8cd221353ae1bf25298c7692f7c4de2d7e7ae03093a40b80f21d3e4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7329fb4871ec29a6ad2ee8aaf56d62610201342461f150158555c6e4347ef7c3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant4999e82b8cd221353ae1bf25298c7692f7c4de2d7e7ae03093a40b80f21d3e4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aea335c2-089e-5512-b087-685cda6c5d4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniq {K : J ⥤ C} {c : Cone K} (hc : IsLimit c) (s : Cone (K ⋙ F))
    (f₁ f₂ : s.pt ⟶ F.obj c.pt) (h₁ : ∀ j : J, f₁ ≫ (F.mapCone c).π.app j = s.π.app j)
    (h₂ : ∀ j : J, f₂ ≫ (F.mapCone c).π.app j = s.π.app j) : f₁ = f₂ := by
  -- We can make two cones over the diagram of `s` via `f₁` and `f₂`.
  let α₁ : (F.mapCone c).toStructuredArrow ⋙ map f₁ ⟶ s.toStructuredArrow :=
    { app := fun X => eqToHom (by simp [← h₁])
      naturality := fun j₁ j₂ φ => by
        ext
        -- porting note: Lean 3 proof was `simp` but `Comma.eqToHom_right`
        -- isn't firing for some reason
        -- Asked here https://leanprover.zulipchat.com/#narrow/stream/287929-mathlib4/topic/simp.20not.20using.20a.20simp.20lemma/near/353943416
        -- I'm now doing `simp, rw [Comma.eqToHom_right, Comma.eqToHom_right], simp` but
        -- I squeezed the first `simp`.
        simp only [Functor.mapCone_pt, Functor.comp_obj, Cone.toStructuredArrow_obj,
          Functor.mapCone_π_app, map_mk, mk_right, Functor.comp_map, Cone.toStructuredArrow_map,
          comp_right, map_map_right, homMk_right]
        rw [Comma.eqToHom_right, Comma.eqToHom_right] -- this is a `simp` lemma
        simp }
  let α₂ : (F.mapCone c).toStructuredArrow ⋙ map f₂ ⟶ s.toStructuredArrow :=
    { app := fun X => eqToHom (by simp [← h₂])
      naturality := fun _ _ _ => by
        ext
        -- porting note: see comments above. `simp` should close this goal (and did in Lean 3)
        simp only [Functor.mapCone_pt, Functor.comp_obj, Cone.toStructuredArrow_obj,
          Functor.mapCone_π_app, map_mk, mk_right, Functor.comp_map, Cone.toStructuredArrow_map,
          comp_right, map_map_right, homMk_right]
        rw [Comma.eqToHom_right, Comma.eqToHom_right] -- this is a `simp` lemma
        simp }
  let c₁ : Cone (s.toStructuredArrow ⋙ pre s.pt K F) :=
    (Cones.postcompose (whiskerRight α₁ (pre s.pt K F) : _)).obj (c.toStructuredArrowCone F f₁)
  let c₂ : Cone (s.toStructuredArrow ⋙ pre s.pt K F) :=
    (Cones.postcompose (whiskerRight α₂ (pre s.pt K F) : _)).obj (c.toStructuredArrowCone F f₂)
  -- The two cones can then be combined and we may obtain a cone over the two cones since
  -- `StructuredArrow s.pt F` is cofiltered.
  let c₀ := IsCofiltered.cone (biconeMk _ c₁ c₂)
  let g₁ : c₀.pt ⟶ c₁.pt := c₀.π.app Bicone.left
  let g₂ : c₀.pt ⟶ c₂.pt := c₀.π.app Bicone.right
  -- Then `g₁.right` and `g₂.right` are two maps from the same cone into the `c`.
  have : ∀ j : J, g₁.right ≫ c.π.app j = g₂.right ≫ c.π.app j := by
    intro j
    injection c₀.π.naturality (BiconeHom.left j) with _ e₁
    injection c₀.π.naturality (BiconeHom.right j) with _ e₂
    -- porting note: Lean 3 proof now finished with `simpa using e₁.symm.trans e₂`
    -- This doesn't work for two reasons in Lean 4: firstly it seems that Lean 4 `simp`
    -- expands `let` definitions by default, so we have to switch this off with `zeta = false`;
    -- secondly, `simp` is not rewriting `Comma.eqToHom_right` for some reason (just like)
    -- 30 lines above here
    have e₃ := e₁.symm.trans e₂
    simp (config := {zeta := false}) at e₃ -- should turn `e₃` into the goal
    rw [Comma.eqToHom_right, Comma.eqToHom_right] at e₃ -- this is a `simp` lemma
    simpa (config := {zeta := false}) using e₃
  have : c.extend g₁.right = c.extend g₂.right := by
    unfold Cone.extend
    congr 1
    ext x
    apply this
  -- And thus they are equal as `c` is the limit.
  have : g₁.right = g₂.right
  calc
    g₁.right = hc.lift (c.extend g₁.right) := by
      apply hc.uniq (c.extend _)
      -- Porting note: was `by tidy`, but `aesop` only works if max heartbeats
      -- is increased, so we replace it by the output of `tidy?`
      intro j; rfl
    _ = hc.lift (c.extend g₂.right) := by
      congr
    _ = g₂.right := by
      symm
      apply hc.uniq (c.extend _)
      -- Porting note: was `by tidy`, but `aesop` only works if max heartbeats
      -- is increased, so we replace it by the output of `tidy?`
      intro _; rfl

  -- Finally, since `fᵢ` factors through `F(gᵢ)`, the result follows.
  calc
    f₁ = 𝟙 _ ≫ f₁ := by simp
    _ = c₀.pt.hom ≫ F.map g₁.right := g₁.w
    _ = c₀.pt.hom ≫ F.map g₂.right := by rw [this]
    _ = 𝟙 _ ≫ f₂ := g₂.w.symm
    _ = f₂ := by simp

#align category_theory.preserves_finite_limits_of_flat.uniq CategoryTheory.PreservesFiniteLimitsOfFlat.uniq

end PreservesFiniteLimitsOfFlat

/-- Representably flat functors preserve finite limits. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant4999e82b8cd221353ae1bf25298c7692f7c4de2d7e7ae03093a40b80f21d3e4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant4999e82b8cd221353ae1bf25298c7692f7c4de2d7e7ae03093a40b80f21d3e4d.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49bcf455c9e0c6e6fcddfcf5bc909228bf3ca0dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
