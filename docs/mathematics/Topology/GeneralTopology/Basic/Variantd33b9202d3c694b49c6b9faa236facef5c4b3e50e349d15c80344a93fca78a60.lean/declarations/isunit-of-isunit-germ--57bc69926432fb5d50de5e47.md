# isUnit_of_isUnit_germ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d714f4ea-dca4-b007-bf00-02d405667b2a",
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
  "slug": "isunit-of-isunit-germ--57bc69926432fb5d50de5e47",
  "source": {
    "blob": "2b04359237e0bb4496e01ce81574d13c2726acb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 107,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantd33b9202d3c694b49c6b9faa236facef5c4b3e50e349d15c80344a93fca78a60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57bc69926432fb5d50de5e4723e7247ce9488527633fba16d081b73db738a041",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantd33b9202d3c694b49c6b9faa236facef5c4b3e50e349d15c80344a93fca78a60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d714f4ea-dca4-b007-bf00-02d405667b2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUnit_of_isUnit_germ (U : Opens X) (f : X.presheaf.obj (op U))
    (h : ∀ (x) (hx : x ∈ U), IsUnit (X.presheaf.germ U x hx f)) : IsUnit f := by
  -- We pick a cover of `U` by open sets `V x`, such that `f` is a unit on each `V x`.
  choose V iVU m h_unit using fun x : U => X.isUnit_res_of_isUnit_germ U f x x.2 (h x.1 x.2)
  have hcover : U ≤ iSup V := by
    intro x hxU
    -- Porting note: in Lean3 `rw` is sufficient
    erw [Opens.mem_iSup]
    exact ⟨⟨x, hxU⟩, m ⟨x, hxU⟩⟩
  -- Let `g x` denote the inverse of `f` in `U x`.
  choose g hg using fun x : U => IsUnit.exists_right_inv (h_unit x)
  have ic : IsCompatible (sheaf X).val V g := by
    intro x y
    apply section_ext X.sheaf (V x ⊓ V y)
    rintro z ⟨hzVx, hzVy⟩
    rw [germ_res_apply, germ_res_apply]
    apply (h z ((iVU x).le hzVx)).mul_right_inj.mp
    -- Porting note: now need explicitly typing the rewrites
    -- note: this is bad, I think we should replace the `FunLike` on
    -- concrete category with `CoeFun`
    rw [← germ_res_apply X.presheaf (iVU x) z hzVx f]
    -- Porting note: change was not necessary in Lean3
    change X.presheaf.germ _ z hzVx _ * (X.presheaf.germ _ z hzVx _) =
      X.presheaf.germ _ z hzVx _ * X.presheaf.germ _ z hzVy (g y)
    rw [← RingHom.map_mul,
      congr_arg (X.presheaf.germ (V x) z hzVx) (hg x),
      germ_res_apply X.presheaf _ _ _ f,
      ← germ_res_apply X.presheaf (iVU y) z hzVy f,
      ← RingHom.map_mul,
      congr_arg (X.presheaf.germ (V y) z hzVy) (hg y), RingHom.map_one, RingHom.map_one]
  -- We claim that these local inverses glue together to a global inverse of `f`.
  obtain ⟨gl, gl_spec, -⟩ :
    -- We need to rephrase the result from `HasForget` to `CommRingCat`.
    ∃ gl : X.presheaf.obj (op U), (∀ i, ((sheaf X).val.map (iVU i).op) gl = g i) ∧ _ :=
    X.sheaf.existsUnique_gluing' V U iVU hcover g ic
  apply isUnit_of_mul_eq_one f gl
  apply X.sheaf.eq_of_locally_eq' V U iVU hcover
  intro i
  -- We need to rephrase the goal from `HasForget` to `CommRingCat`.
  show ((sheaf X).val.map (iVU i).op).hom (f * gl) = ((sheaf X).val.map (iVU i).op) 1
  rw [RingHom.map_one, RingHom.map_mul, gl_spec]
  exact hg i

/-- The basic open of a section `f` is the set of all points `x`, such that the germ of `f` at
`x` is a unit.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantd33b9202d3c694b49c6b9faa236facef5c4b3e50e349d15c80344a93fca78a60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantd33b9202d3c694b49c6b9faa236facef5c4b3e50e349d15c80344a93fca78a60.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b04359237e0bb4496e01ce81574d13c2726acb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
