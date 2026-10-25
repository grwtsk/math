# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a5d86194fb62c57f9fd75b610b2a5f3b6e595051fff6d3f4656e4065bc30fa2d",
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
  "slug": "instance--b9170cc1b76c0cbfeae82f6c",
  "source": {
    "blob": "014456d09fd185eb9dcd5da7555fda1375005d16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 545,
    "line": 452,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variant78ffea695381fc36b9f348449d2c06051d5186848adf902f4d6dd2f847127118.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b9170cc1b76c0cbfeae82f6cec833bb0f73f854c0394159581c816f4d7b1e7b0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variant78ffea695381fc36b9f348449d2c06051d5186848adf902f4d6dd2f847127118.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a5d86194fb62c57f9fd75b610b2a5f3b6e595051fff6d3f4656e4065bc30fa2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 452–545.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : MkEval BicategoryM where
  mkEvalComp η θ η' θ' ι e_η e_θ e_ηθ := do
    let ctx ← read
    let _bicat := ctx.instBicategory
    let f ← η'.srcM
    let g ← η'.tgtM
    let h ← θ'.tgtM
    have a : Q($ctx.B) := f.src.e
    have b : Q($ctx.B) := f.tgt.e
    have f : Q($a ⟶ $b) := f.e
    have g : Q($a ⟶ $b) := g.e
    have h : Q($a ⟶ $b) := h.e
    have η : Q($f ⟶ $g) := η.e
    have η' : Q($f ⟶ $g) := η'.e.e
    have θ : Q($g ⟶ $h) := θ.e
    have θ' : Q($g ⟶ $h) := θ'.e.e
    have ι : Q($f ⟶ $h) := ι.e.e
    have e_η : Q($η = $η') := e_η
    have e_θ : Q($θ = $θ') := e_θ
    have e_ηθ : Q($η' ≫ $θ' = $ι) := e_ηθ
    return q(eval_comp $e_η $e_θ $e_ηθ)
  mkEvalWhiskerLeft f η η' θ e_η e_θ := do
    let ctx ← read
    let _bicat := ctx.instBicategory
    let g ← η'.srcM
    let h ← η'.tgtM
    have a : Q($ctx.B) := f.src.e
    have b : Q($ctx.B) := f.tgt.e
    have c : Q($ctx.B) := g.tgt.e
    have f : Q($a ⟶ $b) := f.e
    have g : Q($b ⟶ $c) := g.e
    have h : Q($b ⟶ $c) := h.e
    have η : Q($g ⟶ $h) := η.e
    have η' : Q($g ⟶ $h) := η'.e.e
    have θ : Q($f ≫ $g ⟶ $f ≫ $h) := θ.e.e
    have e_η : Q($η = $η') := e_η
    have e_θ : Q($f ◁ $η' = $θ) := e_θ
    return q(eval_whiskerLeft $e_η $e_θ)
  mkEvalWhiskerRight η h η' θ e_η e_θ := do
    let ctx ← read
    let _bicat := ctx.instBicategory
    let f ← η'.srcM
    let g ← η'.tgtM
    have a : Q($ctx.B) := f.src.e
    have b : Q($ctx.B) := f.tgt.e
    have c : Q($ctx.B) := h.tgt.e
    have f : Q($a ⟶ $b) := f.e
    have g : Q($a ⟶ $b) := g.e
    have h : Q($b ⟶ $c) := h.e
    have η : Q($f ⟶ $g) := η.e
    have η' : Q($f ⟶ $g) := η'.e.e
    have θ : Q($f ≫ $h ⟶ $g ≫ $h) := θ.e.e
    have e_η : Q($η = $η') := e_η
    have e_θ : Q($η' ▷ $h = $θ) := e_θ
    return q(eval_whiskerRight $e_η $e_θ)
  mkEvalHorizontalComp _ _ _ _ _ _ _ _ := do
    throwError "not implemented"
  mkEvalOf η := do
    let ctx ← read
    let _bicat := ctx.instBicategory
    let f := η.src
    let g := η.tgt
    have a : Q($ctx.B) := f.src.e
    have b : Q($ctx.B) := f.tgt.e
    have f : Q($a ⟶ $b) := f.e
    have g : Q($a ⟶ $b) := g.e
    have η : Q($f ⟶ $g) := η.e
    return q(eval_of $η)
  mkEvalMonoidalComp η θ α η' θ' αθ ηαθ e_η e_θ e_αθ e_ηαθ := do
    let ctx ← read
    let _bicat := ctx.instBicategory
    let f ← η'.srcM
    let g ← η'.tgtM
    let h ← α.tgtM
    let i ← θ'.tgtM
    have a : Q($ctx.B) := f.src.e
    have b : Q($ctx.B) := f.tgt.e
    have f : Q($a ⟶ $b) := f.e
    have g : Q($a ⟶ $b) := g.e
    have h : Q($a ⟶ $b) := h.e
    have i : Q($a ⟶ $b) := i.e
    have η : Q($f ⟶ $g) := η.e
    have η' : Q($f ⟶ $g) := η'.e.e
    have α : Q($g ≅ $h) := α.e
    have θ : Q($h ⟶ $i) := θ.e
    have θ' : Q($h ⟶ $i) := θ'.e.e
    have αθ : Q($g ⟶ $i) := αθ.e.e
    have ηαθ : Q($f ⟶ $i) := ηαθ.e.e
    have e_η : Q($η = $η') := e_η
    have e_θ : Q($θ = $θ') := e_θ
    have e_αθ : Q(Iso.hom $α ≫ $θ' = $αθ) := e_αθ
    have e_ηαθ : Q($η' ≫ $αθ = $ηαθ) := e_ηαθ
    return q(eval_bicategoricalComp $e_η $e_θ $e_αθ $e_ηαθ)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variant78ffea695381fc36b9f348449d2c06051d5186848adf902f4d6dd2f847127118.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variant78ffea695381fc36b9f348449d2c06051d5186848adf902f4d6dd2f847127118.lean#L452).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `014456d09fd185eb9dcd5da7555fda1375005d16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
