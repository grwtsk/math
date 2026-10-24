# fiveCancelledFactorialBudget_le_fifteen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:025967a4-0dc3-d5ad-9c58-1eac33040ff9",
  "kind": "theorem",
  "lexical_name": "fiveCancelledFactorialBudget_le_fifteen",
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
  "slug": "fivecancelledfactorialbudget-le-fifteen--c0936fc4e2d88a24f2c26236",
  "source": {
    "blob": "43f15a7c33abf0cd70e1bc4d84d7306cc3084c1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 127,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualPsiFloorConsumer/Variant636c1f56b20e8bb71130e07d17164b73fea5714a7a4185cded126c5371856487.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0936fc4e2d88a24f2c26236de9e3e14403dd6646ee44c4bf9f6e545b83e6d40",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualPsiFloorConsumer/Variant636c1f56b20e8bb71130e07d17164b73fea5714a7a4185cded126c5371856487.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:025967a4-0dc3-d5ad-9c58-1eac33040ff9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fiveCancelledFactorialBudget_le_fifteen {A : ℝ} (hA : 25600 ≤ A) :
    fiveCancelledFactorialBudget A ≤ 15 := by
  have hp : 0 < A := by linarith
  have hA1 : 1 ≤ A := by linarith
  let T := Real.log (vaughanCutoff A : ℝ)
  let S := Real.sqrt A
  have hs0 : 0 < S := Real.sqrt_pos.2 hp
  have hs160 : 160 ≤ S := by
    apply Real.le_sqrt_of_sq_le
    norm_num
    exact hA
  have hss : S ^ 2 = A := Real.sq_sqrt hp.le
  have ht0 : 0 ≤ T := Real.log_nonneg (actual_cutoff_order A hA1).1
  have ht2 : T ^ 2 ≤ 64 * S :=
    RH16IndependentChallengeNext.actualCutoff_log_sq_le_sqrt hA1
  have htA : T ^ 2 ≤ A := (actual_cutoff_logs_le_scale hA).1
  have hTS : T ≤ S := by nlinarith
  have h1 : 2240 / S ≤ (14 : ℝ) := (div_le_iff₀ hs0).2 (by linarith)
  have h2 : 960 / A ≤ (1 : ℝ) := (div_le_iff₀ hp).2 (by linarith)
  unfold fiveCancelledFactorialBudget
  calc
    _ ≤ (2240 * S + 960) / A := by
      change (30 * T ^ 2 + 320 * T + 960) / A ≤ _
      apply div_le_div_of_nonneg_right _ hp.le
      nlinarith
    _ = 2240 / S + 960 / A := by
      rw [add_div]
      congr 1
      apply (div_eq_div_iff hp.ne' hs0.ne').2
      nlinarith [hss]
    _ ≤ 15 := by linarith

/-- A fixed numerical reconstruction cost keeps the complete real signed arithmetic source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualPsiFloorConsumer/Variant636c1f56b20e8bb71130e07d17164b73fea5714a7a4185cded126c5371856487.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualPsiFloorConsumer/Variant636c1f56b20e8bb71130e07d17164b73fea5714a7a4185cded126c5371856487.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43f15a7c33abf0cd70e1bc4d84d7306cc3084c1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
