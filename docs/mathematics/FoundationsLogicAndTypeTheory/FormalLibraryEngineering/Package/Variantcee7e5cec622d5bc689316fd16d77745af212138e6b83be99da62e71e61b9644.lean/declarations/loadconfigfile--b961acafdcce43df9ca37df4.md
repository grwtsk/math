# loadConfigFile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:19a8be992ffeaa30ae80b1736d856ef2ea243d72cc3dd34778d12e3072c28e6a",
  "kind": "def",
  "lexical_name": "loadConfigFile",
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
  "slug": "loadconfigfile--b961acafdcce43df9ca37df4",
  "source": {
    "blob": "266ec3b5b04775b349c727f8602a568fdee5ce00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 137,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantcee7e5cec622d5bc689316fd16d77745af212138e6b83be99da62e71e61b9644.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b961acafdcce43df9ca37df48d03c7d23bf1f6cfb6f09fa0e444cc2577556ce7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantcee7e5cec622d5bc689316fd16d77745af212138e6b83be99da62e71e61b9644.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:19a8be992ffeaa30ae80b1736d856ef2ea243d72cc3dd34778d12e3072c28e6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def loadConfigFile (cfg : LoadConfig) (h : cfg.configLang?.isSome) : LogIO LakefileConfig := do
  match cfg.configLang?.get h with
  | .lean => loadLeanConfig cfg
  | .toml => loadTomlConfig cfg

/-- Loads a Lake package as a single independent object (without dependencies). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantcee7e5cec622d5bc689316fd16d77745af212138e6b83be99da62e71e61b9644.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantcee7e5cec622d5bc689316fd16d77745af212138e6b83be99da62e71e61b9644.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `266ec3b5b04775b349c727f8602a568fdee5ce00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
