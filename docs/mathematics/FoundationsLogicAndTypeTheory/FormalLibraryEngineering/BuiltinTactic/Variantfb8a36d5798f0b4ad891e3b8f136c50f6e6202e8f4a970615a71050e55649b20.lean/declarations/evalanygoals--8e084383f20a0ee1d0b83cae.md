# evalAnyGoals

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a4ab3e663599d059b2b14eff3e16a9f3aecf20474ed454d8fac07ef45936f918",
  "kind": "def",
  "lexical_name": "evalAnyGoals",
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
  "slug": "evalanygoals--8e084383f20a0ee1d0b83cae",
  "source": {
    "blob": "33b1ad92faeeedea2580823a3a9656fcec893769",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 255,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8e084383f20a0ee1d0b83cae0a300c37cbd042bfa9c0561c9a8214978ada2ef8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a4ab3e663599d059b2b14eff3e16a9f3aecf20474ed454d8fac07ef45936f918`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_tactic Parser.Tactic.anyGoals] def evalAnyGoals : Tactic := fun stx => do
  let mvarIds ← getGoals
  let mut mvarIdsNew := #[]
  let mut succeeded := false
  for mvarId in mvarIds do
    unless (← mvarId.isAssigned) do
      setGoals [mvarId]
      try
        evalTactic stx[1]
        mvarIdsNew := mvarIdsNew ++ (← getUnsolvedGoals)
        succeeded := true
      catch _ =>
        mvarIdsNew := mvarIdsNew.push mvarId
  unless succeeded do
    throwError "Tactic failed on all goals:{indentD stx[1]}"
  setGoals mvarIdsNew.toList

@[builtin_tactic tacticSeq, builtin_incremental]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33b1ad92faeeedea2580823a3a9656fcec893769` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
