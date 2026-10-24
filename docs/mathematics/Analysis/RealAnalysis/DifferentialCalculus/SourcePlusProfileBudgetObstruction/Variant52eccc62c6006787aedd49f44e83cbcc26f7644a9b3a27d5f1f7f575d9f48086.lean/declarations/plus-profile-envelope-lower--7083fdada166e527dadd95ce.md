# plus_profile_envelope_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1052b9d7-ec1a-89be-28d6-bd95a1cf653a",
  "kind": "theorem",
  "lexical_name": "plus_profile_envelope_lower",
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
  "slug": "plus-profile-envelope-lower--7083fdada166e527dadd95ce",
  "source": {
    "blob": "1ee10f5d18ad1ceab0155203d375e200a28f5125",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 58,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePlusProfileBudgetObstruction/Variant52eccc62c6006787aedd49f44e83cbcc26f7644a9b3a27d5f1f7f575d9f48086.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7083fdada166e527dadd95ce7bb54d1a5ffb6aaf896d04a9586e1afc838c652c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePlusProfileBudgetObstruction/Variant52eccc62c6006787aedd49f44e83cbcc26f7644a9b3a27d5f1f7f575d9f48086.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1052b9d7-ec1a-89be-28d6-bd95a1cf653a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem plus_profile_envelope_lower (A : ℝ) (hA : 40 ≤ A) :
    (1 / 8 : ℝ) * (Real.exp (A / 16) - Real.exp (A / 32)) ≤ plusProfileEnvelope A := by
  have hp : 0 < A := by linarith
  have horder : A / 16 ≤ A / 8 := by linarith
  have hc := (sourceCorrelation_contDiff A hp).continuous
  have hd := (sourceCorrelation_contDiff A hp).continuous_deriv_one
  have hkernel : Continuous (plusCorrelationKernel A) := hd.add (hc.div_const 2)
  have hf : Continuous (fun t : ℝ => Real.exp (t / 2) / 16) := by fun_prop
  have hg : Continuous (fun t : ℝ => Real.exp (t / 2) * |plusCorrelationKernel A t|) := by
    exact (by fun_prop : Continuous (fun t : ℝ => Real.exp (t / 2))).mul hkernel.abs
  have hfi : IntervalIntegrable (fun t : ℝ => Real.exp (t / 2) / 16)
      volume (A / 16) (A / 8) := hf.intervalIntegrable _ _
  have hgi : IntervalIntegrable
      (fun t : ℝ => Real.exp (t / 2) * |plusCorrelationKernel A t|)
      volume (A / 16) (A / 8) := hg.intervalIntegrable _ _
  have hmono := intervalIntegral.integral_mono_on horder hfi
    hgi (fun t ht => by
      have hm := plus_kernel_ge_sixteenth A t hA (by linarith [ht.1]) ht.2
      have ha : (1 / 16 : ℝ) ≤ |plusCorrelationKernel A t| := by
        linarith [(le_abs_self (plusCorrelationKernel A t))]
      have he := mul_le_mul_of_nonneg_left ha (Real.exp_pos (t / 2)).le
      simpa only [div_eq_mul_inv, one_mul] using he)
  have hder (t : ℝ) : HasDerivAt (fun s : ℝ => Real.exp (s / 2) / 8)
      (Real.exp (t / 2) / 16) t := by
    apply ((((hasDerivAt_id t).div_const 2).exp).div_const 8).congr_deriv
    simp only [id_eq]
    ring
  have hint := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t _ => hder t) hfi
  unfold plusProfileEnvelope
  calc
    _ = ∫ t in A / 16..A / 8, Real.exp (t / 2) / 16 := by
      rw [hint]
      rw [show A / 8 / 2 = A / 16 by ring,
        show A / 16 / 2 = A / 32 by ring]
      ring
    _ ≤ _ := hmono

/-- A simple unbounded linear readout also follows from the exact exponential margin. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePlusProfileBudgetObstruction/Variant52eccc62c6006787aedd49f44e83cbcc26f7644a9b3a27d5f1f7f575d9f48086.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePlusProfileBudgetObstruction/Variant52eccc62c6006787aedd49f44e83cbcc26f7644a9b3a27d5f1f7f575d9f48086.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ee10f5d18ad1ceab0155203d375e200a28f5125` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
