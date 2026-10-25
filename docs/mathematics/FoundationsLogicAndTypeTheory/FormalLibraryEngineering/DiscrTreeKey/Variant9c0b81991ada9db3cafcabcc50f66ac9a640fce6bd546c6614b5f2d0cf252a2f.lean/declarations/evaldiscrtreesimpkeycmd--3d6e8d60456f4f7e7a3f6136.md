# evalDiscrTreeSimpKeyCmd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:88bf2dd333174b5365c53bdd5a697a957d8fce5b90a0f0623113710cfbc23b87",
  "kind": "def",
  "lexical_name": "evalDiscrTreeSimpKeyCmd",
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
  "slug": "evaldiscrtreesimpkeycmd--3d6e8d60456f4f7e7a3f6136",
  "source": {
    "blob": "ce24c2684b0a6fd7c14e1666452bbcc0395ec2a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 66,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTreeKey/Variant9c0b81991ada9db3cafcabcc50f66ac9a640fce6bd546c6614b5f2d0cf252a2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3d6e8d60456f4f7e7a3f61361db64da3dd6be7ac9affb4f9a3c50864bfcc529a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTreeKey/Variant9c0b81991ada9db3cafcabcc50f66ac9a640fce6bd546c6614b5f2d0cf252a2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:88bf2dd333174b5365c53bdd5a697a957d8fce5b90a0f0623113710cfbc23b87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalDiscrTreeSimpKeyCmd : CommandElab := fun stx => do
  Command.liftTermElabM <| do
    match stx with
    | `(command| #discr_tree_simp_key $t:term) => do
      let type ← getType t
      logInfo (← keysAsPattern <| ← mkKey type true)
    | _                        => Elab.throwUnsupportedSyntax

end Lean.Elab.Tactic.DiscrTreeKey
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTreeKey/Variant9c0b81991ada9db3cafcabcc50f66ac9a640fce6bd546c6614b5f2d0cf252a2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTreeKey/Variant9c0b81991ada9db3cafcabcc50f66ac9a640fce6bd546c6614b5f2d0cf252a2f.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce24c2684b0a6fd7c14e1666452bbcc0395ec2a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
