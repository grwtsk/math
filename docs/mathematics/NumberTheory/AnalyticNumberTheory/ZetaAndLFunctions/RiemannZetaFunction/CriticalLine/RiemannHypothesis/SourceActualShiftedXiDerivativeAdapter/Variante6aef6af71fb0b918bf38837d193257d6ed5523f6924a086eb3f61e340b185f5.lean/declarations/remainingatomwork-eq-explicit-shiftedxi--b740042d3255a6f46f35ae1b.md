# remainingAtomWork_eq_explicit_shiftedXi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:552fb480-aeeb-442a-1418-d8b2a222a874",
  "kind": "theorem",
  "lexical_name": "remainingAtomWork_eq_explicit_shiftedXi",
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
  "slug": "remainingatomwork-eq-explicit-shiftedxi--b740042d3255a6f46f35ae1b",
  "source": {
    "blob": "08abcc7ef41f8443929d374b3c535db17dd32041",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 71,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualShiftedXiDerivativeAdapter/Variante6aef6af71fb0b918bf38837d193257d6ed5523f6924a086eb3f61e340b185f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b740042d3255a6f46f35ae1bfd47d119866dee0734479bad0c426f491e4202a8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualShiftedXiDerivativeAdapter/Variante6aef6af71fb0b918bf38837d193257d6ed5523f6924a086eb3f61e340b185f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:552fb480-aeeb-442a-1418-d8b2a222a874`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem remainingAtomWork_eq_explicit_shiftedXi (A : ℝ) (hA : 1 ≤ A) :
    remainingAtomWork A =
      Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2) +
        ∫ y in 2..Real.exp (2 * A), shiftedActualChebyshev y *
          (deriv (sourceCorrelation explicitSecondDerivative A) (Real.log y) -
            sourceCorrelation explicitSecondDerivative A (Real.log y) / 2) /
              y ^ (3 / 2 : ℝ) := by
  rw [remainingAtomWork_eq_cesaro_integral A hA]
  rw [← signedCesaroPairing_eq_explicit_shiftedXi A hA]
  rfl

end RH16ShiftedXiAdapter
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualShiftedXiDerivativeAdapter/Variante6aef6af71fb0b918bf38837d193257d6ed5523f6924a086eb3f61e340b185f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualShiftedXiDerivativeAdapter/Variante6aef6af71fb0b918bf38837d193257d6ed5523f6924a086eb3f61e340b185f5.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08abcc7ef41f8443929d374b3c535db17dd32041` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
