# primeCharacterCriticalBound_iff_residueDifferenceCriticalBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ffdee30e-2334-3ba9-5145-332001c86990",
  "kind": "theorem",
  "lexical_name": "primeCharacterCriticalBound_iff_residueDifferenceCriticalBound",
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
  "slug": "primecharactercriticalbound-iff-residuedifferencecriticalbound--61d8ec846fed4f471edcd64e",
  "source": {
    "blob": "94e372a5c8ea43ecdb4a35b0fbe21d387a298d91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 111,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCriticalPredicates/Variant40aea576dbe20cd7a717a3b6b7fd724adea0b33a15ee8821a451f28836b18cbc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61d8ec846fed4f471edcd64ec317895278607b692edba29d95b242058b83f02c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCriticalPredicates/Variant40aea576dbe20cd7a717a3b6b7fd724adea0b33a15ee8821a451f28836b18cbc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffdee30e-2334-3ba9-5145-332001c86990`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeCharacterCriticalBound_iff_residueDifferenceCriticalBound :
    PrimeCharacterCriticalBound ↔
      ResidueDifferenceCriticalBound actualResidueSixCounts := by
  constructor
  · rintro ⟨C, hC, x₀, hx₀, hBound⟩
    refine ⟨C + 1, by linarith, max x₀ 3, by omega, ?_⟩
    intro x hx
    have hx₀x : x₀ ≤ x := le_trans (le_max_left _ _) hx
    have hx3 : 3 ≤ x := le_trans (le_max_right _ _) hx
    have hPrime := hBound x hx₀x
    suffices hGoal : |countDifference actualResidueSixCounts x| ≤
        (C + 1) * residueDifferenceCriticalRate x by
      simpa [residueDifferenceCriticalRate, mul_assoc] using hGoal
    have hCorrection :=
      conductorThreePrimeCharacterSum_real_eq_countDifference x
    simp only [if_pos (by omega : 2 ≤ x)] at hCorrection
    have hCount :
        countDifference actualResidueSixCounts x =
          (conductorThreePrimeCharacterSum x : ℝ) + 1 := by
      linarith
    rw [hCount]
    calc
      |(conductorThreePrimeCharacterSum x : ℝ) + 1| ≤
          |(conductorThreePrimeCharacterSum x : ℝ)| + |(1 : ℝ)| :=
        abs_add_le _ _
      _ ≤ C * residueDifferenceCriticalRate x + 1 := by
        simpa using add_le_add hPrime (show |(1 : ℝ)| ≤ 1 by norm_num)
      _ ≤ (C + 1) * residueDifferenceCriticalRate x := by
        have hRate := one_le_residueDifferenceCriticalRate hx3
        nlinarith
  · rintro ⟨C, hC, x₀, hx₀, hBound⟩
    refine ⟨C + 1, by linarith, max x₀ 3, by omega, ?_⟩
    intro x hx
    have hx₀x : x₀ ≤ x := le_trans (le_max_left _ _) hx
    have hx3 : 3 ≤ x := le_trans (le_max_right _ _) hx
    have hCount := hBound x hx₀x
    have hCount' :
        |countDifference actualResidueSixCounts x| ≤
          C * residueDifferenceCriticalRate x := by
      simpa [residueDifferenceCriticalRate, mul_assoc] using hCount
    have hCorrection :=
      conductorThreePrimeCharacterSum_real_eq_countDifference x
    simp only [if_pos (by omega : 2 ≤ x)] at hCorrection
    rw [hCorrection]
    calc
      |countDifference actualResidueSixCounts x - 1| ≤
          |countDifference actualResidueSixCounts x| + |(1 : ℝ)| :=
        abs_sub _ _
      _ ≤ C * residueDifferenceCriticalRate x + 1 := by
        simpa using add_le_add hCount' (show |(1 : ℝ)| ≤ 1 by norm_num)
      _ ≤ (C + 1) * residueDifferenceCriticalRate x := by
        have hRate := one_le_residueDifferenceCriticalRate hx3
        nlinarith

/-- The unconditional prime-power remainder is lower order than the critical
`sqrt(x) log(x)^2` scale. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCriticalPredicates/Variant40aea576dbe20cd7a717a3b6b7fd724adea0b33a15ee8821a451f28836b18cbc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCriticalPredicates/Variant40aea576dbe20cd7a717a3b6b7fd724adea0b33a15ee8821a451f28836b18cbc.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94e372a5c8ea43ecdb4a35b0fbe21d387a298d91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
