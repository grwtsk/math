# passPipeline

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:403235bff4a33796b9ab5a2d456e45bbe9560670a39e234c2e6879d3b36d6114",
  "kind": "def",
  "lexical_name": "passPipeline",
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
  "slug": "passpipeline--a82418b389786ed4e519cb35",
  "source": {
    "blob": "5e9d6fab02fc18ea83ffbb7dc4d63fc82539cb8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 32,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantb95f4a1610a53f7dc8edc4e21ec9ddb8a7b1274a15f2c6ff9d76f8c3e738dadc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a82418b389786ed4e519cb353ce8c88811f05221d4f20726b777a1e8245110a6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantb95f4a1610a53f7dc8edc4e21ec9ddb8a7b1274a15f2c6ff9d76f8c3e738dadc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:403235bff4a33796b9ab5a2d456e45bbe9560670a39e234c2e6879d3b36d6114`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def passPipeline : PreProcessM (List Pass) := do
  let mut passPipeline := [rewriteRulesPass]
  let cfg ← PreProcessM.getConfig

  if cfg.acNf then
    passPipeline := passPipeline ++ [bvAcNormalizePass]

  if cfg.embeddedConstraintSubst && cfg.andFlattening then
    passPipeline := passPipeline ++ [andFlatteningPass]

  if cfg.embeddedConstraintSubst then
    passPipeline := passPipeline ++ [embeddedConstraintPass]

  return passPipeline

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantb95f4a1610a53f7dc8edc4e21ec9ddb8a7b1274a15f2c6ff9d76f8c3e738dadc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantb95f4a1610a53f7dc8edc4e21ec9ddb8a7b1274a15f2c6ff9d76f8c3e738dadc.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e9d6fab02fc18ea83ffbb7dc4d63fc82539cb8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
