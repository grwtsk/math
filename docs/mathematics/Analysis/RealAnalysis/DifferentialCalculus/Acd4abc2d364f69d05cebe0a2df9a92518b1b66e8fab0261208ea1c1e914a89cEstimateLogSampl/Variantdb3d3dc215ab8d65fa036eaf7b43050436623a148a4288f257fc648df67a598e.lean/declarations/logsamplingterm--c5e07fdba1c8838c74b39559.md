# logSamplingTerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b39a2999b0c8085aa5b0bc601074c25085a372d7e28b3d9bb789b7f240bae8f",
  "kind": "def",
  "lexical_name": "logSamplingTerm",
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
  "slug": "logsamplingterm--c5e07fdba1c8838c74b39559",
  "source": {
    "blob": "a7d0901a4ca5d2c71f69f5af2b302a63e28afceb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 40,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Acd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89cEstimateLogSampl/Variantdb3d3dc215ab8d65fa036eaf7b43050436623a148a4288f257fc648df67a598e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c5e07fdba1c8838c74b395591fdd737626c529ff441f0b811b765a63296e6bef",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Acd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89cEstimateLogSampl/Variantdb3d3dc215ab8d65fa036eaf7b43050436623a148a4288f257fc648df67a598e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6b39a2999b0c8085aa5b0bc601074c25085a372d7e28b3d9bb789b7f240bae8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def logSamplingTerm (F : ℝ → ℝ) (x u : ℝ) : ℝ :=
  Real.log u *
    Real.exp (-(Real.log x + Real.log u) / 2) *
    F (Real.log x + Real.log u)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Acd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89cEstimateLogSampl/Variantdb3d3dc215ab8d65fa036eaf7b43050436623a148a4288f257fc648df67a598e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Acd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89cEstimateLogSampl/Variantdb3d3dc215ab8d65fa036eaf7b43050436623a148a4288f257fc648df67a598e.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7d0901a4ca5d2c71f69f5af2b302a63e28afceb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
