# early_floor_derivative_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9922cbf-eaf5-5328-b41b-52f4c9e54388",
  "kind": "theorem",
  "lexical_name": "early_floor_derivative_le",
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
  "slug": "early-floor-derivative-le--bdb02c5ada87a011a925d1a8",
  "source": {
    "blob": "d03fd3af96bba818a0967dac06c09d1a9f0cfc9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 55,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/8a5f4e1c0d108635fb46SourceStrictComplementaryEarlyBudget/Variant69fa4ef34e53064f2fe025dc1ef9a2575709a6063f464d84ad2a8669730cc029.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bdb02c5ada87a011a925d1a84646725564d4a837a2bb62db7d28dcbaa6b64566",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/8a5f4e1c0d108635fb46SourceStrictComplementaryEarlyBudget/Variant69fa4ef34e53064f2fe025dc1ef9a2575709a6063f464d84ad2a8669730cc029.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9922cbf-eaf5-5328-b41b-52f4c9e54388`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem early_floor_derivative_le {A x : ℝ} (hA : 25600 ≤ A)
    (hx : x ∈ Icc (1 : ℝ) (vaughanCutoff A : ℝ)) :
    (⌊x⌋₊ : ℝ) * deriv (plainProfile A 1) x ≤
      -(5 / 16 : ℝ) * earlySourceFactor A * (x - 1) := by
  have hp : 0 < A := by linarith
  have hx0 : 0 < x := by linarith [hx.1]
  have hl0 : 0 ≤ Real.log x := Real.log_nonneg hx.1
  have hlU : Real.log x ≤ Real.log (vaughanCutoff A : ℝ) := Real.log_le_log hx0 hx.2
  have hl : Real.log x ≤ A / 40 := hlU.trans (log_vaughanCutoff_le_early_window hA)
  have hw := criticalWeight_early_lower (by linarith : 40 ≤ A) hl0 hl
  have hD : 0 ≤ earlySourceFactor A := (earlySourceFactor_pos (by linarith : 1 ≤ A)).le
  have he : Real.exp (-Real.log (vaughanCutoff A : ℝ) / 2) ≤ Real.exp (-Real.log x / 2) :=
    Real.exp_le_exp.mpr (by linarith)
  have hfac : earlySourceFactor A ≤ Real.exp (-Real.log x / 2) / x := by
    unfold earlySourceFactor
    exact (div_le_div_of_nonneg_left (Real.exp_pos _).le hx0 hx.2).trans
      (div_le_div_of_nonneg_right he hx0.le)
  have hf : x - 1 ≤ (⌊x⌋₊ : ℝ) := (Nat.sub_one_lt_floor x).le
  have hm1 : (x - 1) * earlySourceFactor A ≤
      (⌊x⌋₊ : ℝ) * (Real.exp (-Real.log x / 2) / x) :=
    mul_le_mul hf hfac hD (by positivity)
  have hm2 : (x - 1) * earlySourceFactor A * (5 / 16 : ℝ) ≤
      ((⌊x⌋₊ : ℝ) * (Real.exp (-Real.log x / 2) / x)) * criticalWeight A (Real.log x) :=
    mul_le_mul hm1 hw (by norm_num) (by positivity)
  rw [(plainProfile_hasDerivAt hp 1 hx0).deriv]
  simp only [Real.log_one, zero_add]
  unfold criticalWeight at hm2
  nlinarith

/-- Genuine early derivative integrability; it follows from the full actual cumulative adapter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/8a5f4e1c0d108635fb46SourceStrictComplementaryEarlyBudget/Variant69fa4ef34e53064f2fe025dc1ef9a2575709a6063f464d84ad2a8669730cc029.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/8a5f4e1c0d108635fb46SourceStrictComplementaryEarlyBudget/Variant69fa4ef34e53064f2fe025dc1ef9a2575709a6063f464d84ad2a8669730cc029.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d03fd3af96bba818a0967dac06c09d1a9f0cfc9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
