# excluded_site_has_certificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4227b4e0-3a29-ff11-bb89-91688ee73bd8",
  "kind": "theorem",
  "lexical_name": "excluded_site_has_certificate",
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
  "slug": "excluded-site-has-certificate--8e28cb6ad22b0809dc4a9bb9",
  "source": {
    "blob": "17bbe6245649677aa2e16a6d02e067ffb4ea18fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 454,
    "line": 442,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/ReductiveSelectionTrace/Variant34edc21b807e87908350a79b4e759a1cbd72177dd2656624b519a4db784bf0f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e28cb6ad22b0809dc4a9bb90f1657ff4c38829597750fc1094e0ad10a7d9403",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/ReductiveSelectionTrace/Variant34edc21b807e87908350a79b4e759a1cbd72177dd2656624b519a4db784bf0f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4227b4e0-3a29-ff11-bb89-91688ee73bd8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 442–454.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem excluded_site_has_certificate
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (trace : ReductiveSiteSelectionTrace State decomposition objective)
    {result : ReductiveStageResult State decomposition objective}
    (_member : result ∈ trace.stageResults)
    {site : decomposition.Piece}
    (excluded : site ∈ result.excluded) :
    Nonempty (SiteExclusionCertificate objective result.assessedState site) :=
  result.exclusionEvidence site excluded

/-- RED-08: executed stage order is exactly configured list order. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/ReductiveSelectionTrace/Variant34edc21b807e87908350a79b4e759a1cbd72177dd2656624b519a4db784bf0f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/ReductiveSelectionTrace/Variant34edc21b807e87908350a79b4e759a1cbd72177dd2656624b519a4db784bf0f7.lean#L442).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17bbe6245649677aa2e16a6d02e067ffb4ea18fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
