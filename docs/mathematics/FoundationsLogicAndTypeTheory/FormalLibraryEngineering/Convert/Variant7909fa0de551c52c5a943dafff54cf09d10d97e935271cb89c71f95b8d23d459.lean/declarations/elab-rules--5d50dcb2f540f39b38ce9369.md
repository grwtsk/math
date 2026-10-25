# Anonymous elab_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71dd0d41355843ed5a966ade6c2609abfb87c22c62a95d8c482a5970c7e9630c",
  "kind": "elab_rules",
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
  "slug": "elab-rules--5d50dcb2f540f39b38ce9369",
  "source": {
    "blob": "dbcf63295eb6337c8c68f5024506ded3b3ea9cc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 111,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant7909fa0de551c52c5a943dafff54cf09d10d97e935271cb89c71f95b8d23d459.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5d50dcb2f540f39b38ce9369d0dffddfddde56de954ef11263a387aa85fd57a8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant7909fa0de551c52c5a943dafff54cf09d10d97e935271cb89c71f95b8d23d459.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:71dd0d41355843ed5a966ade6c2609abfb87c22c62a95d8c482a5970c7e9630c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab_rules : tactic
| `(tactic| convert $[$cfg:config]? $[←%$sym]? $term $[using $n]? $[with $ps?*]?) =>
  withMainContext do
    let config ← Congr!.elabConfig (mkOptionalNode cfg)
    let patterns := (Std.Tactic.RCases.expandRIntroPats (ps?.getD #[])).toList
    let expectedType ← mkFreshExprMVar (mkSort (← getLevel (← getMainTarget)))
    let (e, gs) ←
      withCollectingNewGoalsFrom (allowNaturalHoles := true) (tagSuffix := `convert) do
        -- Allow typeclass inference failures since these will be inferred by unification
        -- or else become new goals
        withTheReader Term.Context (fun ctx => { ctx with ignoreTCFailures := true }) do
          let t ← elabTermEnsuringType (mayPostpone := true) term expectedType
          -- Process everything so that tactics get run, but again allow TC failures
          Term.synthesizeSyntheticMVars (mayPostpone := false) (ignoreStuckTC := true)
          -- Use a type hint to ensure we collect goals from the type too
          mkExpectedTypeHint t (← inferType t)
    liftMetaTactic fun g ↦
      return (← g.convert e sym.isSome (n.map (·.getNat)) config patterns) ++ gs

-- FIXME restore when `add_tactic_doc` is ported.
-- add_tactic_doc
-- { name       := "convert",
--   category   := doc_category.tactic,
--   decl_names := [`tactic.interactive.convert],
--   tags       := ["congruence"] }

/--
`convert_to g using n` attempts to change the current goal to `g`, but unlike `change`,
it will generate equality proof obligations using `congr! n` to resolve discrepancies.
`convert_to g` defaults to using `congr! 1`.
`convert_to` is similar to `convert`, but `convert_to` takes a type (the desired subgoal) while
`convert` takes a proof term.
That is, `convert_to g using n` is equivalent to `convert (?_ : g) using n`.

The syntax for `convert_to` is the same as for `convert`, and it has variations such as
`convert_to ← g` and `convert_to (config := {transparency := .default}) g`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant7909fa0de551c52c5a943dafff54cf09d10d97e935271cb89c71f95b8d23d459.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant7909fa0de551c52c5a943dafff54cf09d10d97e935271cb89c71f95b8d23d459.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbcf63295eb6337c8c68f5024506ded3b3ea9cc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
