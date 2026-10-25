# mSpecializeImpStateful

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:27bf238b1dbfe400072f99fff080fab54663c2215502cb4e832234d6a001f996",
  "kind": "def",
  "lexical_name": "mSpecializeImpStateful",
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
  "slug": "mspecializeimpstateful--77ca58b33552682e16ccba6b",
  "source": {
    "blob": "c6ad00fa378ad5016a982967eb8f2b3700f992ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 22,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variantceffc9778c0f5efaf0d71a61dd8e5c958d8de0e6d23acba5fb4e88d7853900df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:77ca58b33552682e16ccba6bd93ee532b0b1c646cb37e57e8da3557d4a17c199",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variantceffc9778c0f5efaf0d71a61dd8e5c958d8de0e6d23acba5fb4e88d7853900df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:27bf238b1dbfe400072f99fff080fab54663c2215502cb4e832234d6a001f996`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mSpecializeImpStateful (P : Expr) (QR : Expr) (arg : TSyntax `term) : OptionT TacticM (Expr × Expr) := do
  guard (arg.raw.isIdent)
  let some specHyp := parseHyp? QR | failure
  let mkApp3 (.const ``SPred.imp [u]) σs Q' R := specHyp.p | failure
  let some argRes := focusHyp u σs (SPred.mkAnd! u σs P QR) arg.raw.getId | failure
  let some hyp := parseHyp? argRes.focusHyp | failure
  addHypInfo arg σs hyp
  OptionT.mk do -- no OptionT failure after this point
  -- The goal is P ∧ (Q → R)
  -- argRes.proof : P ∧ (Q → R) ⊣⊢ₛ P' ∧ Q
  -- we want to return (R, (proof : P ∧ (Q → R) ⊢ₛ P ∧ R))
  let P' := argRes.restHyps
  let Q := argRes.focusHyp
  let hrefocus := argRes.proof -- P ∧ (Q → R) ⊣⊢ₛ P' ∧ Q
  let proof := mkApp6 (mkConst ``Specialize.imp_stateful [u]) σs P P' Q R hrefocus
  -- check proof
  trace[Meta.Tactic.Do.specialize] "Statefully specialize {specHyp.p} with {Q}. New Goal: {SPred.mkAnd! u σs P R}"
  unless ← isDefEq Q Q' do
    throwError "failed to specialize {specHyp.p} with {Q}"

  return ({ specHyp with p := R }.toExpr, proof)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variantceffc9778c0f5efaf0d71a61dd8e5c958d8de0e6d23acba5fb4e88d7853900df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variantceffc9778c0f5efaf0d71a61dd8e5c958d8de0e6d23acba5fb4e88d7853900df.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6ad00fa378ad5016a982967eb8f2b3700f992ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
