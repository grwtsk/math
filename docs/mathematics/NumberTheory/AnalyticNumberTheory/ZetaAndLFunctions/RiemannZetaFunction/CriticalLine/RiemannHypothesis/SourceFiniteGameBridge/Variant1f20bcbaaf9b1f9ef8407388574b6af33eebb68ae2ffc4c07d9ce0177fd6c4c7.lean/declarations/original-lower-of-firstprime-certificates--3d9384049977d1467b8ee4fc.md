# original_lower_of_firstPrime_certificates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59324c83-05b2-3d22-af1d-a96e6b740553",
  "kind": "theorem",
  "lexical_name": "original_lower_of_firstPrime_certificates",
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
  "slug": "original-lower-of-firstprime-certificates--3d9384049977d1467b8ee4fc",
  "source": {
    "blob": "ed318fb6f4a7961821c67aa8e3baac063bef5b0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 461,
    "line": 435,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFiniteGameBridge/Variant1f20bcbaaf9b1f9ef8407388574b6af33eebb68ae2ffc4c07d9ce0177fd6c4c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d9384049977d1467b8ee4fce2792fc48a617bdd66c204eea8bda20f2f183339",
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

Occurrence: `result:59324c83-05b2-3d22-af1d-a96e6b740553`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 435–461.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem original_lower_of_firstPrime_certificates (C R : ℝ) (_hR : 1 ≤ R)
    (h g e : ℝ → ℕ → ℝ)
    (hc : ∀ A : ℝ, R ≤ A → ∀ i < sourceEventCount A,
      0 ≤ g A i + h A i - h A (i + 1))
    (hb : ∀ A : ℝ, R ≤ A → ∀ i < sourceEventCount A,
      g A i - e A i ≤ firstPrimeEventGain A i)
    (hbudget : ∀ A : ℝ, R ≤ A → h A 0 - h A (sourceEventCount A) +
      ∑ i ∈ Finset.range (sourceEventCount A), e A i ≤ C) :
    ∃ E : ℝ, 0 ≤ E ∧ ∀ A : ℝ, 1 ≤ A →
      min (originalFinitePrefixFloor R) (archimedeanMultiplier 0 - C - 2 * E) ≤
        sourceQuadraticValue explicitSecondDerivative A := by
  obtain ⟨E, hE, he⟩ := firstPrime_schedule_native_replacement
  refine ⟨E, hE, ?_⟩
  intro A hA
  by_cases hRA : R ≤ A
  · have ht := FiniteGainCertificates.terminal_lower id (h A) (g A)
      (firstPrimeEventGain A) (e A) (sourceEventCount A) C
      (hc A hRA) (hb A hRA) (hbudget A hRA)
    have hx := (abs_le.mp (he A hA)).1
    have ha := SourceCorrectionEstimate.actual_archimedean_lower A hA
    apply (min_le_right _ _).trans
    linarith
  · exact (min_le_left _ _).trans
      (originalFinitePrefixFloor_le R A hA (le_of_not_ge hRA))

/-- Fixed all-real certificate providers reach the live arithmetic consumer.
No scale-dependent credit is accepted as the constant C. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFiniteGameBridge/Variant1f20bcbaaf9b1f9ef8407388574b6af33eebb68ae2ffc4c07d9ce0177fd6c4c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFiniteGameBridge/Variant1f20bcbaaf9b1f9ef8407388574b6af33eebb68ae2ffc4c07d9ce0177fd6c4c7.lean#L435).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed318fb6f4a7961821c67aa8e3baac063bef5b0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
