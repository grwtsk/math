# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:01356843035d9155adb5bfcf7a97014cd156dbd4d2582a4a2b56b3c5f6c6de19",
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
  "slug": "instance--3e84ebaea2e98ecdee966a17",
  "source": {
    "blob": "bbd2a0c18f6dfba7006f8bf332fd8d362ae1b004",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 224,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantaada4d0a2ccd4a2fa7e209047e44376c1589b08398231c9e0d23780699439072.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3e84ebaea2e98ecdee966a17ace5ded835e22c9f13978aec42ed7358fe1e90a1",
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

Occurrence: `declaration:01356843035d9155adb5bfcf7a97014cd156dbd4d2582a4a2b56b3c5f6c6de19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : MkEvalWhiskerLeft BicategoryM where
  mkEvalWhiskerLeftNil f α := do
    let ctx ← read
    let _bicat := ctx.instBicategory
    let g ← α.srcM
    let h ← α.tgtM
    have a : Q($ctx.B) := f.src.e
    have b : Q($ctx.B) := f.tgt.e
    have c : Q($ctx.B) := g.tgt.e
    have f : Q($a ⟶ $b) := f.e
    have g : Q($b ⟶ $c) := g.e
    have h : Q($b ⟶ $c) := h.e
    have α : Q($g ≅ $h) := α.e
    return q(evalWhiskerLeft_nil $f $α)
  mkEvalWhiskerLeftOfCons f α η ηs θ e_θ := do
    let ctx ← read
    let _bicat := ctx.instBicategory
    let g ← α.srcM
    let h ← α.tgtM
    let i ← η.tgtM
    let j ← ηs.tgtM
    have a : Q($ctx.B) := f.src.e
    have b : Q($ctx.B) := f.tgt.e
    have c : Q($ctx.B) := g.tgt.e
    have f : Q($a ⟶ $b) := f.e
    have g : Q($b ⟶ $c) := g.e
    have h : Q($b ⟶ $c) := h.e
    have i : Q($b ⟶ $c) := i.e
    have j : Q($b ⟶ $c) := j.e
    have α : Q($g ≅ $h) := α.e
    have η : Q($h ⟶ $i) := η.e.e
    have ηs : Q($i ⟶ $j) := ηs.e.e
    have θ : Q($f ≫ $i ⟶ $f ≫ $j) := θ.e.e
    have e_θ : Q($f ◁ $ηs = $θ) := e_θ
    return q(evalWhiskerLeft_of_cons $α $η $e_θ)
  mkEvalWhiskerLeftComp f g η η₁ η₂ η₃ η₄ e_η₁ e_η₂ e_η₃ e_η₄ := do
    let ctx ← read
    let _bicat := ctx.instBicategory
    let h ← η.srcM
    let i ← η.tgtM
    have a : Q($ctx.B) := f.src.e
    have b : Q($ctx.B) := f.tgt.e
    have c : Q($ctx.B) := g.tgt.e
    have d : Q($ctx.B) := h.tgt.e
    have f : Q($a ⟶ $b) := f.e
    have g : Q($b ⟶ $c) := g.e
    have h : Q($c ⟶ $d) := h.e
    have i : Q($c ⟶ $d) := i.e
    have η : Q($h ⟶ $i) := η.e.e
    have η₁ : Q($g ≫ $h ⟶ $g ≫ $i) := η₁.e.e
    have η₂ : Q($f ≫ $g ≫ $h ⟶ $f ≫ $g ≫ $i) := η₂.e.e
    have η₃ : Q($f ≫ $g ≫ $h ⟶ ($f ≫ $g) ≫ $i) := η₃.e.e
    have η₄ : Q(($f ≫ $g) ≫ $h ⟶ ($f ≫ $g) ≫ $i) := η₄.e.e
    have e_η₁ : Q($g ◁ $η = $η₁) := e_η₁
    have e_η₂ : Q($f ◁ $η₁ = $η₂) := e_η₂
    have e_η₃ : Q($η₂ ≫ (α_ _ _ _).inv = $η₃) := e_η₃
    have e_η₄ : Q((α_ _ _ _).hom ≫ $η₃ = $η₄) := e_η₄
    return q(evalWhiskerLeft_comp $e_η₁ $e_η₂ $e_η₃ $e_η₄)
  mkEvalWhiskerLeftId η η₁ η₂ e_η₁ e_η₂ := do
    let ctx ← read
    let _bicat := ctx.instBicategory
    let f ← η.srcM
    let g ← η.tgtM
    have a : Q($ctx.B) := f.src.e
    have b : Q($ctx.B) := f.tgt.e
    have f : Q($a ⟶ $b) := f.e
    have g : Q($a ⟶ $b) := g.e
    have η : Q($f ⟶ $g) := η.e.e
    have η₁ : Q($f ⟶ 𝟙 $a ≫ $g) := η₁.e.e
    have η₂ : Q(𝟙 $a ≫ $f ⟶ 𝟙 $a ≫ $g) := η₂.e.e
    have e_η₁ : Q($η ≫ (λ_ _).inv = $η₁) := e_η₁
    have e_η₂ : Q((λ_ _).hom ≫ $η₁ = $η₂) := e_η₂
    return q(evalWhiskerLeft_id $e_η₁ $e_η₂)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantaada4d0a2ccd4a2fa7e209047e44376c1589b08398231c9e0d23780699439072.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantaada4d0a2ccd4a2fa7e209047e44376c1589b08398231c9e0d23780699439072.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbd2a0c18f6dfba7006f8bf332fd8d362ae1b004` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
