# updateGraphWithNlt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e03b070e43106af598548d96871018935a7d065d3c506cf29a38af0c54aa6b97",
  "kind": "def",
  "lexical_name": "updateGraphWithNlt",
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
  "slug": "updategraphwithnlt--b8add6362e464bcc16226812",
  "source": {
    "blob": "9952fb17cf46af71f294509f86aac79b03b6506f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 168,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant5c9a139739e57461302edbf9391bb57995abd331a2e0aa385f8242a7b78c933d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b8add6362e464bcc1622681233625b53a1679ae2526f78a40ad8748d3643e0c4",
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

Occurrence: `declaration:e03b070e43106af598548d96871018935a7d065d3c506cf29a38af0c54aa6b97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def updateGraphWithNlt (g : Graph) (idxToAtom : Std.HashMap Nat Expr)
    (facts : Array AtomicFact) : MetaM Graph := do
  let nltFacts := facts.filter fun fact => match fact with | .nlt _ _ _ => true | _ => false
  let mut usedNltFacts : Vector Bool _ := .replicate nltFacts.size false
  let mut g := g
  while true do
    let mut changed : Bool := false
    for h : i in [:nltFacts.size] do
      if usedNltFacts[i] then
        continue
      let .nlt lhs rhs proof := nltFacts[i] | throwError "Bug: Non-nlt fact in nltFacts."
      let .some pf ← g.buildTransitiveLeProof idxToAtom lhs rhs | continue
      g := g.addEdge ⟨rhs, lhs, ← mkAppM ``le_of_not_lt_le #[proof, pf]⟩
      changed := true
      usedNltFacts := usedNltFacts.set i true
    if !changed then
      break
  return g

/-- Supported order types: linear, partial, and preorder. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant5c9a139739e57461302edbf9391bb57995abd331a2e0aa385f8242a7b78c933d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant5c9a139739e57461302edbf9391bb57995abd331a2e0aa385f8242a7b78c933d.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9952fb17cf46af71f294509f86aac79b03b6506f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
