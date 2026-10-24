# secondMoment_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7dd23a89-216c-683a-8259-003508cdf064",
  "kind": "theorem",
  "lexical_name": "secondMoment_integrable",
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
  "slug": "secondmoment-integrable--146feab95790afd8fc7538b7",
  "source": {
    "blob": "bf9c3249092c5f79cdbaa8f04b9682801c5a48e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 90,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt06/Varianta1754d31e705457b56bc6468f1147281a23932a2cca8bc7bdcc0196d8fd3d855.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:146feab95790afd8fc7538b7f6e91aaf46a5dd684194376b0e987149c9d00b2f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceAttempt06/Varianta1754d31e705457b56bc6468f1147281a23932a2cca8bc7bdcc0196d8fd3d855.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7dd23a89-216c-683a-8259-003508cdf064`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem secondMoment_integrable : IntegrableOn secondMomentIntegrand (Ioi 0) := by
  refine majorant_integrable.mono_nonneg secondMoment_measurable.aestronglyMeasurable ?_ ?_
  · filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    exact (secondMoment_bound ht).1
  · filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    exact (secondMoment_bound ht).2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceAttempt06/Varianta1754d31e705457b56bc6468f1147281a23932a2cca8bc7bdcc0196d8fd3d855.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt06/Varianta1754d31e705457b56bc6468f1147281a23932a2cca8bc7bdcc0196d8fd3d855.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf9c3249092c5f79cdbaa8f04b9682801c5a48e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
