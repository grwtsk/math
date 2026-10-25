# peelUnbounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a2120cf85645889aca89fd89c53ba5116759a3e850c0636ab2a30790253e4bc7",
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
  "slug": "peelunbounded--dcf142c050e11e37baf18ce0",
  "source": {
    "blob": "6139a947686426ee58ff5cf3e6f4d6c54b05a205",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 191,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant06bc03ea28579ffc66fa22954d33526bdd7b6b2bec20e5b3cc5b315ba13bb092.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dcf142c050e11e37baf18ce06cdf2ff33eb8153b1e3606854a2a4b71c7a7cd71",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant06bc03ea28579ffc66fa22954d33526bdd7b6b2bec20e5b3cc5b315ba13bb092.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a2120cf85645889aca89fd89c53ba5116759a3e850c0636ab2a30790253e4bc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–203.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant06bc03ea28579ffc66fa22954d33526bdd7b6b2bec20e5b3cc5b315ba13bb092.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant06bc03ea28579ffc66fa22954d33526bdd7b6b2bec20e5b3cc5b315ba13bb092.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6139a947686426ee58ff5cf3e6f4d6c54b05a205` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
