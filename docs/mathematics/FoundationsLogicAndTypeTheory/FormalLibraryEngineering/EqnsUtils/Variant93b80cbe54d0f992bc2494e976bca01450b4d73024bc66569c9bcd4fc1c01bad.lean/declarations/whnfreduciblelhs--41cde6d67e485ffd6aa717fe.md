# whnfReducibleLHS?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e4964ccad0415786064c774407332ab0b68a96346a79e1967b76692afb9d2c29",
  "kind": "def",
  "lexical_name": "whnfReducibleLHS?",
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
  "slug": "whnfreduciblelhs--41cde6d67e485ffd6aa717fe",
  "source": {
    "blob": "675d677d56430a37fe395b3b12264e4e8ca317b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 59,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqnsUtils/Variant93b80cbe54d0f992bc2494e976bca01450b4d73024bc66569c9bcd4fc1c01bad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:41cde6d67e485ffd6aa717feca11c26243b313a1be33740e6eee0773d7665878",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqnsUtils/Variant93b80cbe54d0f992bc2494e976bca01450b4d73024bc66569c9bcd4fc1c01bad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e4964ccad0415786064c774407332ab0b68a96346a79e1967b76692afb9d2c29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def whnfReducibleLHS? (mvarId : MVarId) : MetaM (Option MVarId) := mvarId.withContext do
  let target ← mvarId.getType'
  let some (_, lhs, rhs) := target.eq? | return none
  let lhs' ← whnfAux lhs
  if lhs' != lhs then
    return some (← mvarId.replaceTargetDefEq (← mkEq lhs' rhs))
  else
    return none

end Lean.Elab.Eqns
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqnsUtils/Variant93b80cbe54d0f992bc2494e976bca01450b4d73024bc66569c9bcd4fc1c01bad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqnsUtils/Variant93b80cbe54d0f992bc2494e976bca01450b4d73024bc66569c9bcd4fc1c01bad.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `675d677d56430a37fe395b3b12264e4e8ca317b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
