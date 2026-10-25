# MGoal.assumption

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8a7bf7094a554fb4272d63dfae6a929d09806b1835e7abc234a1a47b1b90d816",
  "kind": "def",
  "lexical_name": "MGoal.assumption",
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
  "slug": "mgoal-assumption--060c4247d1847af5a89f4dca",
  "source": {
    "blob": "21be3953a1221f2be40f5e31e713ed41ed68d38a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 18,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assumption/Variant4fde763a1291cadfc08707fef286e6d552304137072beff1638451926f858821.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:060c4247d1847af5a89f4dcace89c0a4e3cfb9b4ede60ad64af0d0301241e6d4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assumption/Variant4fde763a1291cadfc08707fef286e6d552304137072beff1638451926f858821.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8a7bf7094a554fb4272d63dfae6a929d09806b1835e7abc234a1a47b1b90d816`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def MGoal.assumption (goal : MGoal) : OptionT MetaM Expr := do
  if let some _ := parseEmptyHyp? goal.hyps then
    failure
  if let some hyp := parseHyp? goal.hyps then
    guard (← isDefEq hyp.p goal.target)
    return mkApp2 (mkConst ``SPred.entails.refl [goal.u]) goal.σs hyp.p
  if let some (u, σs, lhs, rhs) := parseAnd? goal.hyps then
    -- NB: Need to prefer rhs over lhs, like the goal view (Lean.Elab.Tactic.Do.ProofMode.Display).
    mkApp5 (mkConst ``Assumption.right [u]) σs lhs rhs goal.target <$> assumption { goal with hyps := rhs }
    <|>
    mkApp5 (mkConst ``Assumption.left [u]) σs lhs rhs goal.target <$> assumption { goal with hyps := lhs }
  else
    panic! s!"assumption: hypothesis without proper metadata: {goal.hyps}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assumption/Variant4fde763a1291cadfc08707fef286e6d552304137072beff1638451926f858821.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assumption/Variant4fde763a1291cadfc08707fef286e6d552304137072beff1638451926f858821.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21be3953a1221f2be40f5e31e713ed41ed68d38a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
