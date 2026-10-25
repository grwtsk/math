# unfoldFVars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:829146c048b1a6a2b281724fd904f48fba0949e28c556d88afd718321a24b5ce",
  "kind": "def",
  "lexical_name": "unfoldFVars",
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
  "slug": "unfoldfvars--a3b6f4a7818e6a75f1d345d9",
  "source": {
    "blob": "d3b84c14745bf69917ef33bc0af71403a1e6fc08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 120,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqTransformations/Variante6cd5d277510a945132b5d942c25c8e2e28494446c11593a099d66fcbe38aaa7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a3b6f4a7818e6a75f1d345d9ef5661ed32c6d67176d52211f49586d63f46882a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqTransformations/Variante6cd5d277510a945132b5d942c25c8e2e28494446c11593a099d66fcbe38aaa7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:829146c048b1a6a2b281724fd904f48fba0949e28c556d88afd718321a24b5ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unfoldFVars (fvars : Array FVarId) (e : Expr) : MetaM Expr := do
  transform (usedLetOnly := true) e fun node => do
    match node with
    | .fvar fvarId =>
      if fvars.contains fvarId then
        if let some val ← fvarId.getValue? then
          return .visit (← instantiateMVars val)
        else
          return .continue
      else
        return .continue
    | _ => return .continue

/--
This tactic is subsumed by the `unfold` tactic.

`unfold_let x y z at loc` unfolds the local definitions `x`, `y`, and `z` at the given
location, which is known as "zeta reduction."
This also exists as a `conv`-mode tactic.

If no local definitions are given, then all local definitions are unfolded.
This variant also exists as the `conv`-mode tactic `zeta`.
-/
@[deprecated unfold (since := "2024-11-11")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqTransformations/Variante6cd5d277510a945132b5d942c25c8e2e28494446c11593a099d66fcbe38aaa7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqTransformations/Variante6cd5d277510a945132b5d942c25c8e2e28494446c11593a099d66fcbe38aaa7.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3b84c14745bf69917ef33bc0af71403a1e6fc08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
