# finiteScaleBoundedCorrectionSource

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7e0cbd29a458ae971227e61ac71c046a611fcce8d485593bda85b101d6e84323",
  "kind": "def",
  "lexical_name": "finiteScaleBoundedCorrectionSource",
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
  "slug": "finitescaleboundedcorrectionsource--fd72f3a14adf0f043e75b5a4",
  "source": {
    "blob": "550c2996050a172e536def77c9281c0ec5a0c964",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 94,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/RiemannWitnessFiniteScaleFilterResolution.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd72f3a14adf0f043e75b5a46673bd0f12ec2d43f421f3ab13fee81812217fdd",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/RiemannWitnessFiniteScaleFilterResolution.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7e0cbd29a458ae971227e61ac71c046a611fcce8d485593bda85b101d6e84323`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def finiteScaleBoundedCorrectionSource : ExternalRepositoryRef where
  repository := "grwtsk/formal-research"
  issue := some 324
  pullRequest := some 289
  commit := acceptedFormalResearchMain
  path := "FormalResearch/RiemannHypothesis/SourceCriticalDecayWork.lean"
  declaration :=
    "FormalResearch.RiemannHypothesis.SourceCriticalDecayWork.squareMinusDecayPairedWork_uniformly_bounded"
  evidenceNote :=
    "Accepted existential uniform absolute bound for the signed square-minus-decay correction."

/-- Exact open witness after critical-decay removal. No inhabitant is supplied. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/RiemannWitnessFiniteScaleFilterResolution.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/RiemannWitnessFiniteScaleFilterResolution.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `550c2996050a172e536def77c9281c0ec5a0c964` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
