# actual_higherPower_signed_asymptotic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:98cee910-f1b6-0dd0-702a-8fe0cb18ad3d",
  "kind": "theorem",
  "lexical_name": "actual_higherPower_signed_asymptotic",
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
  "slug": "actual-higherpower-signed-asymptotic--a78106b4f43f7a18e3650683",
  "source": {
    "blob": "28b8f6531473d17bfaf0f3c4b25f8df29cbacc76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 143,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantb72087a5a783abc705bea1fff8e1bb5f4cf9e0c9e9a6323e30efb951028b59de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a78106b4f43f7a18e36506830c5856cc3879302020113d02e4aa661ae60a8402",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantb72087a5a783abc705bea1fff8e1bb5f4cf9e0c9e9a6323e30efb951028b59de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98cee910-f1b6-0dd0-702a-8fe0cb18ad3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_higherPower_signed_asymptotic : ∃ C : ℝ, 0 ≤ C ∧
    ∀ A : ℝ, 1 ≤ A →
      |-2 * (∑ n ∈ (Cutoff.primeIndices A).filter IsHigherPrimePower,
          ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) *
            sourceCorrelation explicitSecondDerivative A (Real.log n)) + 2 * higherPowerConstant| ≤
        C / A ^ 2 := by
  refine ⟨2 * higherPowerBudget, mul_nonneg (by norm_num) higherPowerBudget_nonneg, ?_⟩
  intro A hA
  change |-2 * higherPrimePowerContribution A + 2 * higherPowerConstant| ≤ _
  have he : -2 * higherPrimePowerContribution A + 2 * higherPowerConstant =
      -2 * (higherPrimePowerContribution A - higherPowerConstant) := by ring
  rw [he, abs_mul, show |(-2 : ℝ)| = 2 by norm_num]
  calc
    _ ≤ 2 * (higherPowerBudget / A ^ 2) :=
      mul_le_mul_of_nonneg_left (actualHigherPower_deviation_bound A hA) (by norm_num)
    _ = _ := by ring

end
end HigherPowerAsymptoticScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantb72087a5a783abc705bea1fff8e1bb5f4cf9e0c9e9a6323e30efb951028b59de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantb72087a5a783abc705bea1fff8e1bb5f4cf9e0c9e9a6323e30efb951028b59de.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28b8f6531473d17bfaf0f3c4b25f8df29cbacc76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
