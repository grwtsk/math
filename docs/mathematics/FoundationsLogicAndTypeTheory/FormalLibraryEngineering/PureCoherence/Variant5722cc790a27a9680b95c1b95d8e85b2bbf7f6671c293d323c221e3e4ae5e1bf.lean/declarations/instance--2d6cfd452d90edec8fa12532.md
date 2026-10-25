# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ca7714beebf0c0d1cd6f4ef66ca431227832514e0b4bb11e6982199d7284766f",
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
  "slug": "instance--2d6cfd452d90edec8fa12532",
  "source": {
    "blob": "b7d5b211a04788541ef8d2d406c78efae1f0f630",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 84,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant5722cc790a27a9680b95c1b95d8e85b2bbf7f6671c293d323c221e3e4ae5e1bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2d6cfd452d90edec8fa125321f826c2689f0beeb149c5c4ef5f4ab9073f2b5ce",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant5722cc790a27a9680b95c1b95d8e85b2bbf7f6671c293d323c221e3e4ae5e1bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ca7714beebf0c0d1cd6f4ef66ca431227832514e0b4bb11e6982199d7284766f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : MonadNormalizeNaturality BicategoryM where
  mkNaturalityAssociator p pf pfg pfgh f g h η_f η_g η_h := do
    let ctx ← read
    let _bicat := ctx.instBicategory
    have a : Q($ctx.B) := p.src.e
    have b : Q($ctx.B) := p.tgt.e
    have c : Q($ctx.B) := f.tgt.e
    have d : Q($ctx.B) := g.tgt.e
    have e : Q($ctx.B) := h.tgt.e
    have p : Q($a ⟶ $b) := p.e.e
    have f : Q($b ⟶ $c) := f.e
    have g : Q($c ⟶ $d) := g.e
    have h : Q($d ⟶ $e) := h.e
    have pf : Q($a ⟶ $c) := pf.e.e
    have pfg : Q($a ⟶ $d) := pfg.e.e
    have pfgh : Q($a ⟶ $e) := pfgh.e.e
    have η_f : Q($p ≫ $f ≅ $pf) := η_f.e
    have η_g : Q($pf ≫ $g ≅ $pfg) := η_g.e
    have η_h : Q($pfg ≫ $h ≅ $pfgh) := η_h.e
    return q(naturality_associator $η_f $η_g $η_h)
  mkNaturalityLeftUnitor p pf f η_f := do
    let ctx ← read
    let _bicat := ctx.instBicategory
    have a : Q($ctx.B) := p.src.e
    have b : Q($ctx.B) := p.tgt.e
    have c : Q($ctx.B) := f.tgt.e
    have p : Q($a ⟶ $b) := p.e.e
    have f : Q($b ⟶ $c) := f.e
    have pf : Q($a ⟶ $c) := pf.e.e
    have η_f : Q($p ≫ $f ≅ $pf) := η_f.e
    return q(naturality_leftUnitor $η_f)
  mkNaturalityRightUnitor p pf f η_f := do
    let ctx ← read
    let _bicat := ctx.instBicategory
    have a : Q($ctx.B) := p.src.e
    have b : Q($ctx.B) := p.tgt.e
    have c : Q($ctx.B) := f.tgt.e
    have p : Q($a ⟶ $b) := p.e.e
    have f : Q($b ⟶ $c) := f.e
    have pf : Q($a ⟶ $c) := pf.e.e
    have η_f : Q($p ≫ $f ≅ $pf) := η_f.e
    return q(naturality_rightUnitor $η_f)
  mkNaturalityId p pf f η_f := do
    let ctx ← read
    let _bicat := ctx.instBicategory
    have a : Q($ctx.B) := p.src.e
    have b : Q($ctx.B) := p.tgt.e
    have c : Q($ctx.B) := f.tgt.e
    have p : Q($a ⟶ $b) := p.e.e
    have f : Q($b ⟶ $c) := f.e
    have pf : Q($a ⟶ $c) := pf.e.e
    have η_f : Q($p ≫ $f ≅ $pf) := η_f.e
    return q(naturality_id $η_f)
  mkNaturalityComp p pf f g h η θ η_f η_g η_h ih_η ih_θ := do
    let ctx ← read
    let _bicat := ctx.instBicategory
    have a : Q($ctx.B) := p.src.e
    have b : Q($ctx.B) := p.tgt.e
    have c : Q($ctx.B) := f.tgt.e
    have p : Q($a ⟶ $b) := p.e.e
    have f : Q($b ⟶ $c) := f.e
    have g : Q($b ⟶ $c) := g.e
    have h : Q($b ⟶ $c) := h.e
    have pf : Q($a ⟶ $c) := pf.e.e
    have η : Q($f ≅ $g) := η.e
    have θ : Q($g ≅ $h) := θ.e
    have η_f : Q($p ≫ $f ≅ $pf) := η_f.e
    have η_g : Q($p ≫ $g ≅ $pf) := η_g.e
    have η_h : Q($p ≫ $h ≅ $pf) := η_h.e
    have ih_η : Q($p ◁ $η ≪≫ $η_g = $η_f) := ih_η
    have ih_θ : Q($p ◁ $θ ≪≫ $η_h = $η_g) := ih_θ
    return q(naturality_comp $η_f $η_g $η_h $ih_η $ih_θ)
  mkNaturalityWhiskerLeft p pf pfg f g h η η_f η_fg η_fh ih_η := do
    let ctx ← read
    let _bicat := ctx.instBicategory
    have a : Q($ctx.B) := p.src.e
    have b : Q($ctx.B) := p.tgt.e
    have c : Q($ctx.B) := f.tgt.e
    have d : Q($ctx.B) := g.tgt.e
    have p : Q($a ⟶ $b) := p.e.e
    have f : Q($b ⟶ $c) := f.e
    have g : Q($c ⟶ $d) := g.e
    have h : Q($c ⟶ $d) := h.e
    have pf : Q($a ⟶ $c) := pf.e.e
    have pfg : Q($a ⟶ $d) := pfg.e.e
    have η : Q($g ≅ $h) := η.e
    have η_f : Q($p ≫ $f ≅ $pf) := η_f.e
    have η_fg : Q($pf ≫ $g ≅ $pfg) := η_fg.e
    have η_fh : Q($pf ≫ $h ≅ $pfg) := η_fh.e
    have ih_η : Q($pf ◁ $η ≪≫ $η_fh = $η_fg) := ih_η
    return q(naturality_whiskerLeft $η_f $η_fg $η_fh $ih_η)
  mkNaturalityWhiskerRight p pf pfh f g h η η_f η_g η_fh ih_η := do
    let ctx ← read
    let _bicat := ctx.instBicategory
    have a : Q($ctx.B) := p.src.e
    have b : Q($ctx.B) := p.tgt.e
    have c : Q($ctx.B) := f.tgt.e
    have d : Q($ctx.B) := h.tgt.e
    have p : Q($a ⟶ $b) := p.e.e
    have f : Q($b ⟶ $c) := f.e
    have g : Q($b ⟶ $c) := g.e
    have h : Q($c ⟶ $d) := h.e
    have pf : Q($a ⟶ $c) := pf.e.e
    have pfh : Q($a ⟶ $d) := pfh.e.e
    have η : Q($f ≅ $g) := η.e
    have η_f : Q($p ≫ $f ≅ $pf) := η_f.e
    have η_g : Q($p ≫ $g ≅ $pf) := η_g.e
    have η_fh : Q($pf ≫ $h ≅ $pfh) := η_fh.e
    have ih_η : Q($p ◁ $η ≪≫ $η_g = $η_f) := ih_η
    return q(naturality_whiskerRight $η_f $η_g $η_fh $ih_η)
  mkNaturalityHorizontalComp _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ := do
    throwError "horizontal composition is not implemented"
  mkNaturalityInv p pf f g η η_f η_g ih := do
    let ctx ← read
    let _bicat := ctx.instBicategory
    have a : Q($ctx.B) := p.src.e
    have b : Q($ctx.B) := p.tgt.e
    have c : Q($ctx.B) := f.tgt.e
    have p : Q($a ⟶ $b) := p.e.e
    have f : Q($b ⟶ $c) := f.e
    have g : Q($b ⟶ $c) := g.e
    have pf : Q($a ⟶ $c) := pf.e.e
    have η : Q($f ≅ $g) := η.e
    have η_f : Q($p ≫ $f ≅ $pf) := η_f.e
    have η_g : Q($p ≫ $g ≅ $pf) := η_g.e
    have ih : Q($p ◁ $η ≪≫ $η_g = $η_f) := ih
    return q(naturality_inv $η_f $η_g $ih)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant5722cc790a27a9680b95c1b95d8e85b2bbf7f6671c293d323c221e3e4ae5e1bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant5722cc790a27a9680b95c1b95d8e85b2bbf7f6671c293d323c221e3e4ae5e1bf.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7d5b211a04788541ef8d2d406c78efae1f0f630` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
