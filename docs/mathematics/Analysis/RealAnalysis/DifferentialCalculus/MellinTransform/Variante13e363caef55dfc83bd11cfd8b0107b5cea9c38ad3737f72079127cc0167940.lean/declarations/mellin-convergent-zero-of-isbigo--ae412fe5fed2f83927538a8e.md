# mellin_convergent_zero_of_isBigO

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c514db7-3f13-7737-00a4-70ca6104ceb0",
  "kind": "theorem",
  "lexical_name": "mellin_convergent_zero_of_isBigO",
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
  "slug": "mellin-convergent-zero-of-isbigo--ae412fe5fed2f83927538a8e",
  "source": {
    "blob": "4ac40eca236d0582f2c5da6432498f6bc604fd20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 234,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variante13e363caef55dfc83bd11cfd8b0107b5cea9c38ad3737f72079127cc0167940.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae412fe5fed2f83927538a8e4378f3b705400965b013eca84d926bafef7eae7c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variante13e363caef55dfc83bd11cfd8b0107b5cea9c38ad3737f72079127cc0167940.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c514db7-3f13-7737-00a4-70ca6104ceb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mellin_convergent_zero_of_isBigO {b : ℝ} {f : ℝ → ℝ}
    (hfc : AEStronglyMeasurable f <| volume.restrict (Ioi 0))
    (hf : f =O[𝓝[>] 0] (· ^ (-b))) {s : ℝ} (hs : b < s) :
    ∃ c : ℝ, 0 < c ∧ IntegrableOn (fun t : ℝ => t ^ (s - 1) * f t) (Ioc 0 c) := by
  obtain ⟨d, _, hd'⟩ := hf.exists_pos
  simp_rw [IsBigOWith, eventually_nhdsWithin_iff, Metric.eventually_nhds_iff, gt_iff_lt] at hd'
  obtain ⟨ε, hε, hε'⟩ := hd'
  refine ⟨ε, hε, integrableOn_Ioc_iff_integrableOn_Ioo.mpr ⟨?_, ?_⟩⟩
  · refine AEStronglyMeasurable.mul ?_ (hfc.mono_set Ioo_subset_Ioi_self)
    refine (continuousOn_of_forall_continuousAt fun t ht => ?_).aestronglyMeasurable
      measurableSet_Ioo
    exact continuousAt_rpow_const _ _ (Or.inl ht.1.ne')
  · apply HasFiniteIntegral.mono'
    · show HasFiniteIntegral (fun t => d * t ^ (s - b - 1)) _
      refine (Integrable.hasFiniteIntegral ?_).const_mul _
      rw [← IntegrableOn, ← integrableOn_Ioc_iff_integrableOn_Ioo, ←
        intervalIntegrable_iff_integrableOn_Ioc_of_le hε.le]
      exact intervalIntegral.intervalIntegrable_rpow' (by linarith)
    · refine (ae_restrict_iff' measurableSet_Ioo).mpr (Eventually.of_forall fun t ht => ?_)
      rw [mul_comm, norm_mul]
      specialize hε' _ ht.1
      · rw [dist_eq_norm, sub_zero, norm_of_nonneg (le_of_lt ht.1)]
        exact ht.2
      · calc _ ≤ d * ‖t ^ (-b)‖ * ‖t ^ (s - 1)‖ := by gcongr
          _ = d * t ^ (s - b - 1) := ?_
        simp_rw [norm_of_nonneg (rpow_nonneg (le_of_lt ht.1) _), mul_assoc]
        rw [← rpow_add ht.1]
        congr 2
        abel

/-- If `f` is a locally integrable real-valued function on `Ioi 0` which is `O(x ^ (-a))` at `∞`
and `O(x ^ (-b))` at `0`, then its Mellin transform integral converges for `b < s < a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variante13e363caef55dfc83bd11cfd8b0107b5cea9c38ad3737f72079127cc0167940.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variante13e363caef55dfc83bd11cfd8b0107b5cea9c38ad3737f72079127cc0167940.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ac40eca236d0582f2c5da6432498f6bc604fd20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
