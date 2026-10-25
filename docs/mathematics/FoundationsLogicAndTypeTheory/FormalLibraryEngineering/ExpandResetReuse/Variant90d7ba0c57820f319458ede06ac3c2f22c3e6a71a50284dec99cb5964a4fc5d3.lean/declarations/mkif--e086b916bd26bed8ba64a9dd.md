# mkIf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a0b8dca5a83f1d3b26b8388b2dd7f65ce947c4f09902560c8b3a02af4f80383e",
  "kind": "def",
  "lexical_name": "mkIf",
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
  "slug": "mkif--e086b916bd26bed8ba64a9dd",
  "source": {
    "blob": "de4ab29caa792acf3b7bf0a2e1c601672f6463fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 125,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExpandResetReuse/Variant90d7ba0c57820f319458ede06ac3c2f22c3e6a71a50284dec99cb5964a4fc5d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e086b916bd26bed8ba64a9dd330c1de612f69d2bc7453ae2a7b1554ccb7fa6cb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExpandResetReuse/Variant90d7ba0c57820f319458ede06ac3c2f22c3e6a71a50284dec99cb5964a4fc5d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a0b8dca5a83f1d3b26b8388b2dd7f65ce947c4f09902560c8b3a02af4f80383e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkIf (discr : FVarId) (discrType : Expr) (resultType : Expr) (t e : Code .impure) :
    CompilerM (Code .impure) := do
  return .cases <| .mk discrType.getAppFn.constName! resultType discr #[
    .ctorAlt { name := ``Bool.false, cidx := 0, size := 0, usize := 0, ssize := 0 } e,
    .ctorAlt { name := ``Bool.true, cidx := 1, size := 0, usize := 0, ssize := 0 } t,
  ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExpandResetReuse/Variant90d7ba0c57820f319458ede06ac3c2f22c3e6a71a50284dec99cb5964a4fc5d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExpandResetReuse/Variant90d7ba0c57820f319458ede06ac3c2f22c3e6a71a50284dec99cb5964a4fc5d3.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de4ab29caa792acf3b7bf0a2e1c601672f6463fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
