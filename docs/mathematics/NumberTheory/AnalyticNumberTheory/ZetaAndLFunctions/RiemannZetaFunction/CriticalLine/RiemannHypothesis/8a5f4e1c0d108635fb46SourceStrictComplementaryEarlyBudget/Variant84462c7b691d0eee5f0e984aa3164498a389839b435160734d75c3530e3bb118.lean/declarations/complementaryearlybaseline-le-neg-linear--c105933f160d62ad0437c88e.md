# complementaryEarlyBaseline_le_neg_linear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d17eb50-6d07-09b9-ad30-4738403ead8d",
  "kind": "theorem",
  "lexical_name": "complementaryEarlyBaseline_le_neg_linear",
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
  "slug": "complementaryearlybaseline-le-neg-linear--c105933f160d62ad0437c88e",
  "source": {
    "blob": "089190391386e29af2deaa8ff2fd2445f6df3d24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 165,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/8a5f4e1c0d108635fb46SourceStrictComplementaryEarlyBudget/Variant84462c7b691d0eee5f0e984aa3164498a389839b435160734d75c3530e3bb118.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c105933f160d62ad0437c88ee9fdde720a25dc070b3776938c185011cff16bcc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/8a5f4e1c0d108635fb46SourceStrictComplementaryEarlyBudget/Variant84462c7b691d0eee5f0e984aa3164498a389839b435160734d75c3530e3bb118.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d17eb50-6d07-09b9-ad30-4738403ead8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complementaryEarlyBaseline_le_neg_linear {A : ℝ} (hA : 25600 ≤ A) :
    complementaryEarlyBaseline A ≤ -(5 / 128 : ℝ) * A := by
  have hp : 0 < A := by linarith
  have he := complementaryEarlyBaseline_le_negative_budget hA
  have hD := earlySourceFactor_lower (by linarith : 1 ≤ A)
  have hfloor : A ^ 2 - 1 ≤ (vaughanCutoff A : ℝ) :=
    (Nat.sub_one_lt_floor (A ^ 2)).le
  have hhalf : A ^ 2 / 2 ≤ (vaughanCutoff A : ℝ) - 1 := by nlinarith
  have hs : A ^ 4 / 4 ≤ ((vaughanCutoff A : ℝ) - 1) ^ 2 := by
    have hm := mul_self_le_mul_self (by positivity : 0 ≤ A ^ 2 / 2) hhalf
    nlinarith
  have hm : (5 / 32 : ℝ) * (1 / A ^ 3) * (A ^ 4 / 4) ≤
      (5 / 32 : ℝ) * earlySourceFactor A * ((vaughanCutoff A : ℝ) - 1) ^ 2 :=
    mul_le_mul (mul_le_mul_of_nonneg_left hD (by norm_num)) hs
      (by positivity)
      (mul_nonneg (by norm_num) (earlySourceFactor_pos (by linarith : 1 ≤ A)).le)
  have hid : (5 / 32 : ℝ) * (1 / A ^ 3) * (A ^ 4 / 4) = (5 / 128 : ℝ) * A := by
    field_simp
    ring
  rw [hid] at hm
  linarith

/-- The complete actual L-B is at most its genuine signed tail minus 5A/128. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/8a5f4e1c0d108635fb46SourceStrictComplementaryEarlyBudget/Variant84462c7b691d0eee5f0e984aa3164498a389839b435160734d75c3530e3bb118.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/8a5f4e1c0d108635fb46SourceStrictComplementaryEarlyBudget/Variant84462c7b691d0eee5f0e984aa3164498a389839b435160734d75c3530e3bb118.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `089190391386e29af2deaa8ff2fd2445f6df3d24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
