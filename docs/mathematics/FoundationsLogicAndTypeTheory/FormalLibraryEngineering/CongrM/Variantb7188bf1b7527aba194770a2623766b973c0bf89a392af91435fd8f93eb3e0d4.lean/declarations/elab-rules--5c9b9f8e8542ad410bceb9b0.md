# Anonymous elab_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:20e46a7a6d1705586d484e986f272c42e9ed8fd63358b95692286bc32816a7a0",
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
  "slug": "elab-rules--5c9b9f8e8542ad410bceb9b0",
  "source": {
    "blob": "0548eed689e172fbb207765054e2af57e8bd75af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 60,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrM/Variantb7188bf1b7527aba194770a2623766b973c0bf89a392af91435fd8f93eb3e0d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c9b9f8e8542ad410bceb9b09753a6c056ad91711ce2ae48ac8ed39c09bfbf2c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrM/Variantb7188bf1b7527aba194770a2623766b973c0bf89a392af91435fd8f93eb3e0d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:20e46a7a6d1705586d484e986f272c42e9ed8fd63358b95692286bc32816a7a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab_rules : tactic
  | `(tactic| congrm $expr:term) => do
    -- Wrap all synthetic holes `?m` as `c(?m)` to form `congr(...)` pattern
    let pattern ← expr.raw.replaceM fun stx =>
      if stx.isOfKind ``Parser.Term.syntheticHole then
        pure <| stx.mkAntiquotNode `term
      else if stx.isAntiquots then
        -- Don't look into `$(..)` expressions
        pure stx
      else
        pure none
    trace[Tactic.congrm] "pattern: {pattern}"
    -- Chain together transformations as needed to convert the goal to an Eq if possible.
    liftMetaTactic fun g => do
      return [← (← g.iffOfEq).liftReflToEq]
    -- Apply `congr(...)`
    withMainContext do
      let gStx ← Term.exprToSyntax (← getMainTarget)
      -- Gives the expected type to `refine` as a workaround for its elaboration order.
      evalTactic <| ← `(tactic| refine without_cdot(congr($(⟨pattern⟩)) : $gStx))

end Mathlib.Tactic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrM/Variantb7188bf1b7527aba194770a2623766b973c0bf89a392af91435fd8f93eb3e0d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrM/Variantb7188bf1b7527aba194770a2623766b973c0bf89a392af91435fd8f93eb3e0d4.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0548eed689e172fbb207765054e2af57e8bd75af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
