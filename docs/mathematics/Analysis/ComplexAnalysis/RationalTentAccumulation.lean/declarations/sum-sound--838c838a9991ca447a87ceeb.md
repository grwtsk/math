# sum_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:beb50fae-3851-ef34-cb55-96517be5d995",
  "kind": "theorem",
  "lexical_name": "sum_sound",
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
  "slug": "sum-sound--838c838a9991ca447a87ceeb",
  "source": {
    "blob": "28e1982d40973837ccce9ec4e57118f16fc30587",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 66,
    "path": "GRWTSK/Analysis/Complex/RationalTentAccumulation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:838c838a9991ca447a87ceeb4f20b32262f5cddaeed4d3b9845018542e5cf763",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RationalTentAccumulation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:beb50fae-3851-ef34-cb55-96517be5d995`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_sound (x h : ℚ) {k : ℕ} (rows : Fin k → WeightedInput)
    (hg : Admissible x h rows) (z : Fin k → ℂ)
    (hz : ∀ i, (z i).re ≤ 1)
    (hcoord : ∀ i, ‖z i - QComplex.embed (rows i).point.center‖ ≤
      ((rows i).point.coordinateError : ℝ)) :
    ‖(∑ i, ((rows i).weight : ℂ) * tentKernel (x : ℝ) (h : ℝ) (z i)) -
      QComplex.embed (sumValue x h rows)‖ ≤ (sumError x h rows : ℝ) := by
  rw [embed_sumValue, ← Finset.sum_sub_distrib]
  calc
    _ ≤ ∑ i, ‖((rows i).weight : ℂ) * tentKernel (x : ℝ) (h : ℝ) (z i) -
        ((rows i).weight : ℂ) *
          QComplex.embed (RationalTentEvaluation.compute x h (rows i).point).value‖ :=
      norm_sum_le _ _
    _ ≤ _ := by
      simp only [sumError, Rat.cast_sum, Rat.cast_mul, Rat.cast_natCast]
      apply Finset.sum_le_sum
      intro i _
      rw [← mul_sub, norm_mul, Complex.norm_natCast]
      exact mul_le_mul_of_nonneg_left
        (RationalTentEvaluation.compute_sound x h (rows i).point (hg.2.2 i).2
          (z i) (hz i) (hcoord i)) (Nat.cast_nonneg _)

/-- One final accumulation rounding allowance; all record errors were already weighted. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/RationalTentAccumulation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/RationalTentAccumulation.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28e1982d40973837ccce9ec4e57118f16fc30587` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
