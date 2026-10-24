# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0bce2a98ac46edf32b7bcad3818b7a2d088934855be96499902779cfb2dd7b11",
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
  "slug": "instance--e6b1fed4692c5b3f351b7327",
  "source": {
    "blob": "f02fb9e824a30a8bd6d0a0df732f7fabdab9cdc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 671,
    "line": 479,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Varianta3e2d23dd51199907f79bf0fa54ce8a5f2866413ab28246f30ec90460efd0556.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e6b1fed4692c5b3f351b7327c05f3a59ed2749d4833a32c3cfd14d64dcdb7a47",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Varianta3e2d23dd51199907f79bf0fa54ce8a5f2866413ab28246f30ec90460efd0556.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0bce2a98ac46edf32b7bcad3818b7a2d088934855be96499902779cfb2dd7b11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 479–671.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : MkEvalHorizontalComp MonoidalM where
  mkEvalHorizontalCompAuxOf η θ := do
    let ctx ← read
    let .some _monoidal := ctx.instMonoidal? | synthMonoidalError
    let f ← η.srcM
    let g ← η.tgtM
    let h ← θ.srcM
    let i ← θ.tgtM
    have f : Q($ctx.C) := f.e
    have g : Q($ctx.C) := g.e
    have h : Q($ctx.C) := h.e
    have i : Q($ctx.C) := i.e
    have η : Q($f ⟶ $g) := η.e.e
    have θ : Q($h ⟶ $i) := θ.e.e
    return q(evalHorizontalCompAux_of $η $θ)
  mkEvalHorizontalCompAuxCons η ηs θ ηθ η₁ ηθ₁ ηθ₂ e_ηθ e_η₁ e_ηθ₁ e_ηθ₂ := do
    let ctx ← read
    let .some _monoidal := ctx.instMonoidal? | synthMonoidalError
    let f ← η.srcM
    let g ← η.tgtM
    let f' ← ηs.srcM
    let g' ← ηs.tgtM
    let h ← θ.srcM
    let i ← θ.tgtM
    have f : Q($ctx.C) := f.e
    have g : Q($ctx.C) := g.e
    have f' : Q($ctx.C) := f'.e
    have g' : Q($ctx.C) := g'.e
    have h : Q($ctx.C) := h.e
    have i : Q($ctx.C) := i.e
    have η : Q($f ⟶ $g) := η.e.e
    have ηs : Q($f' ⟶ $g') := ηs.e.e
    have θ : Q($h ⟶ $i) := θ.e.e
    have ηθ : Q($f' ⊗ $h ⟶ $g' ⊗ $i) := ηθ.e.e
    have η₁ : Q($f ⊗ ($f' ⊗ $h) ⟶ $g ⊗ ($g' ⊗ $i)) := η₁.e.e
    have ηθ₁ : Q($f ⊗ ($f' ⊗ $h) ⟶ ($g ⊗ $g') ⊗ $i) := ηθ₁.e.e
    have ηθ₂ : Q(($f ⊗ $f') ⊗ $h ⟶ ($g ⊗ $g') ⊗ $i) := ηθ₂.e.e
    have e_ηθ : Q($ηs ⊗ $θ = $ηθ) := e_ηθ
    have e_η₁ : Q(((Iso.refl _).hom ≫ $η ≫ (Iso.refl _).hom) ⊗ $ηθ = $η₁) := e_η₁
    have e_ηθ₁ : Q($η₁ ≫ (α_ _ _ _).inv = $ηθ₁) := e_ηθ₁
    have e_ηθ₂ : Q((α_ _ _ _).hom ≫ $ηθ₁ = $ηθ₂) := e_ηθ₂
    return q(evalHorizontalCompAux_cons $e_ηθ $e_η₁ $e_ηθ₁ $e_ηθ₂)
  mkEvalHorizontalCompAux'Whisker f η θ ηθ η₁ η₂ η₃ e_ηθ e_η₁ e_η₂ e_η₃ := do
    let ctx ← read
    let .some _monoidal := ctx.instMonoidal? | synthMonoidalError
    let g ← η.srcM
    let h ← η.tgtM
    let f' ← θ.srcM
    let g' ← θ.tgtM
    have f : Q($ctx.C) := f.e
    have g : Q($ctx.C) := g.e
    have h : Q($ctx.C) := h.e
    have f' : Q($ctx.C) := f'.e
    have g' : Q($ctx.C) := g'.e
    have η : Q($g ⟶ $h) := η.e.e
    have θ : Q($f' ⟶ $g') := θ.e.e
    have ηθ : Q($g ⊗ $f' ⟶ $h ⊗ $g') := ηθ.e.e
    have η₁ : Q($f ⊗ ($g ⊗ $f') ⟶ $f ⊗ ($h ⊗ $g')) := η₁.e.e
    have η₂ : Q($f ⊗ ($g ⊗ $f') ⟶ ($f ⊗ $h) ⊗ $g') := η₂.e.e
    have η₃ : Q(($f ⊗ $g) ⊗ $f' ⟶ ($f ⊗ $h) ⊗ $g') := η₃.e.e
    have e_ηθ : Q($η ⊗ $θ = $ηθ) := e_ηθ
    have e_η₁ : Q($f ◁ $ηθ = $η₁) := e_η₁
    have e_η₂ : Q($η₁ ≫ (α_ _ _ _).inv = $η₂) := e_η₂
    have e_η₃ : Q((α_ _ _ _).hom ≫ $η₂ = $η₃) := e_η₃
    return q(evalHorizontalCompAux'_whisker $e_ηθ $e_η₁ $e_η₂ $e_η₃)
  mkEvalHorizontalCompAux'OfWhisker f η θ η₁ ηθ ηθ₁ ηθ₂ e_η₁ e_ηθ e_ηθ₁ e_ηθ₂ := do
    let ctx ← read
    let .some _monoidal := ctx.instMonoidal? | synthMonoidalError
    let g ← η.srcM
    let h ← η.tgtM
    let f' ← θ.srcM
    let g' ← θ.tgtM
    have f : Q($ctx.C) := f.e
    have g : Q($ctx.C) := g.e
    have h : Q($ctx.C) := h.e
    have f' : Q($ctx.C) := f'.e
    have g' : Q($ctx.C) := g'.e
    have η : Q($g ⟶ $h) := η.e.e
    have θ : Q($f' ⟶ $g') := θ.e.e
    have η₁ : Q($g ⊗ $f ⟶ $h ⊗ $f) := η₁.e.e
    have ηθ : Q(($g ⊗ $f) ⊗ $f' ⟶ ($h ⊗ $f) ⊗ $g') := ηθ.e.e
    have ηθ₁ : Q(($g ⊗ $f) ⊗ $f' ⟶ $h ⊗ ($f ⊗ $g')) := ηθ₁.e.e
    have ηθ₂ : Q($g ⊗ ($f ⊗ $f') ⟶ $h ⊗ ($f ⊗ $g')) := ηθ₂.e.e
    have e_η₁ : Q($η ▷ $f = $η₁) := e_η₁
    have e_ηθ : Q($η₁ ⊗ ((Iso.refl _).hom ≫ $θ ≫ (Iso.refl _).hom) = $ηθ) := e_ηθ
    have e_ηθ₁ : Q($ηθ ≫ (α_ _ _ _).hom = $ηθ₁) := e_ηθ₁
    have e_ηθ₂ : Q((α_ _ _ _).inv ≫ $ηθ₁ = $ηθ₂) := e_ηθ₂
    return q(evalHorizontalCompAux'_of_whisker $e_η₁ $e_ηθ $e_ηθ₁ $e_ηθ₂)
  mkEvalHorizontalCompNilNil α β := do
    let ctx ← read
    let .some _monoidal := ctx.instMonoidal? | synthMonoidalError
    let f ← α.srcM
    let g ← α.tgtM
    let h ← β.srcM
    let i ← β.tgtM
    have f : Q($ctx.C) := f.e
    have g : Q($ctx.C) := g.e
    have h : Q($ctx.C) := h.e
    have i : Q($ctx.C) := i.e
    have α : Q($f ≅ $g) := α.e
    have β : Q($h ≅ $i) := β.e
    return q(evalHorizontalComp_nil_nil $α $β)
  mkEvalHorizontalCompNilCons α β η ηs η₁ ηs₁ η₂ η₃ e_η₁ e_ηs₁ e_η₂ e_η₃ := do
    let ctx ← read
    let .some _monoidal := ctx.instMonoidal? | synthMonoidalError
    let f ← α.srcM
    let g ← α.tgtM
    let f' ← β.srcM
    let g' ← β.tgtM
    let h ← η.tgtM
    let i ← ηs.tgtM
    have f : Q($ctx.C) := f.e
    have g : Q($ctx.C) := g.e
    have f' : Q($ctx.C) := f'.e
    have g' : Q($ctx.C) := g'.e
    have h : Q($ctx.C) := h.e
    have i : Q($ctx.C) := i.e
    have α : Q($f ≅ $g) := α.e
    have β : Q($f' ≅ $g') := β.e
    have η : Q($g' ⟶ $h) := η.e.e
    have ηs : Q($h ⟶ $i) := ηs.e.e
    have η₁ : Q($g ⊗ $g' ⟶ $g ⊗ $h) := η₁.e.e
    have ηs₁ : Q($g ⊗ $h ⟶ $g ⊗ $i) := ηs₁.e.e
    have η₂ : Q($g ⊗ $g' ⟶ $g ⊗ $i) := η₂.e.e
    have η₃ : Q($f ⊗ $f' ⟶ $g ⊗ $i) := η₃.e.e
    have e_η₁ : Q($g ◁ ((Iso.refl _).hom ≫ $η ≫ (Iso.refl _).hom) = $η₁) := e_η₁
    have e_ηs₁ : Q($g ◁ $ηs = $ηs₁) := e_ηs₁
    have e_η₂ : Q($η₁ ≫ $ηs₁ = $η₂) := e_η₂
    have e_η₃ : Q(($α ⊗ $β).hom ≫ $η₂ = $η₃) := e_η₃
    return q(evalHorizontalComp_nil_cons $e_η₁ $e_ηs₁ $e_η₂ $e_η₃)
  mkEvalHorizontalCompConsNil α β η ηs η₁ ηs₁ η₂ η₃ e_η₁ e_ηs₁ e_η₂ e_η₃ := do
    let ctx ← read
    let .some _monoidal := ctx.instMonoidal? | synthMonoidalError
    let f ← α.srcM
    let g ← α.tgtM
    let h ← η.tgtM
    let i ← ηs.tgtM
    let f' ← β.srcM
    let g' ← β.tgtM
    have f : Q($ctx.C) := f.e
    have g : Q($ctx.C) := g.e
    have h : Q($ctx.C) := h.e
    have i : Q($ctx.C) := i.e
    have f' : Q($ctx.C) := f'.e
    have g' : Q($ctx.C) := g'.e
    have α : Q($f ≅ $g) := α.e
    have η : Q($g ⟶ $h) := η.e.e
    have ηs : Q($h ⟶ $i) := ηs.e.e
    have β : Q($f' ≅ $g') := β.e
    have η₁ : Q($g ⊗ $g' ⟶ $h ⊗ $g') := η₁.e.e
    have ηs₁ : Q($h ⊗ $g' ⟶ $i ⊗ $g') := ηs₁.e.e
    have η₂ : Q($g ⊗ $g' ⟶ $i ⊗ $g') := η₂.e.e
    have η₃ : Q($f ⊗ $f' ⟶ $i ⊗ $g') := η₃.e.e
    have e_η₁ : Q(((Iso.refl _).hom ≫ $η ≫ (Iso.refl _).hom) ▷ $g' = $η₁) := e_η₁
    have e_ηs₁ : Q($ηs ▷ $g' = $ηs₁) := e_ηs₁
    have e_η₂ : Q($η₁ ≫ $ηs₁ = $η₂) := e_η₂
    have e_η₃ : Q(($α ⊗ $β).hom ≫ $η₂ = $η₃) := e_η₃
    return q(evalHorizontalComp_cons_nil $e_η₁ $e_ηs₁ $e_η₂ $e_η₃)
  mkEvalHorizontalCompConsCons α β η θ ηs θs ηθ ηθs ηθ₁ ηθ₂ e_ηθ e_ηθs e_ηθ₁ e_ηθ₂ := do
    let ctx ← read
    let .some _monoidal := ctx.instMonoidal? | synthMonoidalError
    let f ← α.srcM
    let g ← α.tgtM
    let h ← η.tgtM
    let i ← ηs.tgtM
    let f' ← β.srcM
    let g' ← β.tgtM
    let h' ← θ.tgtM
    let i' ← θs.tgtM
    have f : Q($ctx.C) := f.e
    have g : Q($ctx.C) := g.e
    have h : Q($ctx.C) := h.e
    have i : Q($ctx.C) := i.e
    have f' : Q($ctx.C) := f'.e
    have g' : Q($ctx.C) := g'.e
    have h' : Q($ctx.C) := h'.e
    have i' : Q($ctx.C) := i'.e
    have α : Q($f ≅ $g) := α.e
    have η : Q($g ⟶ $h) := η.e.e
    have ηs : Q($h ⟶ $i) := ηs.e.e
    have β : Q($f' ≅ $g') := β.e
    have θ : Q($g' ⟶ $h') := θ.e.e
    have θs : Q($h' ⟶ $i') := θs.e.e
    have ηθ : Q($g ⊗ $g' ⟶ $h ⊗ $h') := ηθ.e.e
    have ηθs : Q($h ⊗ $h' ⟶ $i ⊗ $i') := ηθs.e.e
    have ηθ₁ : Q($g ⊗ $g' ⟶ $i ⊗ $i') := ηθ₁.e.e
    have ηθ₂ : Q($f ⊗ $f' ⟶ $i ⊗ $i') := ηθ₂.e.e
    have e_ηθ : Q($η ⊗ $θ = $ηθ) := e_ηθ
    have e_ηθs : Q($ηs ⊗ $θs = $ηθs) := e_ηθs
    have e_ηθ₁ : Q($ηθ ≫ $ηθs = $ηθ₁) := e_ηθ₁
    have e_ηθ₂ : Q(($α ⊗ $β).hom ≫ $ηθ₁ = $ηθ₂) := e_ηθ₂
    return q(evalHorizontalComp_cons_cons $e_ηθ $e_ηθs $e_ηθ₁ $e_ηθ₂)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Varianta3e2d23dd51199907f79bf0fa54ce8a5f2866413ab28246f30ec90460efd0556.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Varianta3e2d23dd51199907f79bf0fa54ce8a5f2866413ab28246f30ec90460efd0556.lean#L479).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f02fb9e824a30a8bd6d0a0df732f7fabdab9cdc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
