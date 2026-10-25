# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c710ede699471ea0ffe0af021bdbe86e19e4ee003f2ff34d0396d8eb169c6417",
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
  "slug": "instance--c0bfe1e8d2b60caf775bdb75",
  "source": {
    "blob": "014456d09fd185eb9dcd5da7555fda1375005d16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 171,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variant78ffea695381fc36b9f348449d2c06051d5186848adf902f4d6dd2f847127118.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c0bfe1e8d2b60caf775bdb753d96436e1a18d0064df9aad5167cbaa376259c12",
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

Occurrence: `declaration:c710ede699471ea0ffe0af021bdbe86e19e4ee003f2ff34d0396d8eb169c6417`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : MkEvalComp BicategoryM where
  mkEvalCompNilNil α β := do
    let ctx ← read
    let _bicat := ctx.instBicategory
    let f ← α.srcM
    let g ← α.tgtM
    let h ← β.tgtM
    have a : Q($ctx.B) := f.src.e
    have b : Q($ctx.B) := f.tgt.e
    have f : Q($a ⟶ $b) := f.e
    have g : Q($a ⟶ $b) := g.e
    have h : Q($a ⟶ $b) := h.e
    have α : Q($f ≅ $g) := α.e
    have β : Q($g ≅ $h) := β.e
    return q(evalComp_nil_nil $α $β)
  mkEvalCompNilCons α β η ηs := do
    let ctx ← read
    let _bicat := ctx.instBicategory
    let f ← α.srcM
    let g ← α.tgtM
    let h ← β.tgtM
    let i ← η.tgtM
    let j ← ηs.tgtM
    have a : Q($ctx.B) := f.src.e
    have b : Q($ctx.B) := f.tgt.e
    have f : Q($a ⟶ $b) := f.e
    have g : Q($a ⟶ $b) := g.e
    have h : Q($a ⟶ $b) := h.e
    have i : Q($a ⟶ $b) := i.e
    have j : Q($a ⟶ $b) := j.e
    have α : Q($f ≅ $g) := α.e
    have β : Q($g ≅ $h) := β.e
    have η : Q($h ⟶ $i) := η.e.e
    have ηs : Q($i ⟶ $j) := ηs.e.e
    return q(evalComp_nil_cons $α $β $η $ηs)
  mkEvalCompCons α η ηs θ ι e_ι := do
    let ctx ← read
    let _bicat := ctx.instBicategory
    let f ← α.srcM
    let g ← α.tgtM
    let h ← η.tgtM
    let i ← ηs.tgtM
    let j ← θ.tgtM
    have a : Q($ctx.B) := f.src.e
    have b : Q($ctx.B) := f.tgt.e
    have f : Q($a ⟶ $b) := f.e
    have g : Q($a ⟶ $b) := g.e
    have h : Q($a ⟶ $b) := h.e
    have i : Q($a ⟶ $b) := i.e
    have j : Q($a ⟶ $b) := j.e
    have α : Q($f ≅ $g) := α.e
    have η : Q($g ⟶ $h) := η.e.e
    have ηs : Q($h ⟶ $i) := ηs.e.e
    have θ : Q($i ⟶ $j) := θ.e.e
    have ι : Q($h ⟶ $j) := ι.e.e
    have e_ι : Q($ηs ≫ $θ = $ι) := e_ι
    return q(evalComp_cons $α $η $e_ι)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variant78ffea695381fc36b9f348449d2c06051d5186848adf902f4d6dd2f847127118.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variant78ffea695381fc36b9f348449d2c06051d5186848adf902f4d6dd2f847127118.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `014456d09fd185eb9dcd5da7555fda1375005d16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
