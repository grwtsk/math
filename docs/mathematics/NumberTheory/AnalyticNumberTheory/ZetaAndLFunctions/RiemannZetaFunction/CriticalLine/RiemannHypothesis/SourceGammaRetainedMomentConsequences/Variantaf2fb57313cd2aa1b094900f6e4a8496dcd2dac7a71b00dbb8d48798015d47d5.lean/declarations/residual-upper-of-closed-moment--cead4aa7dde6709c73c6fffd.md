# residual_upper_of_closed_moment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a404dc7e-4d3a-b442-2618-65e0fae561c4",
  "kind": "theorem",
  "lexical_name": "residual_upper_of_closed_moment",
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
  "slug": "residual-upper-of-closed-moment--cead4aa7dde6709c73c6fffd",
  "source": {
    "blob": "b580a9952f778b55720faa64f441ae32f6262db1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 19,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceGammaRetainedMomentConsequences/Variantaf2fb57313cd2aa1b094900f6e4a8496dcd2dac7a71b00dbb8d48798015d47d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cead4aa7dde6709c73c6fffdc7663714301e315dfc248d1df837a1bc71bcc7c3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceGammaRetainedMomentConsequences/Variantaf2fb57313cd2aa1b094900f6e4a8496dcd2dac7a71b00dbb8d48798015d47d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a404dc7e-4d3a-b442-2618-65e0fae561c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_upper_of_closed_moment (J R A : ℝ) (hR : 91 ≤ R) (hRA : R ≤ A)
    (hmoment : actualClosedXiSignedMoment A ≤ J) :
    mertensResidual A ≤ J - 13 / 16 + criticalBaselineCorrection R := by
  have hm := (actual_moment_residual_comparison A (by linarith : 40 ≤ A)).1
  have hb := criticalBaselineCorrection_antitone R A (by linarith) hRA
  linarith only [hm, hb, hmoment]

/-- Keep the actual finite prefix at the supplied real radius R. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceGammaRetainedMomentConsequences/Variantaf2fb57313cd2aa1b094900f6e4a8496dcd2dac7a71b00dbb8d48798015d47d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceGammaRetainedMomentConsequences/Variantaf2fb57313cd2aa1b094900f6e4a8496dcd2dac7a71b00dbb8d48798015d47d5.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b580a9952f778b55720faa64f441ae32f6262db1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
