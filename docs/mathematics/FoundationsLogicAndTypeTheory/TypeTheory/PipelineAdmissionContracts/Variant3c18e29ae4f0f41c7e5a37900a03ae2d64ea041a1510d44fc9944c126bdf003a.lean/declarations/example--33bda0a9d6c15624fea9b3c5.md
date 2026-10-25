# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:29641e43c1590d3d75e8fb928a49294f209e1e04acdab7dd940b9455dab2316a",
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
  "slug": "example--33bda0a9d6c15624fea9b3c5",
  "source": {
    "blob": "feb733ebc6d3b363d9dbab9230cb293013b2bed2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 489,
    "line": 480,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/PipelineAdmissionContracts/Variant3c18e29ae4f0f41c7e5a37900a03ae2d64ea041a1510d44fc9944c126bdf003a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:33bda0a9d6c15624fea9b3c5b43af73898d620e0f0a96e86f0ba50865d01979a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/PipelineAdmissionContracts/Variant3c18e29ae4f0f41c7e5a37900a03ae2d64ea041a1510d44fc9944c126bdf003a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:29641e43c1590d3d75e8fb928a49294f209e1e04acdab7dd940b9455dab2316a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 480–489.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (capture : Capture) (certificate : RustCertificate)
    (maps : CanonicalFileMaps capture) (checked : admissionCheck capture = true)
    (successful : FiniteSourceContract (frozen capture) certificate) :
    ∃ ordered,
      derive capture.planLabel capture.objects (readSets (frozen capture)) (frozen capture).raw
        (frozen capture).prepared capture.placeholders capture.empty ordered =
          some ⟨capture.planLabel, capture.objects, readSets (frozen capture),
            ⟨projectedEntries (frozen capture) certificate, projectedOutputs certificate⟩⟩ :=
  capture_successful_producer_has_lean_execution maps checked successful

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/PipelineAdmissionContracts/Variant3c18e29ae4f0f41c7e5a37900a03ae2d64ea041a1510d44fc9944c126bdf003a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/PipelineAdmissionContracts/Variant3c18e29ae4f0f41c7e5a37900a03ae2d64ea041a1510d44fc9944c126bdf003a.lean#L480).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `feb733ebc6d3b363d9dbab9230cb293013b2bed2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
