# findModuleOf?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:39fda17ae2c90c94b6608553846e914459c38f5fb84758960f09e65030c3a4e2",
  "kind": "def",
  "lexical_name": "findModuleOf?",
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
  "slug": "findmoduleof--fc110cae9ffda3f2070e6c68",
  "source": {
    "blob": "a24c1835519b766a8a849025de1de67d4a260e4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 200,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variantc73a7feaee236f9cb87277c15ff524f8304b5f080a17f0fd590264dcf02405bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fc110cae9ffda3f2070e6c6895a1d2dd6cbbaa6c35cd2469009454e4138a9c2b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variantc73a7feaee236f9cb87277c15ff524f8304b5f080a17f0fd590264dcf02405bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:39fda17ae2c90c94b6608553846e914459c38f5fb84758960f09e65030c3a4e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def findModuleOf? [Monad m] [MonadEnv m] [MonadError m] (declName : Name) : m (Option Name) := do
  discard <| getConstInfo declName -- ensure declaration exists
  match (← getEnv).getModuleIdxFor? declName with
  | none        => return none
  | some modIdx => return some ((← getEnv).allImportedModuleNames[modIdx.toNat]!)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variantc73a7feaee236f9cb87277c15ff524f8304b5f080a17f0fd590264dcf02405bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variantc73a7feaee236f9cb87277c15ff524f8304b5f080a17f0fd590264dcf02405bc.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a24c1835519b766a8a849025de1de67d4a260e4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
