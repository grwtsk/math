# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:620d18857686fcb3851c1bee6288069602cdd306bf9c2e4f619010f472d7a8a6",
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
  "slug": "instance--6c2b2d80808aaecb3d3be454",
  "source": {
    "blob": "e07785463b5a9a3260aca17b5e3ca859e1dec7f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 94,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variantd25cde2df3f1d4f8127b8e47fee5052c0b1f4f93d172bcbcb3f4f9649a74333a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6c2b2d80808aaecb3d3be45434343f94f579847b6e463162534218c3f54cc0d3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variantd25cde2df3f1d4f8127b8e47fee5052c0b1f4f93d172bcbcb3f4f9649a74333a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:620d18857686fcb3851c1bee6288069602cdd306bf9c2e4f619010f472d7a8a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : MonadNormalizeNaturality MonoidalM where
  mkNaturalityAssociator p pf pfg pfgh f g h η_f η_g η_h := do
    let ctx ← read
    let .some _monoidal := ctx.instMonoidal? | synthMonoidalError
    have p : Q($ctx.C) := p.e.e
    have f : Q($ctx.C) := f.e
    have g : Q($ctx.C) := g.e
    have h : Q($ctx.C) := h.e
    have pf : Q($ctx.C) := pf.e.e
    have pfg : Q($ctx.C) := pfg.e.e
    have pfgh : Q($ctx.C) := pfgh.e.e
    have η_f : Q($p ⊗ $f ≅ $pf) := η_f.e
    have η_g : Q($pf ⊗ $g ≅ $pfg) := η_g.e
    have η_h : Q($pfg ⊗ $h ≅ $pfgh) := η_h.e
    return q(naturality_associator $η_f $η_g $η_h)
  mkNaturalityLeftUnitor p pf f η_f := do
    let ctx ← read
    let .some _monoidal := ctx.instMonoidal? | synthMonoidalError
    have p : Q($ctx.C) := p.e.e
    have f : Q($ctx.C) := f.e
    have pf : Q($ctx.C) := pf.e.e
    have η_f : Q($p ⊗ $f ≅ $pf) := η_f.e
    return q(naturality_leftUnitor $η_f)
  mkNaturalityRightUnitor p pf f η_f := do
    let ctx ← read
    let .some _monoidal := ctx.instMonoidal? | synthMonoidalError
    have p : Q($ctx.C) := p.e.e
    have f : Q($ctx.C) := f.e
    have pf : Q($ctx.C) := pf.e.e
    have η_f : Q($p ⊗ $f ≅ $pf) := η_f.e
    return q(naturality_rightUnitor $η_f)
  mkNaturalityId p pf f η_f := do
    let ctx ← read
    let .some _monoidal := ctx.instMonoidal? | synthMonoidalError
    have p : Q($ctx.C) := p.e.e
    have f : Q($ctx.C) := f.e
    have pf : Q($ctx.C) := pf.e.e
    have η_f : Q($p ⊗ $f ≅ $pf) := η_f.e
    return q(naturality_id $η_f)
  mkNaturalityComp p pf f g h η θ η_f η_g η_h ih_η ih_θ := do
    let ctx ← read
    let .some _monoidal := ctx.instMonoidal? | synthMonoidalError
    have p : Q($ctx.C) := p.e.e
    have f : Q($ctx.C) := f.e
    have g : Q($ctx.C) := g.e
    have h : Q($ctx.C) := h.e
    have pf : Q($ctx.C) := pf.e.e
    have η : Q($f ≅ $g) := η.e
    have θ : Q($g ≅ $h) := θ.e
    have η_f : Q($p ⊗ $f ≅ $pf) := η_f.e
    have η_g : Q($p ⊗ $g ≅ $pf) := η_g.e
    have η_h : Q($p ⊗ $h ≅ $pf) := η_h.e
    have ih_η : Q($p ◁ $η ≪≫ $η_g = $η_f) := ih_η
    have ih_θ : Q($p ◁ $θ ≪≫ $η_h = $η_g) := ih_θ
    return q(naturality_comp $η_f $η_g $η_h $ih_η $ih_θ)
  mkNaturalityWhiskerLeft p pf pfg f g h η η_f η_fg η_fh ih_η := do
    let ctx ← read
    let .some _monoidal := ctx.instMonoidal? | synthMonoidalError
    have p : Q($ctx.C) := p.e.e
    have f : Q($ctx.C) := f.e
    have g : Q($ctx.C) := g.e
    have h : Q($ctx.C) := h.e
    have pf : Q($ctx.C) := pf.e.e
    have pfg : Q($ctx.C) := pfg.e.e
    have η : Q($g ≅ $h) := η.e
    have η_f : Q($p ⊗ $f ≅ $pf) := η_f.e
    have η_fg : Q($pf ⊗ $g ≅ $pfg) := η_fg.e
    have η_fh : Q($pf ⊗ $h ≅ $pfg) := η_fh.e
    have ih_η : Q($pf ◁ $η ≪≫ $η_fh = $η_fg) := ih_η
    return q(naturality_whiskerLeft $η_f $η_fg $η_fh $ih_η)
  mkNaturalityWhiskerRight p pf pfh f g h η η_f η_g η_fh ih_η := do
    let ctx ← read
    let .some _monoidal := ctx.instMonoidal? | synthMonoidalError
    have p : Q($ctx.C) := p.e.e
    have f : Q($ctx.C) := f.e
    have g : Q($ctx.C) := g.e
    have h : Q($ctx.C) := h.e
    have pf : Q($ctx.C) := pf.e.e
    have pfh : Q($ctx.C) := pfh.e.e
    have η : Q($f ≅ $g) := η.e
    have η_f : Q($p ⊗ $f ≅ $pf) := η_f.e
    have η_g : Q($p ⊗ $g ≅ $pf) := η_g.e
    have η_fh : Q($pf ⊗ $h ≅ $pfh) := η_fh.e
    have ih_η : Q($p ◁ $η ≪≫ $η_g = $η_f) := ih_η
    return q(naturality_whiskerRight $η_f $η_g $η_fh $ih_η)
  mkNaturalityHorizontalComp p pf₁ pf₁f₂ f₁ g₁ f₂ g₂ η θ η_f₁ η_g₁ η_f₂ η_g₂ ih_η ih_θ := do
    let ctx ← read
    let .some _monoidal := ctx.instMonoidal? | synthMonoidalError
    have p : Q($ctx.C) := p.e.e
    have f₁ : Q($ctx.C) := f₁.e
    have g₁ : Q($ctx.C) := g₁.e
    have f₂ : Q($ctx.C) := f₂.e
    have g₂ : Q($ctx.C) := g₂.e
    have pf₁ : Q($ctx.C) := pf₁.e.e
    have pf₁f₂ : Q($ctx.C) := pf₁f₂.e.e
    have η : Q($f₁ ≅ $g₁) := η.e
    have θ : Q($f₂ ≅ $g₂) := θ.e
    have η_f₁ : Q($p ⊗ $f₁ ≅ $pf₁) := η_f₁.e
    have η_g₁ : Q($p ⊗ $g₁ ≅ $pf₁) := η_g₁.e
    have η_f₂ : Q($pf₁ ⊗ $f₂ ≅ $pf₁f₂) := η_f₂.e
    have η_g₂ : Q($pf₁ ⊗ $g₂ ≅ $pf₁f₂) := η_g₂.e
    have ih_η : Q($p ◁ $η ≪≫ $η_g₁ = $η_f₁) := ih_η
    have ih_θ : Q($pf₁ ◁ $θ ≪≫ $η_g₂ = $η_f₂) := ih_θ
    return q(naturality_tensorHom $η_f₁ $η_g₁ $η_f₂ $η_g₂ $ih_η $ih_θ)
  mkNaturalityInv p pf f g η η_f η_g ih := do
    let ctx ← read
    let .some _monoidal := ctx.instMonoidal? | synthMonoidalError
    have p : Q($ctx.C) := p.e.e
    have f : Q($ctx.C) := f.e
    have g : Q($ctx.C) := g.e
    have pf : Q($ctx.C) := pf.e.e
    have η : Q($f ≅ $g) := η.e
    have η_f : Q($p ⊗ $f ≅ $pf) := η_f.e
    have η_g : Q($p ⊗ $g ≅ $pf) := η_g.e
    have ih : Q($p ◁ $η ≪≫ $η_g = $η_f) := ih
    return q(naturality_inv $η_f $η_g $ih)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variantd25cde2df3f1d4f8127b8e47fee5052c0b1f4f93d172bcbcb3f4f9649a74333a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variantd25cde2df3f1d4f8127b8e47fee5052c0b1f4f93d172bcbcb3f4f9649a74333a.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e07785463b5a9a3260aca17b5e3ca859e1dec7f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
