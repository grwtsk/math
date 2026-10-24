# azureBearerCurlArgs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f0d41f46a2411dd5e36ca3a1b9fec80791e15b5a34acc12991cefaf7149e7dff",
  "kind": "def",
  "lexical_name": "azureBearerCurlArgs",
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
  "slug": "azurebearercurlargs--99f372d1d0f7611ec6da636f",
  "source": {
    "blob": "361fdc98cfd2ecd00c3b51b520adc8c23f533143",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 62,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Azure/Varianta59792e0a495820c80c2390aa8918dce2c72b8167ca0f08dd1ce623f0e35d112.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:99f372d1d0f7611ec6da636fca35e003a5b192bc1e780b2ba4102a625ab5244c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Azure/Varianta59792e0a495820c80c2390aa8918dce2c72b8167ca0f08dd1ce623f0e35d112.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f0d41f46a2411dd5e36ca3a1b9fec80791e15b5a34acc12991cefaf7149e7dff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def azureBearerCurlArgs (token : String) : IO (Array String) := do
  return #["-H", "x-ms-blob-type: BlockBlob",
    "-H", azureBearerApiVersionHeader, "-H", ← getAzureDateHeader,
    "--oauth2-bearer", token]

/--
The azure upload credential, from the raw environment value: the OAuth
bearer token `MATHLIB_CACHE_AZURE_BEARER_TOKEN` (`bearer?`).

Pure so the policy is testable; `getAzureAuth` wires the environment in.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Azure/Varianta59792e0a495820c80c2390aa8918dce2c72b8167ca0f08dd1ce623f0e35d112.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Azure/Varianta59792e0a495820c80c2390aa8918dce2c72b8167ca0f08dd1ce623f0e35d112.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `361fdc98cfd2ecd00c3b51b520adc8c23f533143` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
