# guardTheorem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c04ddda4761f515b786a2d329d42e801d5780e71b64356dd9cdd7b687b07f4f0",
  "kind": "def",
  "lexical_name": "guardTheorem",
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
  "slug": "guardtheorem--b0b93895d39dce6a6cd9ebec",
  "source": {
    "blob": "81533419894a6f04000e843ba9a869ee5f5fe53c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 20,
    "line": 15,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TheoremProjectionContractProbe/Variante84bf12fea23d41034f100699010bb1a7b0d569786bd80406379906fe4108372.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b0b93895d39dce6a6cd9ebec09f81be6ce8a0f395da849621eea857c4cb97cec",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TheoremProjectionContractProbe/Variante84bf12fea23d41034f100699010bb1a7b0d569786bd80406379906fe4108372.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c04ddda4761f515b786a2d329d42e801d5780e71b64356dd9cdd7b687b07f4f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–20.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def guardTheorem (ci : ConstantInfo) : IO Unit := do
  let .thmInfo v := ci | throw <| IO.userError "THEOREM_PROJECTION_VARIANT_REQUIRED"
  if v.levelParams.length > 64 || v.all.length > 64 then
    throw <| IO.userError "THEOREM_PROJECTION_NAME_ARRAY_LIMIT_64"
  LeanImportedContracts.guardNames (#[v.name] ++ v.levelParams.toArray ++ v.all.toArray)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TheoremProjectionContractProbe/Variante84bf12fea23d41034f100699010bb1a7b0d569786bd80406379906fe4108372.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TheoremProjectionContractProbe/Variante84bf12fea23d41034f100699010bb1a7b0d569786bd80406379906fe4108372.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81533419894a6f04000e843ba9a869ee5f5fe53c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
