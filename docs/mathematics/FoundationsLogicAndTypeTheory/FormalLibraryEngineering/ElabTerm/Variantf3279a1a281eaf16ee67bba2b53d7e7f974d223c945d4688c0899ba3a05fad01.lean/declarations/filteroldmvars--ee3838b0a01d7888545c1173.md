# filterOldMVars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bc6726710dcf529ae761847694dcdb60e2fec312d61bffb1e3a1da16451947b2",
  "kind": "def",
  "lexical_name": "filterOldMVars",
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
  "slug": "filteroldmvars--ee3838b0a01d7888545c1173",
  "source": {
    "blob": "50169e2c8356c5fdf3ce285786d4c8efcb85f718",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 74,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElabTerm/Variantf3279a1a281eaf16ee67bba2b53d7e7f974d223c945d4688c0899ba3a05fad01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee3838b0a01d7888545c1173d29116b92958cc299dc00e1ecec054d0a787b0af",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElabTerm/Variantf3279a1a281eaf16ee67bba2b53d7e7f974d223c945d4688c0899ba3a05fad01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bc6726710dcf529ae761847694dcdb60e2fec312d61bffb1e3a1da16451947b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def filterOldMVars (mvarIds : Array MVarId) (mvarCounterSaved : Nat) : MetaM (Array MVarId) := do
  let mctx ← getMCtx
  return mvarIds.filter fun mvarId => (mctx.getDecl mvarId |>.index) >= mvarCounterSaved

/--
Try to close main goal using `x target tag`, where `target` is the type of the main goal and `tag` is its user name.

If `checkNewUnassigned` is true, then throws an error if the resulting value has metavariables that were created during the execution of `x`.
If it is false, then it is the responsibility of `x` to add such metavariables to the goal list.

During the execution of `x`:
* The local context is that of the main goal.
* The goal list has the main goal removed.
* It is allowable to modify the goal list, for example with `Lean.Elab.Tactic.pushGoals`.

On failure, the main goal remains at the front of the goal list.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElabTerm/Variantf3279a1a281eaf16ee67bba2b53d7e7f974d223c945d4688c0899ba3a05fad01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElabTerm/Variantf3279a1a281eaf16ee67bba2b53d7e7f974d223c945d4688c0899ba3a05fad01.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50169e2c8356c5fdf3ce285786d4c8efcb85f718` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
