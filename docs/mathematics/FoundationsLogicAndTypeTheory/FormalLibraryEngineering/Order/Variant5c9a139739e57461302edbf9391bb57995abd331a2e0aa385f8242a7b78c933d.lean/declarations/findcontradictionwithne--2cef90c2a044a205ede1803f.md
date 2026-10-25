# findContradictionWithNe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0e7eb5edd50f55ed32bc4b316c4e3b8d289ba184e2cd60197e78e2c3e34dfb64",
  "kind": "def",
  "lexical_name": "findContradictionWithNe",
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
  "slug": "findcontradictionwithne--2cef90c2a044a205ede1803f",
  "source": {
    "blob": "9952fb17cf46af71f294509f86aac79b03b6506f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 142,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant5c9a139739e57461302edbf9391bb57995abd331a2e0aa385f8242a7b78c933d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2cef90c2a044a205ede1803fd5897c224236a9e7b2116e771f2219704d9fde0c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant5c9a139739e57461302edbf9391bb57995abd331a2e0aa385f8242a7b78c933d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0e7eb5edd50f55ed32bc4b316c4e3b8d289ba184e2cd60197e78e2c3e34dfb64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def findContradictionWithNe (graph : Graph) (idxToAtom : Std.HashMap Nat Expr)
    (facts : Array AtomicFact) : MetaM <| Option Expr := do
  let scc := graph.findSCCs
  for fact in facts do
    let .ne lhs rhs neProof := fact | continue
    if scc[lhs]! != scc[rhs]! then
      continue
    let .some pf1 ← graph.buildTransitiveLeProof idxToAtom lhs rhs
      | throwError "Bug: Cannot find path in strongly connected component"
    let .some pf2 ← graph.buildTransitiveLeProof idxToAtom rhs lhs
      | throwError "Bug: Cannot find path in strongly connected component"
    let pf3 ← mkAppM ``le_antisymm #[pf1, pf2]
    return .some <| mkApp neProof pf3
  return .none

/-- Using the `≤`-graph `g`, find a contradiction with some `≰`-fact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant5c9a139739e57461302edbf9391bb57995abd331a2e0aa385f8242a7b78c933d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant5c9a139739e57461302edbf9391bb57995abd331a2e0aa385f8242a7b78c933d.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9952fb17cf46af71f294509f86aac79b03b6506f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
