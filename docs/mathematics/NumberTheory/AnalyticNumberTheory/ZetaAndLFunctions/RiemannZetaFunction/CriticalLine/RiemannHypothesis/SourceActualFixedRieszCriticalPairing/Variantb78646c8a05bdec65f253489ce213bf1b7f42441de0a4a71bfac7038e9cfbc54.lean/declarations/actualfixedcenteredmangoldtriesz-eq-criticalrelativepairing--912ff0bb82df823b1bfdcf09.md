# actualFixedCenteredMangoldtRiesz_eq_criticalRelativePairing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3922242c-cafa-ced6-dc9f-d15b574f2726",
  "kind": "theorem",
  "lexical_name": "actualFixedCenteredMangoldtRiesz_eq_criticalRelativePairing",
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
  "slug": "actualfixedcenteredmangoldtriesz-eq-criticalrelativepairing--912ff0bb82df823b1bfdcf09",
  "source": {
    "blob": "ea59d3044323a4b563f4b4285de47a9491371e6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 24,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualFixedRieszCriticalPairing/Variantb78646c8a05bdec65f253489ce213bf1b7f42441de0a4a71bfac7038e9cfbc54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:912ff0bb82df823b1bfdcf098483418ebd8126d6693e9ac82a6b919750ee1faf",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualFixedRieszCriticalPairing/Variantb78646c8a05bdec65f253489ce213bf1b7f42441de0a4a71bfac7038e9cfbc54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3922242c-cafa-ced6-dc9f-d15b574f2726`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualFixedCenteredMangoldtRiesz_eq_criticalRelativePairing {A : ℝ}
    (hA : 1 ≤ A) (b : ℝ) :
    (∫ t in 0..2 * A, deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
      actualFixedCenteredMangoldtRieszPrimitive b t) =
        criticalRelativePairing A - 1 - archimedeanMultiplier 0 / 2 := by
  rw [actualFixedCenteredMangoldtRiesz_readout hA b,
    mertensResidual_eq_criticalRelative_add_baseline hA,
    actualRiesz_finite_center_payment, actualRiesz_continuousMoment_eq_neg_magnitude hA]
  ring

end FormalResearch.RiemannHypothesis.SourceActualFixedRieszCriticalPairing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualFixedRieszCriticalPairing/Variantb78646c8a05bdec65f253489ce213bf1b7f42441de0a4a71bfac7038e9cfbc54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualFixedRieszCriticalPairing/Variantb78646c8a05bdec65f253489ce213bf1b7f42441de0a4a71bfac7038e9cfbc54.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea59d3044323a4b563f4b4285de47a9491371e6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
