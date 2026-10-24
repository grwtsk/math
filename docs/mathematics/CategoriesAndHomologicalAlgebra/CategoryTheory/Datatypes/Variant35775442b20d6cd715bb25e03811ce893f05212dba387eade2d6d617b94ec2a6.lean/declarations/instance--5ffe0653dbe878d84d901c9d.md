# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7dc2e2c2ff089dc37117409bcaeee85c79c1a5f058230871fbf99745c0c3a218",
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
  "slug": "instance--5ffe0653dbe878d84d901c9d",
  "source": {
    "blob": "63915ec6e79d03391ac2738557d7e0e86795514a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 146,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Datatypes/Variant35775442b20d6cd715bb25e03811ce893f05212dba387eade2d6d617b94ec2a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5ffe0653dbe878d84d901c9d5fd821ab3abde124e2f8684ba6ed9fda4daab151",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Datatypes/Variant35775442b20d6cd715bb25e03811ce893f05212dba387eade2d6d617b94ec2a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7dc2e2c2ff089dc37117409bcaeee85c79c1a5f058230871fbf99745c0c3a218`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : MonadMor₂Iso MonoidalM where
  associatorM f g h := do
    let ctx ← read
    let .some _monoidal := ctx.instMonoidal? | synthMonoidalError
    let f_e : Q($ctx.C) := f.e
    let g_e : Q($ctx.C) := g.e
    let h_e : Q($ctx.C) := h.e
    return .associator q(α_ $f_e $g_e $h_e) f g h
  leftUnitorM f := do
    let ctx ← read
    let .some _monoidal := ctx.instMonoidal? | synthMonoidalError
    let f_e : Q($ctx.C) := f.e
    return .leftUnitor q(λ_ $f_e) f
  rightUnitorM f := do
    let ctx ← read
    let .some _monoidal := ctx.instMonoidal? | synthMonoidalError
    let f_e : Q($ctx.C) := f.e
    return .rightUnitor q(ρ_ $f_e) f
  id₂M f := do
    let ctx ← read
    let _cat := ctx.instCat
    have f_e : Q($ctx.C) := f.e
    return .id q(Iso.refl $f_e) f
  coherenceHomM f g inst := do
    let ctx ← read
    let .some _monoidal := ctx.instMonoidal? | synthMonoidalError
    have f_e : Q($ctx.C) := f.e
    have g_e : Q($ctx.C) := g.e
    have inst : Q(MonoidalCoherence $f_e $g_e) := inst
    match (← whnfI inst).getAppFnArgs with
    | (``MonoidalCoherence.mk, #[_, _, _, _, α]) =>
      let e : Q($f_e ≅ $g_e) := q(MonoidalCoherence.iso)
      return ⟨e, f, g, inst, α⟩
    | _ => throwError m!"failed to unfold {inst}"
  comp₂M η θ := do
    let ctx ← read
    let _cat := ctx.instCat
    let f ← η.srcM
    let g ← η.tgtM
    let h ← θ.tgtM
    have f_e : Q($ctx.C) := f.e
    have g_e : Q($ctx.C) := g.e
    have h_e : Q($ctx.C) := h.e
    have η_e : Q($f_e ≅ $g_e) := η.e
    have θ_e : Q($g_e ≅ $h_e) := θ.e
    return .comp q($η_e ≪≫ $θ_e) f g h η θ
  whiskerLeftM f η := do
    let ctx ← read
    let .some _monoidal := ctx.instMonoidal? | synthMonoidalError
    let g ← η.srcM
    let h ← η.tgtM
    have f_e : Q($ctx.C) := f.e
    have g_e : Q($ctx.C) := g.e
    have h_e : Q($ctx.C) := h.e
    have η_e : Q($g_e ≅ $h_e) := η.e
    return .whiskerLeft q(whiskerLeftIso $f_e $η_e) f g h η
  whiskerRightM η h := do
    let ctx ← read
    let .some _monoidal := ctx.instMonoidal? | synthMonoidalError
    let f ← η.srcM
    let g ← η.tgtM
    have f_e : Q($ctx.C) := f.e
    have g_e : Q($ctx.C) := g.e
    have h_e : Q($ctx.C) := h.e
    have η_e : Q($f_e ≅ $g_e) := η.e
    return .whiskerRight q(whiskerRightIso $η_e $h_e) f g η h
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
    have η_e : Q($f₁_e ≅ $g₁_e) := η.e
    have θ_e : Q($f₂_e ≅ $g₂_e) := θ.e
    return .horizontalComp q(tensorIso $η_e $θ_e) f₁ g₁ f₂ g₂ η θ
  symmM η := do
    let ctx ← read
    let _cat := ctx.instCat
    let f ← η.srcM
    let g ← η.tgtM
    have f_e : Q($ctx.C) := f.e
    have g_e : Q($ctx.C) := g.e
    have η_e : Q($f_e ≅ $g_e) := η.e
    return .inv q(Iso.symm $η_e) f g η
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
    have η_e : Q($f_e ≅ $g_e) := η.e
    have θ_e : Q($h_e ≅ $i_e) := θ.e
    return .coherenceComp q($η_e ≪⊗≫ $θ_e) f g h i α η θ

open MonadMor₂Iso

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Datatypes/Variant35775442b20d6cd715bb25e03811ce893f05212dba387eade2d6d617b94ec2a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Datatypes/Variant35775442b20d6cd715bb25e03811ce893f05212dba387eade2d6d617b94ec2a6.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63915ec6e79d03391ac2738557d7e0e86795514a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
