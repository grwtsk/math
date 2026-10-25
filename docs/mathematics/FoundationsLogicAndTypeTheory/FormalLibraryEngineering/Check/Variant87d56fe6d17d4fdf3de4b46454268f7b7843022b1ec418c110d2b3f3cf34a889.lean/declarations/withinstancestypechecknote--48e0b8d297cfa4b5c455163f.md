# withInstancesTypeCheckNote

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e4c76544ee442023fc01616d04514addb7539adfac8396045d36727f7fa0b8d3",
  "kind": "def",
  "lexical_name": "withInstancesTypeCheckNote",
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
  "slug": "withinstancestypechecknote--48e0b8d297cfa4b5c455163f",
  "source": {
    "blob": "139c054faa039d297522f6f79da2ea0e673560f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 372,
    "line": 356,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant87d56fe6d17d4fdf3de4b46454268f7b7843022b1ec418c110d2b3f3cf34a889.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:48e0b8d297cfa4b5c455163f80dddf3ad7adbe56491fb8faaf2f7209fa0664e0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant87d56fe6d17d4fdf3de4b46454268f7b7843022b1ec418c110d2b3f3cf34a889.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e4c76544ee442023fc01616d04514addb7539adfac8396045d36727f7fa0b8d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–372.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def withInstancesTypeCheckNote [MonadControlT MetaM m] [Monad m] (e : Expr) (x : m α) : m α := do
  let typeCheckNote := MessageData.ofLazyM (es := #[e]) do
    try
      check e .implicit
      return .nil
    catch e =>
      return MessageData.note m!"The target expression is not type-correct \
        under the `implicit` transparency level, which may have triggered the failure. \
        This is usually caused by unfolding of semireducible definitions in prior tactic steps. \
        Use `set_option linter.tacticCheckInstances true` to investigate the source of the issue.\n\
        Full error:\
        {indentD e.toMessageData}"
  Meta.mapError x (· ++ typeCheckNote)

/--
Return true if `e` is type correct.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant87d56fe6d17d4fdf3de4b46454268f7b7843022b1ec418c110d2b3f3cf34a889.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant87d56fe6d17d4fdf3de4b46454268f7b7843022b1ec418c110d2b3f3cf34a889.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `139c054faa039d297522f6f79da2ea0e673560f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
