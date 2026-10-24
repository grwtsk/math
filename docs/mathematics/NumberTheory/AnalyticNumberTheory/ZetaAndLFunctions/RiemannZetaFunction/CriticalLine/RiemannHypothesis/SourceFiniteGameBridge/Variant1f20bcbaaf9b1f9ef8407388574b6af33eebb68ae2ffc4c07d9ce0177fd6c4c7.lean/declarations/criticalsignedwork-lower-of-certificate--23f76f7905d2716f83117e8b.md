# criticalSignedWork_lower_of_certificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f64ad3b6-b1fe-2b32-df19-52bda5472543",
  "kind": "theorem",
  "lexical_name": "criticalSignedWork_lower_of_certificate",
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
  "slug": "criticalsignedwork-lower-of-certificate--23f76f7905d2716f83117e8b",
  "source": {
    "blob": "ed318fb6f4a7961821c67aa8e3baac063bef5b0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 395,
    "line": 383,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFiniteGameBridge/Variant1f20bcbaaf9b1f9ef8407388574b6af33eebb68ae2ffc4c07d9ce0177fd6c4c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23f76f7905d2716f83117e8bc72294894574b02939255598e476ea50b81f2a9f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFiniteGameBridge/Variant1f20bcbaaf9b1f9ef8407388574b6af33eebb68ae2ffc4c07d9ce0177fd6c4c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f64ad3b6-b1fe-2b32-df19-52bda5472543`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 383–395.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalSignedWork_lower_of_certificate (A C : ℝ) (hA : 1 ≤ A)
    (h g e : ℕ → ℝ)
    (hc : ∀ i < sourceEventCount A, 0 ≤ g i + h i - h (i + 1))
    (hb : ∀ i < sourceEventCount A, g i - e i ≤ firstPrimeEventGain A i)
    (hbudget : h 0 - h (sourceEventCount A) +
      ∑ i ∈ Finset.range (sourceEventCount A), e i ≤ C) :
    diagonalMainCoefficient A * A - (C / 2 + 2) ≤ criticalSignedWork A := by
  have hf := firstPrime_main_le_of_certificate A C h g e hc hb hbudget
  rw [firstPrimeMoment_eq_continuous_sub_work A hA] at hf
  have hm := (abs_le.mp (criticalContinuousMoment_abs_le_two A hA)).1
  linarith

/-- The native finite-prefix floor, with the original strict inventory. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFiniteGameBridge/Variant1f20bcbaaf9b1f9ef8407388574b6af33eebb68ae2ffc4c07d9ce0177fd6c4c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFiniteGameBridge/Variant1f20bcbaaf9b1f9ef8407388574b6af33eebb68ae2ffc4c07d9ce0177fd6c4c7.lean#L383).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed318fb6f4a7961821c67aa8e3baac063bef5b0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
