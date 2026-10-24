# sourcePlanCost_le_diameter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a65a65c-9576-f357-9df5-d2618c2db827",
  "kind": "theorem",
  "lexical_name": "sourcePlanCost_le_diameter",
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
  "slug": "sourceplancost-le-diameter--4d45e212cc952d4fcf95b1f3",
  "source": {
    "blob": "e25426cc8f872ace3c71cdca31e94788df5b9b0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 91,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceConservativeComparison/Variante1cd8905d68c325600e1c07b6e10bee3ea1b97d13264d55960ffb649826f8701.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d45e212cc952d4fcf95b1f368de9866fdb96fe084515980efa201f88cb5e0c1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceConservativeComparison/Variante1cd8905d68c325600e1c07b6e10bee3ea1b97d13264d55960ffb649826f8701.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a65a65c-9576-f357-9df5-d2618c2db827`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourcePlanCost_le_diameter {A : ℝ} (hA : 200 ≤ A)
    (x : ι → ℝ) (y : κ → ℝ) (P : ι → κ → ℝ) (hP : ∀ i j, 0 ≤ P i j)
    (h : ℝ) (hdiam : ∀ i j, |x i - y j| ≤ h) :
    sourcePlanCost A x y P ≤ min (2 * planMass P)
      ((Real.sqrt 5 / A) * planMass P * h) := by
  apply le_min
  · unfold sourcePlanCost planMass
    rw [Finset.mul_sum]
    apply Finset.sum_le_sum
    intro i _
    rw [Finset.mul_sum]
    apply Finset.sum_le_sum
    intro j _
    calc
      _ ≤ P i j * 2 := mul_le_mul_of_nonneg_left
        (sourceDistance_le_two (by linarith) (x i) (y j)) (hP i j)
      _ = _ := by ring
  · apply (sourcePlanCost_le_displacement hA x y P hP).trans
    have hc : displacementCost x y P ≤ planMass P * h := by
      unfold displacementCost planMass
      simp only [Finset.sum_mul]
      exact Finset.sum_le_sum (fun i _ => Finset.sum_le_sum
        (fun j _ => mul_le_mul_of_nonneg_left (hdiam i j) (hP i j)))
    have hp : 0 < A := by linarith
    exact (mul_le_mul_of_nonneg_left hc (by positivity)).trans_eq (by ring)

/-- Exact feasible coupling class, including both original marginals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceConservativeComparison/Variante1cd8905d68c325600e1c07b6e10bee3ea1b97d13264d55960ffb649826f8701.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceConservativeComparison/Variante1cd8905d68c325600e1c07b6e10bee3ea1b97d13264d55960ffb649826f8701.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e25426cc8f872ace3c71cdca31e94788df5b9b0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
