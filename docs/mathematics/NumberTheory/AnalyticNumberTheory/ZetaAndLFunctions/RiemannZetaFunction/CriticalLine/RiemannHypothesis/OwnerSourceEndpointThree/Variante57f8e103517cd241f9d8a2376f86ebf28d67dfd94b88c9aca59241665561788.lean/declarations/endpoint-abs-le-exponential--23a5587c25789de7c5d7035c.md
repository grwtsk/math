# endpoint_abs_le_exponential

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c56f3de-13a3-5718-f384-216bc33759a0",
  "kind": "theorem",
  "lexical_name": "endpoint_abs_le_exponential",
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
  "slug": "endpoint-abs-le-exponential--23a5587c25789de7c5d7035c",
  "source": {
    "blob": "9d85cf66446cc3538e635a0845bc96ca0af7114f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 163,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OwnerSourceEndpointThree/Variante57f8e103517cd241f9d8a2376f86ebf28d67dfd94b88c9aca59241665561788.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23a5587c25789de7c5d7035c6d2f49893d5cbfcc1ad96a1ecc8aa390bb72ddfa",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OwnerSourceEndpointThree/Variante57f8e103517cd241f9d8a2376f86ebf28d67dfd94b88c9aca59241665561788.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c56f3de-13a3-5718-f384-216bc33759a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem endpoint_abs_le_exponential (A : ℝ) (hA : 1 ≤ A) :
    let K := sourceKernelCutoff A / (vaughanCutoff A + 1)
    |centeredPrefix A K * column A K| ≤ 2 * A ^ 3 * Real.exp (-A) := by
  let U := vaughanCutoff A
  let a := U + 1
  let K := sourceKernelCutoff A / a
  rcases quotient_geometry A hA with ⟨ha, hK, _, _⟩
  change 2 ≤ a at ha
  change a ≤ K at hK
  have ha0 : 0 < (a : ℝ) := by exact_mod_cast (by omega : 0 < a)
  have hf : (U : ℝ) ≤ A ^ 2 := Nat.floor_le (sq_nonneg A)
  have haexp : (a : ℝ) ≤ Real.exp A := by
    have hac : (a : ℝ) = (U : ℝ) + 1 := by simp [a]
    linarith [exp_gt_square_add_one A hA]
  have hlog : Real.log (a : ℝ) ≤ A := (Real.log_le_iff_le_exp ha0).2 haexp
  have hLambda : |vonMangoldt a| ≤ A := by
    rw [abs_of_nonneg vonMangoldt_nonneg]
    exact vonMangoldt_le_log.trans hlog
  have hB : |centeredPrefix A K| ≤ (U : ℝ) :=
    centeredPrefix_abs_le_cutoff A hA K (by omega)
  have hw := endpoint_weight_abs_le A hA
  have hprod : |vonMangoldt a| * |sourcePlainWeight A ((a * K : ℕ) : ℝ)| ≤
      A * (2 * Real.exp (-A)) :=
    mul_le_mul hLambda hw (abs_nonneg _) (by linarith)
  calc
    |centeredPrefix A K * column A K| =
        |centeredPrefix A K| *
          (|vonMangoldt a| * |sourcePlainWeight A ((a * K : ℕ) : ℝ)|) := by
      rw [column_at_quotient A hA, abs_mul, abs_mul]
    _ ≤ (U : ℝ) * (A * (2 * Real.exp (-A))) :=
      mul_le_mul hB hprod (mul_nonneg (abs_nonneg _) (abs_nonneg _)) (Nat.cast_nonneg U)
    _ ≤ A ^ 2 * (A * (2 * Real.exp (-A))) :=
      mul_le_mul_of_nonneg_right hf (by positivity)
    _ = 2 * A ^ 3 * Real.exp (-A) := by ring

/-- The original literal endpoint has an absolute budget of three at every real A >= 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OwnerSourceEndpointThree/Variante57f8e103517cd241f9d8a2376f86ebf28d67dfd94b88c9aca59241665561788.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OwnerSourceEndpointThree/Variante57f8e103517cd241f9d8a2376f86ebf28d67dfd94b88c9aca59241665561788.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d85cf66446cc3538e635a0845bc96ca0af7114f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
