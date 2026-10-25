# propagateUnitConstFuns

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0a52913d07a413a86c3cde4258c669b198eeb1ee4df51432d90ad1b398c148aa",
  "kind": "def",
  "lexical_name": "propagateUnitConstFuns",
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
  "slug": "propagateunitconstfuns--d564e0a7d18755596d4ba5dd",
  "source": {
    "blob": "af42767f692c69e2158ac7e9531b5cacc5371092",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 134,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd7690a08a1bb4dd9ea9d958e9d2c601862641a12dd51e7c4e061afe04fa7a6ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d564e0a7d18755596d4ba5dd7d32841ed1388dd8944caa11826d8a029ae8c851",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd7690a08a1bb4dd9ea9d958e9d2c601862641a12dd51e7c4e061afe04fa7a6ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0a52913d07a413a86c3cde4258c669b198eeb1ee4df51432d90ad1b398c148aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def propagateUnitConstFuns (lams₁ lams₂ : Array Expr) : GoalM Unit := do
  if h : lams₁.size = 0 then return () else
  if h : lams₂.size = 0 then return () else
  for lam₁ in lams₁ do
    -- Remark: we have heterogeneous equivalence classes. So, we may have functions
    -- with different domains in the same equivalence class.
    let .lam _ d₁ b₁ _ := lam₁ | pure ()
    let u ← getLevel d₁
    let inh := mkApp (mkConst ``Inhabited [u]) d₁
    let some inhInst ← synthInstance? inh | pure ()
    let isTarget ← if !b₁.hasLooseBVars then
      pure true
    else
      let sub := mkApp (mkConst ``Subsingleton [u]) d₁
      pure (← synthInstance? sub).isSome
    if isTarget then
      let some (.lam _ d₁ b₂ _) := getFunWithGivenDomain? lams₂ d₁ | pure ()
      let val ← preprocessLight <| mkApp2 (mkConst ``default [u]) d₁ inhInst
      let lhs := b₁.instantiate1 val
      let rhs := b₂.instantiate1 val
      let h ← mkEqProof lams₁[0] lams₂[0]
      pushNewFact <| mkExpectedPropHint (← mkCongrFun h val) (← mkEq lhs rhs)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd7690a08a1bb4dd9ea9d958e9d2c601862641a12dd51e7c4e061afe04fa7a6ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd7690a08a1bb4dd9ea9d958e9d2c601862641a12dd51e7c4e061afe04fa7a6ee.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af42767f692c69e2158ac7e9531b5cacc5371092` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
