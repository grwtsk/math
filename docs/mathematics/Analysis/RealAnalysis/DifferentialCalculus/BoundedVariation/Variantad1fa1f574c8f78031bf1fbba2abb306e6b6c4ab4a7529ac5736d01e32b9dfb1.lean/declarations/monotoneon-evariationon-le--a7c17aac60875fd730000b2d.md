# MonotoneOn.eVariationOn_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d038db88-3c4c-3390-219d-457bc8155160",
  "kind": "theorem",
  "lexical_name": "MonotoneOn.eVariationOn_le",
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
  "slug": "monotoneon-evariationon-le--a7c17aac60875fd730000b2d",
  "source": {
    "blob": "c6a4ff24ac48d60f9044cce63959452716ad2429",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 637,
    "line": 617,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variantad1fa1f574c8f78031bf1fbba2abb306e6b6c4ab4a7529ac5736d01e32b9dfb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7c17aac60875fd730000b2d3fb7c0378278136cd6c399512283e5bb4b4338c5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variantad1fa1f574c8f78031bf1fbba2abb306e6b6c4ab4a7529ac5736d01e32b9dfb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d038db88-3c4c-3390-219d-457bc8155160`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 617–637.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MonotoneOn.eVariationOn_le {f : α → ℝ} {s : Set α} (hf : MonotoneOn f s) {a b : α}
    (as : a ∈ s) (bs : b ∈ s) : eVariationOn f (s ∩ Icc a b) ≤ ENNReal.ofReal (f b - f a) := by
  apply iSup_le _
  rintro ⟨n, ⟨u, hu, us⟩⟩
  calc
    (∑ i in Finset.range n, edist (f (u (i + 1))) (f (u i))) =
        ∑ i in Finset.range n, ENNReal.ofReal (f (u (i + 1)) - f (u i)) := by
      refine Finset.sum_congr rfl fun i hi => ?_
      simp only [Finset.mem_range] at hi
      rw [edist_dist, Real.dist_eq, abs_of_nonneg]
      exact sub_nonneg_of_le (hf (us i).1 (us (i + 1)).1 (hu (Nat.le_succ _)))
    _ = ENNReal.ofReal (∑ i in Finset.range n, (f (u (i + 1)) - f (u i))) := by
      rw [ENNReal.ofReal_sum_of_nonneg]
      intro i _
      exact sub_nonneg_of_le (hf (us i).1 (us (i + 1)).1 (hu (Nat.le_succ _)))
    _ = ENNReal.ofReal (f (u n) - f (u 0)) := by rw [Finset.sum_range_sub fun i => f (u i)]
    _ ≤ ENNReal.ofReal (f b - f a) := by
      apply ENNReal.ofReal_le_ofReal
      exact sub_le_sub (hf (us n).1 bs (us n).2.2) (hf as (us 0).1 (us 0).2.1)
#align monotone_on.evariation_on_le MonotoneOn.eVariationOn_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variantad1fa1f574c8f78031bf1fbba2abb306e6b6c4ab4a7529ac5736d01e32b9dfb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variantad1fa1f574c8f78031bf1fbba2abb306e6b6c4ab4a7529ac5736d01e32b9dfb1.lean#L617).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6a4ff24ac48d60f9044cce63959452716ad2429` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
