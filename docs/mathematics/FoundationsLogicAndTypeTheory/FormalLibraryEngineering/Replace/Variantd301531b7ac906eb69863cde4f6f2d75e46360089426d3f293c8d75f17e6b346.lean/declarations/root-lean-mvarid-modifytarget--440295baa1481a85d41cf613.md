# _root_.Lean.MVarId.modifyTarget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4e8b0aa427b43e8f37088c0d84f5f27cd6c10e19492faabd3d820d6605be2cdc",
  "kind": "def",
  "lexical_name": "_root_.Lean.MVarId.modifyTarget",
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
  "slug": "root-lean-mvarid-modifytarget--440295baa1481a85d41cf613",
  "source": {
    "blob": "2a118efceedfd55d88e1ae50821bc2d0ba8ff1da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 229,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replace/Variantd301531b7ac906eb69863cde4f6f2d75e46360089426d3f293c8d75f17e6b346.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:440295baa1481a85d41cf613a427511163f0b5e25ade350aa35c24625043b8e0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replace/Variantd301531b7ac906eb69863cde4f6f2d75e46360089426d3f293c8d75f17e6b346.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4e8b0aa427b43e8f37088c0d84f5f27cd6c10e19492faabd3d820d6605be2cdc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.Lean.MVarId.modifyTarget (mvarId : MVarId) (f : Expr → MetaM Expr) : MetaM MVarId := do
  mvarId.withContext do
    mvarId.checkNotAssigned `modifyTarget
    mvarId.change (← f (← mvarId.getType)) (checkDefEq := false)

/--
Modify `mvarId` target type left-hand-side using `f`.
Throw an error if target type is not an equality.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replace/Variantd301531b7ac906eb69863cde4f6f2d75e46360089426d3f293c8d75f17e6b346.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replace/Variantd301531b7ac906eb69863cde4f6f2d75e46360089426d3f293c8d75f17e6b346.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a118efceedfd55d88e1ae50821bc2d0ba8ff1da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
