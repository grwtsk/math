# peelUnbounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fba7736e6ca9bd211318f8cf008d7db2bffcc145953d63d59aab99aab9e44767",
  "kind": "def",
  "lexical_name": "peelUnbounded",
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
  "slug": "peelunbounded--94c01345b9fc233d4ef40e86",
  "source": {
    "blob": "48e9ab8e60ec10b523b12c60d53d3d0b37ec9ae9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 208,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant0ad6cd45b246d57523650fae4f0d9cf2a35753b9739848f94d5710be03e2196e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:94c01345b9fc233d4ef40e8686f655403f8bc58a77c8962f6d79566570665169",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant0ad6cd45b246d57523650fae4f0d9cf2a35753b9739848f94d5710be03e2196e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fba7736e6ca9bd211318f8cf008d7db2bffcc145953d63d59aab99aab9e44767`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def peelUnbounded (e : Expr) (n? : Option Name) (unfold : Bool := false) :
    TacticM Bool := do
  let fvarId? ← observing? <| liftMetaTacticAux (peelCore · e none (n?.getD `this) unfold)
  if let some fvarId := fvarId? then
    let peeled ← peelUnbounded (.fvar fvarId) n?
    if peeled then
      if let some mvarId ← observing? do (← getMainGoal).clear fvarId then
        replaceMainGoal [mvarId]
    return true
  else
    return false

/-- Peel off a single quantifier from an `↔`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant0ad6cd45b246d57523650fae4f0d9cf2a35753b9739848f94d5710be03e2196e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant0ad6cd45b246d57523650fae4f0d9cf2a35753b9739848f94d5710be03e2196e.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48e9ab8e60ec10b523b12c60d53d3d0b37ec9ae9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
