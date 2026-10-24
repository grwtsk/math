# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9614b574b24c03987876d7b515599d333f62677c73599d2b9c5953c32bba015f",
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
  "slug": "instance--adfb96f30e0b0131872dc597",
  "source": {
    "blob": "4d9a7803081348a5ccfb313b381ec8936ca9f0d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 402,
    "line": 245,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Datatypes/Variant256311ae9c8477ca5a1a6a4e60d57e40c2d2f58c064e41795889ee57beb14258.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:adfb96f30e0b0131872dc597d2e1da2fc8e3114157a069cb59438f5e5c33a569",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Datatypes/Variant256311ae9c8477ca5a1a6a4e60d57e40c2d2f58c064e41795889ee57beb14258.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9614b574b24c03987876d7b515599d333f62677c73599d2b9c5953c32bba015f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–402.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : MonadMor₂ MonoidalM where
  homM η := do
    let ctx ← read
    let _cat := ctx.instCat
    let f ← η.srcM
    let g ← η.tgtM
    have f_e : Q($ctx.C) := f.e
    have g_e : Q($ctx.C) := g.e
    have η_e : Q($f_e ≅ $g_e) := η.e
    let e : Q($f_e ⟶ $g_e) := q(Iso.hom $η_e)
    have eq : Q(Iso.hom $η_e = $e) := q(rfl)
    return .isoHom e ⟨η, eq⟩ η
  atomHomM η := do
    let ctx ← read
    let _cat := ctx.instCat
    let f := η.src
    let g := η.tgt
    have f_e : Q($ctx.C) := f.e
    have g_e : Q($ctx.C) := g.e
    have η_e : Q($f_e ≅ $g_e) := η.e
    return .mk q(Iso.hom $η_e) f g
  invM η := do
    let ctx ← read
    let _cat := ctx.instCat
    let f ← η.srcM
    let g ← η.tgtM
    have f_e : Q($ctx.C) := f.e
    have g_e : Q($ctx.C) := g.e
    have η_e : Q($f_e ≅ $g_e) := η.e
    let e : Q($g_e ⟶ $f_e) := q(Iso.inv $η_e)
    let η_inv ← symmM η
    let eq : Q(Iso.inv $η_e = $e) := q(Iso.symm_hom $η_e)
    return .isoInv e ⟨η_inv, eq⟩ η
  atomInvM η := do
    let ctx ← read
    let _cat := ctx.instCat
    let f := η.src
    let g := η.tgt
    have f_e : Q($ctx.C) := f.e
    have g_e : Q($ctx.C) := g.e
    have η_e : Q($f_e ≅ $g_e) := η.e
    return .mk q(Iso.inv $η_e) g f
  id₂M f := do
    let ctx ← read
    let _cat := ctx.instCat
    have f_e : Q($ctx.C) := f.e
    let e : Q($f_e ⟶ $f_e) := q(𝟙 $f_e)
    let eq : Q(𝟙 $f_e = $e) := q(Iso.refl_hom $f_e)
    return .id e ⟨.structuralAtom <| ← id₂M f, eq⟩ f
  comp₂M η θ := do
    let ctx ← read
    let _cat := ctx.instCat
    let f ← η.srcM
    let g ← η.tgtM
    let h ← θ.tgtM
    have f_e : Q($ctx.C) := f.e
    have g_e : Q($ctx.C) := g.e
    have h_e : Q($ctx.C) := h.e
    have η_e : Q($f_e ⟶ $g_e) := η.e
    have θ_e : Q($g_e ⟶ $h_e) := θ.e
    let iso_lift? ← (match (η.isoLift?, θ.isoLift?) with
      | (some η_iso, some θ_iso) =>
        have η_iso_e : Q($f_e ≅ $g_e) := η_iso.e.e
        have θ_iso_e : Q($g_e ≅ $h_e) := θ_iso.e.e
        have η_iso_eq : Q(Iso.hom $η_iso_e = $η_e) := η_iso.eq
        have θ_iso_eq : Q(Iso.hom $θ_iso_e = $θ_e) := θ_iso.eq
        let eq := q(structuralIsoOfExpr_comp _ _ $η_iso_eq _ _ $θ_iso_eq)
        return .some ⟨← comp₂M η_iso.e θ_iso.e, eq⟩
      | _ => return none)
    let e : Q($f_e ⟶ $h_e) := q($η_e ≫ $θ_e)
    return .comp e iso_lift? f g h η θ
  whiskerLeftM f η := do
    let ctx ← read
    let .some _monoidal := ctx.instMonoidal? | synthMonoidalError
    let g ← η.srcM
    let h ← η.tgtM
    have f_e : Q($ctx.C) := f.e
    have g_e : Q($ctx.C) := g.e
    have h_e : Q($ctx.C) := h.e
    have η_e : Q($g_e ⟶ $h_e) := η.e
    let iso_lift? ← (match η.isoLift? with
      | some η_iso => do
        have η_iso_e : Q($g_e ≅ $h_e) := η_iso.e.e
        have η_iso_eq : Q(Iso.hom $η_iso_e = $η_e) := η_iso.eq
        let eq := q(structuralIsoOfExpr_whiskerLeft $f_e _ _ $η_iso_eq)
        return .some ⟨← whiskerLeftM f η_iso.e, eq⟩
      | _ => return none)
    let e : Q($f_e ⊗ $g_e ⟶ $f_e ⊗ $h_e) := q($f_e ◁ $η_e)
    return .whiskerLeft e iso_lift? f g h η
  whiskerRightM η h := do
    let ctx ← read
    let .some _monoidal := ctx.instMonoidal? | synthMonoidalError
    let f ← η.srcM
    let g ← η.tgtM
    have f_e : Q($ctx.C) := f.e
    have g_e : Q($ctx.C) := g.e
    have h_e : Q($ctx.C) := h.e
    have η_e : Q($f_e ⟶ $g_e) := η.e
    let iso_lift? ← (match η.isoLift? with
      | some η_iso => do
        have η_iso_e : Q($f_e ≅ $g_e) := η_iso.e.e
        have η_iso_eq : Q(Iso.hom $η_iso_e = $η_e) := η_iso.eq
        let eq := q(structuralIsoOfExpr_whiskerRight $h_e _ _ $η_iso_eq)
        return .some ⟨← whiskerRightM η_iso.e h, eq⟩
      | _ => return none)
    let e : Q($f_e ⊗ $h_e ⟶ $g_e ⊗ $h_e) := q($η_e ▷ $h_e)
    return .whiskerRight e iso_lift? f g η h
  horizontalCompM η θ := do
    let ctx ← read
    let .some _monoidal := ctx.instMonoidal? | synthMonoidalError
    let f₁ ← η.srcM
    let g₁ ← η.tgtM
    let f₂ ← θ.srcM
    let g₂ ← θ.tgtM
    have f₁_e : Q($ctx.C) := f₁.e
    have g₁_e : Q($ctx.C) := g₁.e
    have f₂_e : Q($ctx.C) := f₂.e
    have g₂_e : Q($ctx.C) := g₂.e
    have η_e : Q($f₁_e ⟶ $g₁_e) := η.e
    have θ_e : Q($f₂_e ⟶ $g₂_e) := θ.e
    let iso_lift? ← (match (η.isoLift?, θ.isoLift?) with
      | (some η_iso, some θ_iso) => do
        have η_iso_e : Q($f₁_e ≅ $g₁_e) := η_iso.e.e
        have θ_iso_e : Q($f₂_e ≅ $g₂_e) := θ_iso.e.e
        have η_iso_eq : Q(Iso.hom $η_iso_e = $η_e) := η_iso.eq
        have θ_iso_eq : Q(Iso.hom $θ_iso_e = $θ_e) := θ_iso.eq
        let eq := q(structuralIsoOfExpr_horizontalComp _ _ $η_iso_eq _ _ $θ_iso_eq)
        return .some ⟨← horizontalCompM η_iso.e θ_iso.e, eq⟩
      | _ => return none)
    let e : Q($f₁_e ⊗ $f₂_e ⟶ $g₁_e ⊗ $g₂_e) := q($η_e ⊗ $θ_e)
    return .horizontalComp e iso_lift? f₁ g₁ f₂ g₂ η θ
  coherenceCompM α η θ := do
    let ctx ← read
    let _cat := ctx.instCat
    let f ← η.srcM
    let g ← η.tgtM
    let h ← θ.srcM
    let i ← θ.tgtM
    have f_e : Q($ctx.C) := f.e
    have g_e : Q($ctx.C) := g.e
    have h_e : Q($ctx.C) := h.e
    have i_e : Q($ctx.C) := i.e
    have _inst : Q(MonoidalCoherence $g_e $h_e) := α.inst
    have η_e : Q($f_e ⟶ $g_e) := η.e
    have θ_e : Q($h_e ⟶ $i_e) := θ.e
    let iso_lift? ← (match (η.isoLift?, θ.isoLift?) with
      | (some η_iso, some θ_iso) => do
        have η_iso_e : Q($f_e ≅ $g_e) := η_iso.e.e
        have θ_iso_e : Q($h_e ≅ $i_e) := θ_iso.e.e
        have η_iso_eq : Q(Iso.hom $η_iso_e = $η_e) := η_iso.eq
        have θ_iso_eq : Q(Iso.hom $θ_iso_e = $θ_e) := θ_iso.eq
        let eq := q(StructuralOfExpr_monoidalComp _ _ $η_iso_eq _ _ $θ_iso_eq)
        return .some ⟨← coherenceCompM α η_iso.e θ_iso.e, eq⟩
      | _ => return none)
    let e : Q($f_e ⟶ $i_e) := q($η_e ⊗≫ $θ_e)
    return .coherenceComp e iso_lift? f g h i α η θ

/-- Check that `e` is definitionally equal to `𝟙_ C`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Datatypes/Variant256311ae9c8477ca5a1a6a4e60d57e40c2d2f58c064e41795889ee57beb14258.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Datatypes/Variant256311ae9c8477ca5a1a6a4e60d57e40c2d2f58c064e41795889ee57beb14258.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d9a7803081348a5ccfb313b381ec8936ca9f0d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
