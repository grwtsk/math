# differentiableAt_mellin_abelKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c51e1b4b-55d4-94e4-dc57-953f7cd5116b",
  "kind": "lemma",
  "lexical_name": "differentiableAt_mellin_abelKernel",
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
  "slug": "differentiableat-mellin-abelkernel--16360af7ba53baf78085cb1a",
  "source": {
    "blob": "0cd15a5b50841aff7a251ae4dc89a80f8a9d52fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 155,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variantcc87ad539cc7dc38979ff7d1fde8c8d270f97b95ff7e49a238247f48e1130c14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16360af7ba53baf78085cb1ae7fd56294ecef33efa3bcf9affb4fcd83d73ca07",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variantcc87ad539cc7dc38979ff7d1fde8c8d270f97b95ff7e49a238247f48e1130c14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c51e1b4b-55d4-94e4-dc57-953f7cd5116b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma differentiableAt_mellin_abelKernel (hχ1 : χ ≠ 1) {s : ℂ} (hs : 0 < s.re) :
    DifferentiableAt ℂ (fun z : ℂ => mellin (abelKernel χ) (-z)) s := by
  have htop : abelKernel χ =O[atTop] (fun t : ℝ => t ^ (-(0 : ℝ))) := by
    apply Asymptotics.IsBigO.of_bound (q : ℝ)
    filter_upwards [eventually_gt_atTop 0] with t ht
    rw [neg_zero, Real.rpow_zero, Real.norm_of_nonneg zero_le_one, mul_one]
    exact norm_abelKernel_le hχ1 t
  have hbot : abelKernel χ =O[𝓝[>] 0] (fun t : ℝ => t ^ (-(-(s.re + 1)))) := by
    have hev : abelKernel χ =ᶠ[𝓝[>] 0] (fun _ => (0 : ℂ)) := by
      have : Set.Iio (1 : ℝ) ∈ 𝓝[>] (0 : ℝ) :=
        mem_nhdsWithin_of_mem_nhds (Iio_mem_nhds zero_lt_one)
      filter_upwards [this] with t ht
      unfold abelKernel
      rw [Set.indicator_of_notMem]
      simp only [Set.mem_Ioi, not_lt]
      exact le_of_lt ht
    exact (Asymptotics.isBigO_zero _ _).congr' hev.symm EventuallyEq.rfl
  have h := mellin_differentiableAt_of_isBigO_rpow (E := ℂ) (a := 0) (b := -(s.re + 1))
    (f := abelKernel χ) (s := -s) ((locallyIntegrable_abelKernel hχ1).locallyIntegrableOn _)
    htop (by simpa using hs) hbot (by simp)
  exact h.comp s differentiableAt_id.neg

/-- **Abel-summation representation on Re s > 0**:
L(s,χ) = s · ∫_1^∞ (Σ_{1≤k≤t} χ(k)) · t^{−(s+1)} dt. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variantcc87ad539cc7dc38979ff7d1fde8c8d270f97b95ff7e49a238247f48e1130c14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variantcc87ad539cc7dc38979ff7d1fde8c8d270f97b95ff7e49a238247f48e1130c14.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cd15a5b50841aff7a251ae4dc89a80f8a9d52fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
