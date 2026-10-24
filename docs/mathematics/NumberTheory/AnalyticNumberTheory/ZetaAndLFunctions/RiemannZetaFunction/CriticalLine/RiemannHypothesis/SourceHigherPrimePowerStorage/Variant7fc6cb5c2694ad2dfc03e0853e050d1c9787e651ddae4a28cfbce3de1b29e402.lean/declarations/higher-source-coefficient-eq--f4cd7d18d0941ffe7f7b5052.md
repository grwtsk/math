# higher_source_coefficient_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e7543b2-8a78-71d1-3476-b945a8ef24b3",
  "kind": "theorem",
  "lexical_name": "higher_source_coefficient_eq",
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
  "slug": "higher-source-coefficient-eq--f4cd7d18d0941ffe7f7b5052",
  "source": {
    "blob": "033da540d3aeabc6a658a8de9d456f3d70b33f49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 191,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHigherPrimePowerStorage/Variant7fc6cb5c2694ad2dfc03e0853e050d1c9787e651ddae4a28cfbce3de1b29e402.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4cd7d18d0941ffe7f7b5052dbb0b22358eb36467dae0733627cc23e0c49be72",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHigherPrimePowerStorage/Variant7fc6cb5c2694ad2dfc03e0853e050d1c9787e651ddae4a28cfbce3de1b29e402.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e7543b2-8a78-71d1-3476-b945a8ef24b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem higher_source_coefficient_eq {A : ℝ} (hA : 0 < A) (i : HigherPrimePowerIndex) :
    higherAtomWeight i * (⟪originalSourceState A,
      translation (higherAtomShift i) (originalSourceState A)⟫_ℂ).re =
        vonMangoldt (higherAtomNatural i) * closedPrimeWeight A (higherAtomNatural i) := by
  rw [higherAtomWeight_eq_mangoldtCoefficient, higherAtomShift_eq_log,
    ← sourceCorrelation_eq_inner hA]
  unfold mangoldtCoefficient closedPrimeWeight exponentialTest
  ring

/-- Omitted atoms have zero correlation, even though their norm-square account is nonzero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHigherPrimePowerStorage/Variant7fc6cb5c2694ad2dfc03e0853e050d1c9787e651ddae4a28cfbce3de1b29e402.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHigherPrimePowerStorage/Variant7fc6cb5c2694ad2dfc03e0853e050d1c9787e651ddae4a28cfbce3de1b29e402.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `033da540d3aeabc6a658a8de9d456f3d70b33f49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
