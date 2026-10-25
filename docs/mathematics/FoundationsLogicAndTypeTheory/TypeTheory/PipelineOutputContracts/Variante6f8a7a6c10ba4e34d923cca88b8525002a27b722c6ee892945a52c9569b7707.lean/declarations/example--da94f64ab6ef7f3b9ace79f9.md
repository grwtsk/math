# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eca65ac79b4690232c51342d5821ab435bcd791159584958e0fc92c7de636c74",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--da94f64ab6ef7f3b9ace79f9",
  "source": {
    "blob": "21dc7c5a45d763210b23d14d2a404de0f6a7c4fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 414,
    "line": 405,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/PipelineOutputContracts/Variante6f8a7a6c10ba4e34d923cca88b8525002a27b722c6ee892945a52c9569b7707.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da94f64ab6ef7f3b9ace79f9cb81d05ec6bb86afcbba57024fe09d0cdb4d107c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/PipelineOutputContracts/Variante6f8a7a6c10ba4e34d923cca88b8525002a27b722c6ee892945a52c9569b7707.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eca65ac79b4690232c51342d5821ab435bcd791159584958e0fc92c7de636c74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 405–414.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (rawPlan rawExpected rawObserved : FrontendCorrespondence.Raw)
    (plan expected observed : FrontendCorrespondence.Value)
    (input : Frozen) (certificate : RustCertificate)
    (planDecoded : FrontendCorrespondence.decode rawPlan = some plan)
    (expectedDecoded : FrontendCorrespondence.decode rawExpected = some expected)
    (observedDecoded : FrontendCorrespondence.decode rawObserved = some observed)
    (projected : Json.project plan expected observed = some (input, certificate)) :
    Json.rawProject rawPlan rawExpected rawObserved = some (input, certificate) :=
  Json.rawProject_exact planDecoded expectedDecoded observedDecoded projected

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/PipelineOutputContracts/Variante6f8a7a6c10ba4e34d923cca88b8525002a27b722c6ee892945a52c9569b7707.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/PipelineOutputContracts/Variante6f8a7a6c10ba4e34d923cca88b8525002a27b722c6ee892945a52c9569b7707.lean#L405).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21dc7c5a45d763210b23d14d2a404de0f6a7c4fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
