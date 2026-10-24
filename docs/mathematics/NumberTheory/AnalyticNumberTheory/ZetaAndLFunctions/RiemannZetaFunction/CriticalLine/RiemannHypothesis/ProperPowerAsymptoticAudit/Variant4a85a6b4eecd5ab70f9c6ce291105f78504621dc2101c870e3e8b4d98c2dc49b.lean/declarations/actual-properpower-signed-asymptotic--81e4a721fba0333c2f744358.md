# actual_properPower_signed_asymptotic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "64570b07ab80226bfef1f9c514a2e2a242f0c369",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a85a6b4eecd5ab70f9c6ce291105f78504621dc2101c870e3e8b4d98c2dc49b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e4cb1203-5024-0873-2b0a-d572bf7cf27c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3b27d8fb-e471-fb39-8add-26b5d6cc0701",
  "kind": "theorem",
  "lexical_name": "actual_properPower_signed_asymptotic",
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
  "slug": "actual-properpower-signed-asymptotic--81e4a721fba0333c2f744358",
  "source": {
    "blob": "64570b07ab80226bfef1f9c514a2e2a242f0c369",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 71,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ProperPowerAsymptoticAudit/Variant4a85a6b4eecd5ab70f9c6ce291105f78504621dc2101c870e3e8b4d98c2dc49b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81e4a721fba0333c2f7443587b0a8afea988f5f5e7f4da721740f3359fd571ab",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ProperPowerAsymptoticAudit/Variant4a85a6b4eecd5ab70f9c6ce291105f78504621dc2101c870e3e8b4d98c2dc49b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b27d8fb-e471-fb39-8add-26b5d6cc0701`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_properPower_signed_asymptotic : ∃ C : ℝ, 0 ≤ C ∧
    ∀ A : ℝ, 1 ≤ A →
      |-2 * (∑ n ∈ (Cutoff.primeIndices A).filter (fun n => ¬n.Prime),
          ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) *
            sourceCorrelation explicitSecondDerivative A (Real.log n)) +
        (256 / 315) ^ 2 * A / (32 * sourceNormalization A) + 2 * properPowerConstant| ≤
          C / A ^ 2 := by
  refine ⟨2 * properPowerBudget, mul_nonneg (by norm_num) properPowerBudget_nonneg, ?_⟩
  intro A hA
  change |-2 * properPrimePowerContribution A +
      (256 / 315) ^ 2 * A / (32 * sourceNormalization A) + 2 * properPowerConstant| ≤ _
  have he : -2 * properPrimePowerContribution A +
      (256 / 315) ^ 2 * A / (32 * sourceNormalization A) + 2 * properPowerConstant =
        -2 * (properPrimePowerContribution A -
          ((256 / 315) ^ 2 * A / (64 * sourceNormalization A) + properPowerConstant)) := by ring
  rw [he, abs_mul, show |(-2 : ℝ)| = 2 by norm_num]
  calc
    _ ≤ 2 * (properPowerBudget / A ^ 2) :=
      mul_le_mul_of_nonneg_left (properPrimePowerContribution_asymptotic_bound A hA) (by norm_num)
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ProperPowerAsymptoticAudit/Variant4a85a6b4eecd5ab70f9c6ce291105f78504621dc2101c870e3e8b4d98c2dc49b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ProperPowerAsymptoticAudit/Variant4a85a6b4eecd5ab70f9c6ce291105f78504621dc2101c870e3e8b4d98c2dc49b.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64570b07ab80226bfef1f9c514a2e2a242f0c369` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
