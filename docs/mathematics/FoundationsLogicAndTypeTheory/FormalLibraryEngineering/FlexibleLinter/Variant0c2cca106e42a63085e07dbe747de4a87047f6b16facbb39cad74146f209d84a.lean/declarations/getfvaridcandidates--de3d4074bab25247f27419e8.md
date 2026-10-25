# getFVarIdCandidates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eda86ff538fc27fcea1e7a8fa9990d00dadc5d17eaf5e3708eb9858474fc91d7",
  "kind": "def",
  "lexical_name": "getFVarIdCandidates",
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
  "slug": "getfvaridcandidates--de3d4074bab25247f27419e8",
  "source": {
    "blob": "1178328c5f20b71eb5fb9ad5a4fc48fa30fe3f4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 351,
    "line": 334,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlexibleLinter/Variant0c2cca106e42a63085e07dbe747de4a87047f6b16facbb39cad74146f209d84a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de3d4074bab25247f27419e8760b93898858baad45bd92b1c63a6455ca5f0bb6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlexibleLinter/Variant0c2cca106e42a63085e07dbe747de4a87047f6b16facbb39cad74146f209d84a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eda86ff538fc27fcea1e7a8fa9990d00dadc5d17eaf5e3708eb9858474fc91d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–351.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getFVarIdCandidates (fv : FVarId) (name : Name) (lctx : LocalContext) : Array FVarId :=
  #[lctx.find? fv, lctx.findFromUserName? name].reduceOption.map (·.fvarId)

/-!
Tactics often change the name of the current `MVarId`, as well as the names of the `FVarId`s
appearing in their local contexts.
The function `reallyPersist` makes an attempt at "tracking" pairs `(fvar, mvar)` across a
simultaneous change represented by an "old" list of `MVarId`s and the corresponding
`MetavarContext` and a new one.

This arises in the context of the information encoded in the `InfoTree`s when processing a
tactic proof.
-/

/-- `persistFVars` is one step in persisting: track a single `FVarId` between two `LocalContext`s.
If an `FVarId` with the same unique name exists in the new context, use it.
Otherwise, if an `FVarId` with the same `userName` exists in the new context, use it.
If both of these fail, return `default` (i.e. "fail"). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlexibleLinter/Variant0c2cca106e42a63085e07dbe747de4a87047f6b16facbb39cad74146f209d84a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlexibleLinter/Variant0c2cca106e42a63085e07dbe747de4a87047f6b16facbb39cad74146f209d84a.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1178328c5f20b71eb5fb9ad5a4fc48fa30fe3f4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
