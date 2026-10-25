# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:50ede764908188bafae79b3a7b679640bfdbba9017c440a47b5a30595351c6fe",
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
  "slug": "instance--c4f30ec4da8d403d8c307473",
  "source": {
    "blob": "bbd2a0c18f6dfba7006f8bf332fd8d362ae1b004",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 428,
    "line": 298,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantaada4d0a2ccd4a2fa7e209047e44376c1589b08398231c9e0d23780699439072.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c4f30ec4da8d403d8c3074736227074a71f58c87dae61b435e3879ca3b4ff400",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantaada4d0a2ccd4a2fa7e209047e44376c1589b08398231c9e0d23780699439072.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:50ede764908188bafae79b3a7b679640bfdbba9017c440a47b5a30595351c6fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–428.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : MkEvalWhiskerRight BicategoryM where
  mkEvalWhiskerRightAuxOf η h := do
    let ctx ← read
    let _bicat := ctx.instBicategory
    let f ← η.srcM
    let g ← η.tgtM
    have a : Q($ctx.B) := f.src.e
    have b : Q($ctx.B) := f.tgt.e
    have c : Q($ctx.B) := h.tgt.e
    have f : Q($a ⟶ $b) := f.e
    have g : Q($a ⟶ $b) := g.e
    have h : Q($b ⟶ $c) := h.e
    have η : Q($f ⟶ $g) := η.e.e
    return q(evalWhiskerRightAux_of $η $h)
  mkEvalWhiskerRightAuxCons _ _ _ _ _ _ _ _ _ _ _ := do
    throwError "not implemented"
  mkEvalWhiskerRightNil α h := do
      let ctx ← read
      let _bicat := ctx.instBicategory
      let f ← α.srcM
      let g ← α.tgtM
      have a : Q($ctx.B) := f.src.e
      have b : Q($ctx.B) := f.tgt.e
      have c : Q($ctx.B) := h.tgt.e
      have f : Q($a ⟶ $b) := f.e
      have g : Q($a ⟶ $b) := g.e
      have h : Q($b ⟶ $c) := h.e
      have α : Q($f ≅ $g) := α.e
      return q(evalWhiskerRight_nil $α $h)
  mkEvalWhiskerRightConsOfOf j α η ηs ηs₁ η₁ η₂ η₃ e_ηs₁ e_η₁ e_η₂ e_η₃ := do
    let ctx ← read
    let _bicat := ctx.instBicategory
    let f ← α.srcM
    let g ← α.tgtM
    let h ← η.tgtM
    let i ← ηs.tgtM
    have a : Q($ctx.B) := f.src.e
    have b : Q($ctx.B) := f.tgt.e
    have c : Q($ctx.B) := j.tgt.e
    have f : Q($a ⟶ $b) := f.e
    have g : Q($a ⟶ $b) := g.e
    have h : Q($a ⟶ $b) := h.e
    have i : Q($a ⟶ $b) := i.e
    have j : Q($b ⟶ $c) := j.e
    have α : Q($f ≅ $g) := α.e
    have η : Q($g ⟶ $h) := η.e.e
    have ηs : Q($h ⟶ $i) := ηs.e.e
    have ηs₁ : Q($h ≫ $j ⟶ $i ≫ $j) := ηs₁.e.e
    have η₁ : Q($g ≫ $j ⟶ $h ≫ $j) := η₁.e.e
    have η₂ : Q($g ≫ $j ⟶ $i ≫ $j) := η₂.e.e
    have η₃ : Q($f ≫ $j ⟶ $i ≫ $j) := η₃.e.e
    have e_ηs₁ : Q($ηs ▷ $j = $ηs₁) := e_ηs₁
    have e_η₁ : Q($η ▷ $j = $η₁) := e_η₁
    have e_η₂ : Q($η₁ ≫ $ηs₁ = $η₂) := e_η₂
    have e_η₃ : Q((whiskerRightIso $α $j).hom ≫ $η₂ = $η₃) := e_η₃
    return q(evalWhiskerRight_cons_of_of $e_ηs₁ $e_η₁ $e_η₂ $e_η₃)
  mkEvalWhiskerRightConsWhisker f k α η ηs η₁ η₂ ηs₁ ηs₂ η₃ η₄ η₅
      e_η₁ e_η₂ e_ηs₁ e_ηs₂ e_η₃ e_η₄ e_η₅ := do
    let ctx ← read
    let _bicat := ctx.instBicategory
    let g ← α.srcM
    let h ← η.srcM
    let i ← η.tgtM
    let j ← ηs.tgtM
    have a : Q($ctx.B) := f.src.e
    have b : Q($ctx.B) := f.tgt.e
    have c : Q($ctx.B) := h.tgt.e
    have d : Q($ctx.B) := k.tgt.e
    have f : Q($a ⟶ $b) := f.e
    have g : Q($a ⟶ $c) := g.e
    have h : Q($b ⟶ $c) := h.e
    have i : Q($b ⟶ $c) := i.e
    have j : Q($a ⟶ $c) := j.e
    have k : Q($c ⟶ $d) := k.e
    have α : Q($g ≅ $f ≫ $h) := α.e
    have η : Q($h ⟶ $i) := η.e.e
    have ηs : Q($f ≫ $i ⟶ $j) := ηs.e.e
    have η₁ : Q($h ≫ $k ⟶ $i ≫ $k) := η₁.e.e
    have η₂ : Q($f ≫ ($h ≫ $k) ⟶ $f ≫ ($i ≫ $k)) := η₂.e.e
    have ηs₁ : Q(($f ≫ $i) ≫ $k ⟶ $j ≫ $k) := ηs₁.e.e
    have ηs₂ : Q($f ≫ ($i ≫ $k) ⟶ $j ≫ $k) := ηs₂.e.e
    have η₃ : Q($f ≫ ($h ≫ $k) ⟶ $j ≫ $k) := η₃.e.e
    have η₄ : Q(($f ≫ $h) ≫ $k ⟶ $j ≫ $k) := η₄.e.e
    have η₅ : Q($g ≫ $k ⟶ $j ≫ $k) := η₅.e.e
    have e_η₁ : Q(((Iso.refl _).hom ≫ $η ≫ (Iso.refl _).hom) ▷ $k = $η₁) := e_η₁
    have e_η₂ : Q($f ◁ $η₁ = $η₂) := e_η₂
    have e_ηs₁ : Q($ηs ▷ $k = $ηs₁) := e_ηs₁
    have e_ηs₂ : Q((α_ _ _ _).inv ≫ $ηs₁ = $ηs₂) := e_ηs₂
    have e_η₃ : Q($η₂ ≫ $ηs₂ = $η₃) := e_η₃
    have e_η₄ : Q((α_ _ _ _).hom ≫ $η₃ = $η₄) := e_η₄
    have e_η₅ : Q((whiskerRightIso $α $k).hom ≫ $η₄ = $η₅) := e_η₅
    return q(evalWhiskerRight_cons_whisker $e_η₁ $e_η₂ $e_ηs₁ $e_ηs₂ $e_η₃ $e_η₄ $e_η₅)
  mkEvalWhiskerRightComp g h η η₁ η₂ η₃ η₄ e_η₁ e_η₂ e_η₃ e_η₄ := do
    let ctx ← read
    let _bicat := ctx.instBicategory
    let f ← η.srcM
    let f' ← η.tgtM
    have a : Q($ctx.B) := f.src.e
    have b : Q($ctx.B) := f.tgt.e
    have c : Q($ctx.B) := g.tgt.e
    have d : Q($ctx.B) := h.tgt.e
    have f : Q($a ⟶ $b) := f.e
    have f' : Q($a ⟶ $b) := f'.e
    have g : Q($b ⟶ $c) := g.e
    have h : Q($c ⟶ $d) := h.e
    have η : Q($f ⟶ $f') := η.e.e
    have η₁ : Q($f ≫ $g ⟶ $f' ≫ $g) := η₁.e.e
    have η₂ : Q(($f ≫ $g) ≫ $h ⟶ ($f' ≫ $g) ≫ $h) := η₂.e.e
    have η₃ : Q(($f ≫ $g) ≫ $h ⟶ $f' ≫ ($g ≫ $h)) := η₃.e.e
    have η₄ : Q($f ≫ ($g ≫ $h) ⟶ $f' ≫ ($g ≫ $h)) := η₄.e.e
    have e_η₁ : Q($η ▷ $g = $η₁) := e_η₁
    have e_η₂ : Q($η₁ ▷ $h = $η₂) := e_η₂
    have e_η₃ : Q($η₂ ≫ (α_ _ _ _).hom = $η₃) := e_η₃
    have e_η₄ : Q((α_ _ _ _).inv ≫ $η₃ = $η₄) := e_η₄
    return q(evalWhiskerRight_comp $e_η₁ $e_η₂ $e_η₃ $e_η₄)
  mkEvalWhiskerRightId η η₁ η₂ e_η₁ e_η₂ := do
    let ctx ← read
    let _bicat := ctx.instBicategory
    let f ← η.srcM
    let g ← η.tgtM
    have a : Q($ctx.B) := f.src.e
    have b : Q($ctx.B) := f.tgt.e
    have f : Q($a ⟶ $b) := f.e
    have g : Q($a ⟶ $b) := g.e
    have η : Q($f ⟶ $g) := η.e.e
    have η₁ : Q($f ⟶ $g ≫ 𝟙 $b) := η₁.e.e
    have η₂ : Q($f ≫ 𝟙 $b ⟶ $g ≫ 𝟙 $b) := η₂.e.e
    have e_η₁ : Q($η ≫ (ρ_ _).inv = $η₁) := e_η₁
    have e_η₂ : Q((ρ_ _).hom ≫ $η₁ = $η₂) := e_η₂
    return q(evalWhiskerRight_id $e_η₁ $e_η₂)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantaada4d0a2ccd4a2fa7e209047e44376c1589b08398231c9e0d23780699439072.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantaada4d0a2ccd4a2fa7e209047e44376c1589b08398231c9e0d23780699439072.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbd2a0c18f6dfba7006f8bf332fd8d362ae1b004` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
