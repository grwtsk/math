# isUnit_of_isUnit_germ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9442fac0-91dc-3850-c993-8afeed1a260e",
  "kind": "theorem",
  "lexical_name": "isUnit_of_isUnit_germ",
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
  "slug": "isunit-of-isunit-germ--ed38e7a2435481fd68796629",
  "source": {
    "blob": "2e2437950591d8597a199a7ff6dcee555cb86b11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 92,
    "path": "GRWTSK/Algebra/UniversalAlgebra/RingedSpace/Variant0d7e4480eb735ec32d377c3b715aa3cce7b5655b937ed392c862ea6e8ae38f0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed38e7a2435481fd687966290756723bb201392b7573e0b7b3671981978e0656",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/RingedSpace/Variant0d7e4480eb735ec32d377c3b715aa3cce7b5655b937ed392c862ea6e8ae38f0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9442fac0-91dc-3850-c993-8afeed1a260e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUnit_of_isUnit_germ (U : Opens X) (f : X.presheaf.obj (op U))
    (h : ∀ x : U, IsUnit (X.presheaf.germ x f)) : IsUnit f := by
  -- We pick a cover of `U` by open sets `V x`, such that `f` is a unit on each `V x`.
  choose V iVU m h_unit using fun x : U => X.isUnit_res_of_isUnit_germ U f x (h x)
  have hcover : U ≤ iSup V
  · intro x hxU
    -- Porting note : in Lean3 `rw` is sufficient
    erw [Opens.mem_iSup]
    exact ⟨⟨x, hxU⟩, m ⟨x, hxU⟩⟩
  -- Let `g x` denote the inverse of `f` in `U x`.
  choose g hg using fun x : U => IsUnit.exists_right_inv (h_unit x)
  have ic : IsCompatible (sheaf X).val V g
  -- swap
  · intro x y
    apply section_ext X.sheaf (V x ⊓ V y)
    rintro ⟨z, hzVx, hzVy⟩
    erw [germ_res_apply, germ_res_apply]
    apply (IsUnit.mul_right_inj (h ⟨z, (iVU x).le hzVx⟩)).mp
    -- Porting note : now need explicitly typing the rewrites
    rw [←show X.presheaf.germ ⟨z, hzVx⟩ (X.presheaf.map (iVU x).op f) =
      X.presheaf.germ ⟨z, ((iVU x) ⟨z, hzVx⟩).2⟩ f from
      X.presheaf.germ_res_apply (iVU x) ⟨z, hzVx⟩ f]
    -- Porting note : change was not necessary in Lean3
    change X.presheaf.germ ⟨z, hzVx⟩ _ * (X.presheaf.germ ⟨z, hzVx⟩ _) =
      X.presheaf.germ ⟨z, hzVx⟩ _ * X.presheaf.germ ⟨z, hzVy⟩ (g y)
    rw [← RingHom.map_mul,
      congr_arg (X.presheaf.germ (⟨z, hzVx⟩ : V x)) (hg x),
      -- Porting note : now need explicitly typing the rewrites
      show X.presheaf.germ ⟨z, hzVx⟩ (X.presheaf.map (iVU x).op f) =
        X.presheaf.germ ⟨z, ((iVU x) ⟨z, hzVx⟩).2⟩ f from X.presheaf.germ_res_apply _ _ f,
      -- Porting note : now need explicitly typing the rewrites
      ← show X.presheaf.germ ⟨z, hzVy⟩ (X.presheaf.map (iVU y).op f) =
          X.presheaf.germ ⟨z, ((iVU x) ⟨z, hzVx⟩).2⟩ f from
          X.presheaf.germ_res_apply (iVU y) ⟨z, hzVy⟩ f,
      ← RingHom.map_mul,
      congr_arg (X.presheaf.germ (⟨z, hzVy⟩ : V y)) (hg y), RingHom.map_one, RingHom.map_one]
  -- We claim that these local inverses glue together to a global inverse of `f`.
  obtain ⟨gl, gl_spec, -⟩ := X.sheaf.existsUnique_gluing' V U iVU hcover g ic
  apply isUnit_of_mul_eq_one f gl
  apply X.sheaf.eq_of_locally_eq' V U iVU hcover
  intro i
  rw [RingHom.map_one, RingHom.map_mul, gl_spec]
  exact hg i
set_option linter.uppercaseLean3 false in
#align algebraic_geometry.RingedSpace.is_unit_of_is_unit_germ AlgebraicGeometry.RingedSpace.isUnit_of_isUnit_germ

/-- The basic open of a section `f` is the set of all points `x`, such that the germ of `f` at
`x` is a unit.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/RingedSpace/Variant0d7e4480eb735ec32d377c3b715aa3cce7b5655b937ed392c862ea6e8ae38f0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/RingedSpace/Variant0d7e4480eb735ec32d377c3b715aa3cce7b5655b937ed392c862ea6e8ae38f0c.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e2437950591d8597a199a7ff6dcee555cb86b11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
