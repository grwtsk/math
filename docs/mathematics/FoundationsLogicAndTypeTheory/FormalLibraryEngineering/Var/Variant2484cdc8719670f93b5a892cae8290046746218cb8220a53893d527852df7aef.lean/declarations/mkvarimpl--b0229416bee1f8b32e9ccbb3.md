# mkVarImpl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:87305d2bc491b3815cad221df72b3cbb0ba424e0a48501d615e0bf27f87293fd",
  "kind": "def",
  "lexical_name": "mkVarImpl",
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
  "slug": "mkvarimpl--b0229416bee1f8b32e9ccbb3",
  "source": {
    "blob": "e1c281796c9bcf0ab7ed62211b4475b7568fbc5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 69,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Var/Variant2484cdc8719670f93b5a892cae8290046746218cb8220a53893d527852df7aef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b0229416bee1f8b32e9ccbb344fc549bc104aa5fc862cbf6be805d33b22b5dff",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Var/Variant2484cdc8719670f93b5a892cae8290046746218cb8220a53893d527852df7aef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:87305d2bc491b3815cad221df72b3cbb0ba424e0a48501d615e0bf27f87293fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkVarImpl (expr : Expr) : GoalM Var := do
  if let some var := (← get').varMap.find? { expr } then
    return var
  let var : Var := (← get').vars.size
  trace[grind.debug.lia.internalize] "{expr} ↦ #{var}"
  modify' fun s => { s with
    vars      := s.vars.push expr
    varMap    := s.varMap.insert { expr } var
    dvds      := s.dvds.push none
    lowers    := s.lowers.push {}
    uppers    := s.uppers.push {}
    diseqs    := s.diseqs.push {}
    occurs    := s.occurs.push {}
    elimEqs   := s.elimEqs.push none
  }
  cutsatExt.markTerm expr
  assertNatCast expr var
  assertNonneg expr var
  assertToIntBounds expr var
  if (← isNonlinearTerm expr) then
    registerNonlinearOccsAt expr var
  return var

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Var/Variant2484cdc8719670f93b5a892cae8290046746218cb8220a53893d527852df7aef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Var/Variant2484cdc8719670f93b5a892cae8290046746218cb8220a53893d527852df7aef.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1c281796c9bcf0ab7ed62211b4475b7568fbc5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
