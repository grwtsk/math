# simpTarget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9d972df72d595952ae6b70c0cba17ebcefe2d0d18ca1a44f322feef2c7ef9e93",
  "kind": "def",
  "lexical_name": "simpTarget",
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
  "slug": "simptarget--1fb108f632ebec91f320d357",
  "source": {
    "blob": "b648566cb9eb4c6aad421ead0e849092fcf4cffa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 806,
    "line": 796,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant868a8f709f798aa9ab46c50b4ccfc11750269b5c4a02461db26e0fca9b938b7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1fb108f632ebec91f320d357fd246e61f6ae0919bcc4c9332b14721a50908516",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant868a8f709f798aa9ab46c50b4ccfc11750269b5c4a02461db26e0fca9b938b7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9d972df72d595952ae6b70c0cba17ebcefe2d0d18ca1a44f322feef2c7ef9e93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 796–806.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def simpTarget (mvarId : MVarId) (ctx : Simp.Context) (simprocs : SimprocsArray := #[]) (discharge? : Option Simp.Discharge := none)
    (mayCloseGoal := true) (stats : Stats := {}) : MetaM (Option MVarId × Stats) :=
  mvarId.withContext do
    mvarId.checkNotAssigned `simp
    simpTargetCore mvarId ctx simprocs discharge? mayCloseGoal stats

/--
Applies the result `r` for `type` (which is inhabited by `val`). Returns `none` if the goal was closed. Returns `some (val', type')`
otherwise, where `val' : type'` and `type'` is the simplified `type`.

This method assumes `mvarId` is not assigned, and we are already using `mvarId`s local context. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant868a8f709f798aa9ab46c50b4ccfc11750269b5c4a02461db26e0fca9b938b7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant868a8f709f798aa9ab46c50b4ccfc11750269b5c4a02461db26e0fca9b938b7b.lean#L796).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b648566cb9eb4c6aad421ead0e849092fcf4cffa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
