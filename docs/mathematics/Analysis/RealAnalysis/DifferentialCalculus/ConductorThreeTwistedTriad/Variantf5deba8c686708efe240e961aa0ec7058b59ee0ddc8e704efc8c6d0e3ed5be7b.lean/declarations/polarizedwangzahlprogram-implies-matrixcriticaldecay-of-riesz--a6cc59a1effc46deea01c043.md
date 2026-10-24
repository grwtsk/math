# polarizedWangZahlProgram_implies_matrixCriticalDecay_of_riesz

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f1a830b7-f7f6-f60f-d9f9-4ed114dc7a80",
  "kind": "theorem",
  "lexical_name": "polarizedWangZahlProgram_implies_matrixCriticalDecay_of_riesz",
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
  "slug": "polarizedwangzahlprogram-implies-matrixcriticaldecay-of-riesz--a6cc59a1effc46deea01c043",
  "source": {
    "blob": "12785ca62086fc864df996b0b093a8226e5a16b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 149,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeTwistedTriad/Variantf5deba8c686708efe240e961aa0ec7058b59ee0ddc8e704efc8c6d0e3ed5be7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6cc59a1effc46deea01c043cd9c9029bd37a32bc368640b7b34dacb373455c7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeTwistedTriad/Variantf5deba8c686708efe240e961aa0ec7058b59ee0ddc8e704efc8c6d0e3ed5be7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1a830b7-f7f6-f60f-d9f9-4ed114dc7a80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem polarizedWangZahlProgram_implies_matrixCriticalDecay_of_riesz
    (hTypeIReindex : ExactConductorThreeTypeIPrefixExpansion)
    (hProgram :
      Surface.Core.ConductorThreeWangZahlTTStar.ConductorThreePolarizedWangZahlProgram)
    (hRiesz : GRHRieszFiniteDifferenceEstimate) :
    MatrixCriticalDecay actualResidueSixCounts := by
  exact twistedPsiCriticalBound_iff_matrixCriticalDecay.mp
    (hRiesz (polarizedWangZahlProgram_implies_grh hTypeIReindex hProgram))

/-- The spectral branch after positivity: a proved GRH/Herglotz theorem sends
the same packet route to the prime-constructed Weyl function. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeTwistedTriad/Variantf5deba8c686708efe240e961aa0ec7058b59ee0ddc8e704efc8c6d0e3ed5be7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeTwistedTriad/Variantf5deba8c686708efe240e961aa0ec7058b59ee0ddc8e704efc8c6d0e3ed5be7b.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12785ca62086fc864df996b0b093a8226e5a16b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
