# isUnit_of_isUnit_germ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "732c281b05c9737018aaca674827f19d81d7e9cd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 84,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5de9b882faf83248db581d6a0e523c61be1f0d2b9edb6fa5500ba0d278a83315.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b38de017-a018-8794-555f-afcb3a4e851a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:163a62f5-661c-4e33-de49-554e3e2b8f1b",
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
  "slug": "isunit-of-isunit-germ--e7d0b90c5eabe19ffc60d2f9",
  "source": {
    "blob": "732c281b05c9737018aaca674827f19d81d7e9cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 84,
    "path": "GRWTSK/Algebra/UniversalAlgebra/RingedSpace/Variant5de9b882faf83248db581d6a0e523c61be1f0d2b9edb6fa5500ba0d278a83315.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7d0b90c5eabe19ffc60d2f9f49005eefd31d98ce56d9e28beebea10714556a4",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/RingedSpace/Variant5de9b882faf83248db581d6a0e523c61be1f0d2b9edb6fa5500ba0d278a83315.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:163a62f5-661c-4e33-de49-554e3e2b8f1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–132.

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

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/RingedSpace/Variant5de9b882faf83248db581d6a0e523c61be1f0d2b9edb6fa5500ba0d278a83315.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/RingedSpace/Variant5de9b882faf83248db581d6a0e523c61be1f0d2b9edb6fa5500ba0d278a83315.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `732c281b05c9737018aaca674827f19d81d7e9cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
