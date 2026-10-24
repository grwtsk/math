# zero_sum_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:003c549f-db89-59dc-3c5d-f997677bda32",
  "kind": "theorem",
  "lexical_name": "zero_sum_tendsto",
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
  "slug": "zero-sum-tendsto--c52bb28a8c43a81d6e8ae688",
  "source": {
    "blob": "351391415cdb800d574168961b0b3bef1d55f53a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 208,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DominatedDescent/Variantc2dd65e66cfdf5201a5a2d99427dd7e80055e75f903c5c2f6df4a8ae1054de08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c52bb28a8c43a81d6e8ae6883561f3955036ce75e89b072fd41b910efedcaf80",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DominatedDescent/Variantc2dd65e66cfdf5201a5a2d99427dd7e80055e75f903c5c2f6df4a8ae1054de08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:003c549f-db89-59dc-3c5d-f997677bda32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zero_sum_tendsto {ι : Type*} {l : Filter ι}
    (A : ℝ) (hA : 1 ≤ A) (ε : ι → ℝ) (hε : ∀ i, 0 < ε i)
    (hlim : Tendsto ε l (𝓝 0)) :
    Tendsto (fun i ↦ ∑' o : ZeroOccurrence,
      smoothedBilateralTransform A (ε i) (hε i) (shiftedValue o) ^ 2) l
      (𝓝 (∑' o : ZeroOccurrence, bilateralTransform A (shiftedValue o) ^ 2)) := by
  apply tendsto_tsum_of_dominated_convergence
    ((source_transform_square_norms_summable A hA).mul_left (Real.exp 1))
    (fun o ↦ (smoothed_transform_tendsto A hA ε hε hlim (shiftedValue o)).pow 2)
  have hsmall : ∀ᶠ i in l, ε i ≤ 1 :=
    ((tendsto_order.1 hlim).2 1 (by norm_num)).mono fun _ h ↦ h.le
  filter_upwards [hsmall] with i hi o
  exact (smoothed_square_norm_le A (ε i) hA (hε i) o).trans
    (mul_le_mul_of_nonneg_right (Real.exp_le_exp.mpr hi) (norm_nonneg _))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DominatedDescent/Variantc2dd65e66cfdf5201a5a2d99427dd7e80055e75f903c5c2f6df4a8ae1054de08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DominatedDescent/Variantc2dd65e66cfdf5201a5a2d99427dd7e80055e75f903c5c2f6df4a8ae1054de08.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `351391415cdb800d574168961b0b3bef1d55f53a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
