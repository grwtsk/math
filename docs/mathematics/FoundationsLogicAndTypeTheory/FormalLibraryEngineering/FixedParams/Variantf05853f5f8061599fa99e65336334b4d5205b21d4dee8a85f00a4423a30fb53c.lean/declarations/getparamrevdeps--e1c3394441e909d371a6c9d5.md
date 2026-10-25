# getParamRevDeps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c0f247f7928b2e3b018834672b6ab08a876948a72159e95d4f172748fd0c23de",
  "kind": "def",
  "lexical_name": "getParamRevDeps",
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
  "slug": "getparamrevdeps--e1c3394441e909d371a6c9d5",
  "source": {
    "blob": "afeecda5628ed5e7fd48e4a45c2eabe4757a8f96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 180,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedParams/Variantf05853f5f8061599fa99e65336334b4d5205b21d4dee8a85f00a4423a30fb53c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e1c3394441e909d371a6c9d5d5c91a18d0af6751f9b30e559569019bb40ae9ac",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedParams/Variantf05853f5f8061599fa99e65336334b4d5205b21d4dee8a85f00a4423a30fb53c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c0f247f7928b2e3b018834672b6ab08a876948a72159e95d4f172748fd0c23de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getParamRevDeps (value : Expr) : MetaM (Array (Array Nat)) := do
  lambdaTelescope value (cleanupAnnotations := true) fun xs _ => do
    let mut revDeps := #[]
    for h : i in *...xs.size do
      let mut deps := #[]
      for h : j in (i+1)...xs.size do
        if (← dependsOn (← inferType xs[j]) xs[i].fvarId!) then
          deps := deps.push j
      revDeps := revDeps.push deps
    pure revDeps

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedParams/Variantf05853f5f8061599fa99e65336334b4d5205b21d4dee8a85f00a4423a30fb53c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedParams/Variantf05853f5f8061599fa99e65336334b4d5205b21d4dee8a85f00a4423a30fb53c.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afeecda5628ed5e7fd48e4a45c2eabe4757a8f96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
