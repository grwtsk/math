# actualZeroAboveMovingHeight_norm_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ef49992-6050-6019-1c99-7e10ddcc0bb9",
  "kind": "theorem",
  "lexical_name": "actualZeroAboveMovingHeight_norm_bound",
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
  "slug": "actualzeroabovemovingheight-norm-bound--4331b091608a795bea2ff238",
  "source": {
    "blob": "92ce743a3ba22a2e10ebab79e85c28c508f87f08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 98,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroMovingTail/Variant1b233a025659ec69580275ad2d2c43a989d90bcfad567301fedc8ab96456dfff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4331b091608a795bea2ff238f44bd53bff1c96417c08954f93de7bd35441eb43",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroMovingTail/Variant1b233a025659ec69580275ad2d2c43a989d90bcfad567301fedc8ab96456dfff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ef49992-6050-6019-1c99-7e10ddcc0bb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualZeroAboveMovingHeight_norm_bound :
    ∃ A0 : ℝ, 1 ≤ A0 ∧ ∀ c A R : ℝ, 1 < c → actualZeroMovingRadius c ≤ A →
      actualBumpMovingHeight A c ≤ R →
      ‖actualZeroHeightTail A R‖ ≤ actualZeroMovingEnvelope A0 c A := by
  obtain ⟨A0, hA0, hb⟩ := actualZeroHeightTail_norm_bound
  refine ⟨A0, hA0, fun c A R hc hA hTR => ?_⟩
  have hA1 : 1 ≤ A := (le_max_left _ _).trans hA
  have hT := actualZeroMovingHeight_ge_four c A hc hA
  have hh := hb A R hA1 (hT.trans hTR)
  have ht : actualBumpMovingHeight A c ^ 5 = Real.exp ((2 * c - 1) * A) := by
    unfold actualBumpMovingHeight
    rw [← Real.exp_nat_mul]
    congr 1
    ring
  have he : Real.exp A = Real.exp (-2 * (c - 1) * A) *
      Real.exp ((2 * c - 1) * A) := by
    rw [← Real.exp_add]
    congr 1
    ring
  calc
    _ ≤ (2 * actualZeroTailWeightConstant * A0 * Real.exp A / A ^ 9) *
        ((Real.log R + 2) / R ^ 5) := hh.trans_eq (by ring)
    _ ≤ (2 * actualZeroTailWeightConstant * A0 * Real.exp A / A ^ 9) *
        ((Real.log (actualBumpMovingHeight A c) + 2) / actualBumpMovingHeight A c ^ 5) := by
      apply mul_le_mul_of_nonneg_left (logarithmic_tail_antitone _ _ hT hTR)
      unfold actualZeroTailWeightConstant
      positivity
    _ = _ := by
      rw [ht]
      unfold actualBumpMovingHeight actualZeroMovingEnvelope
      rw [Real.log_exp, he]
      field_simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroMovingTail/Variant1b233a025659ec69580275ad2d2c43a989d90bcfad567301fedc8ab96456dfff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroMovingTail/Variant1b233a025659ec69580275ad2d2c43a989d90bcfad567301fedc8ab96456dfff.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92ce743a3ba22a2e10ebab79e85c28c508f87f08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
