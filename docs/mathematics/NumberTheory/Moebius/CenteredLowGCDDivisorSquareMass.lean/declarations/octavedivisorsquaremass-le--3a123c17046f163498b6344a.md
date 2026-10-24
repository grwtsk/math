# octaveDivisorSquareMass_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63f47286-574b-f3b9-0d1e-85c5248e5bc6",
  "kind": "theorem",
  "lexical_name": "octaveDivisorSquareMass_le",
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
  "slug": "octavedivisorsquaremass-le--3a123c17046f163498b6344a",
  "source": {
    "blob": "876e5a5d69c9ecc54575bcf44bf4266cfa19a9bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 35,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDDivisorSquareMass.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a123c17046f163498b6344a3b4c3eeb2026381f63c869f07dfff5663368c558",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CenteredLowGCDDivisorSquareMass.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63f47286-574b-f3b9-0d1e-85c5248e5bc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem octaveDivisorSquareMass_le
    {X : ℕ}
    (hX : 1 ≤ X) :
    octaveDivisorSquareMass X ≤
      24 * (X : ℝ) * Real.sqrt (X : ℝ) *
        (1 + Real.log ((4 * X : ℕ) : ℝ)) := by
  have hpoint :
      ∀ n ∈ octaveIndexSet X,
        ((n.divisors.card : ℝ) ^ 2) ≤
          (6 * Real.sqrt (X : ℝ)) *
            (n.divisors.card : ℝ) := by
    intro n hn
    have htau := card_divisors_cast_le_six_mul_sqrt_scale hX hn
    have htaunonneg : 0 ≤ (n.divisors.card : ℝ) := by positivity
    nlinarith
  have hsubset :
      octaveIndexSet X ⊆ Finset.Ioc 0 (4 * X) := by
    intro n hn
    exact Finset.mem_Ioc.mpr
      ⟨(octave_mem_bounds hn).1,
       (octave_mem_bounds hn).2⟩
  have hsumCount :
      (∑ n ∈ octaveIndexSet X,
        (n.divisors.card : ℝ)) ≤
        positiveDivisorIncidenceMass (4 * X) := by
    unfold positiveDivisorIncidenceMass
    exact Finset.sum_le_sum_of_subset_of_nonneg
      hsubset
      (fun n hnBig hnSmall => by positivity)
  have hB : 1 ≤ 4 * X := by omega
  have hsumBound := positiveDivisorIncidenceMass_le hB
  have hsqrtNonneg : 0 ≤ 6 * Real.sqrt (X : ℝ) := by positivity
  calc
    octaveDivisorSquareMass X ≤
        ∑ n ∈ octaveIndexSet X,
          (6 * Real.sqrt (X : ℝ)) *
            (n.divisors.card : ℝ) := by
      unfold octaveDivisorSquareMass
      exact Finset.sum_le_sum hpoint
    _ = (6 * Real.sqrt (X : ℝ)) *
        ∑ n ∈ octaveIndexSet X,
          (n.divisors.card : ℝ) := by
      rw [Finset.mul_sum]
    _ ≤ (6 * Real.sqrt (X : ℝ)) *
        positiveDivisorIncidenceMass (4 * X) := by
      exact mul_le_mul_of_nonneg_left hsumCount hsqrtNonneg
    _ ≤ (6 * Real.sqrt (X : ℝ)) *
        (((4 * X : ℕ) : ℝ) *
          (1 + Real.log ((4 * X : ℕ) : ℝ))) := by
      exact mul_le_mul_of_nonneg_left hsumBound hsqrtNonneg
    _ = 24 * (X : ℝ) * Real.sqrt (X : ℝ) *
        (1 + Real.log ((4 * X : ℕ) : ℝ)) := by
      push_cast
      ring


end GRWTSK.NumberTheory.Moebius.CenteredLowGCD
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDDivisorSquareMass.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDDivisorSquareMass.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `876e5a5d69c9ecc54575bcf44bf4266cfa19a9bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
