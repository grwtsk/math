# correlation_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "24a9a6b1300992ad8ef8a7f2d3688963f8c38ab5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 431,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/04d36dc1687ad5cf59baa3dc3c1dd0021923e0a9bc0e1bc758821d33ebd76e88.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cbebdd85-75ec-2346-ad54-f7c5842d2c17",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:202cd1bf-2a7f-dbe9-25b7-a484ac8b22e7",
  "kind": "theorem",
  "lexical_name": "correlation_tendsto",
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
  "slug": "correlation-tendsto--dccb28f66db99c1240bfa27b",
  "source": {
    "blob": "24a9a6b1300992ad8ef8a7f2d3688963f8c38ab5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 469,
    "line": 431,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DominatedDescent/Variant04d36dc1687ad5cf59baa3dc3c1dd0021923e0a9bc0e1bc758821d33ebd76e88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dccb28f66db99c1240bfa27bffe73a51f0149511ee74a7f24d9968ec9db0d4e8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DominatedDescent/Variant04d36dc1687ad5cf59baa3dc3c1dd0021923e0a9bc0e1bc758821d33ebd76e88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:202cd1bf-2a7f-dbe9-25b7-a484ac8b22e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 431–469.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem correlation_tendsto {ι : Type*} {l : Filter ι}
    [l.IsCountablyGenerated]
    (A : ℝ) (hA : 1 ≤ A) (ε : ι → ℝ) (hε : ∀ i, 0 < ε i)
    (hlim : Tendsto ε l (𝓝 0)) (t : ℝ) :
    Tendsto (fun i ↦ ∫ x,
      smoothedTest A (ε i) (hε i) x *
        smoothedTest A (ε i) (hε i) (x - t)) l
      (𝓝 (∫ x, actualTest A x * actualTest A (x - t))) := by
  obtain ⟨M, hM, _, hbound⟩ := common_norm_bound A hA
  let bound : ℝ → ℝ :=
    (Icc (-A - 1) (A + 1)).indicator (fun _ ↦ M ^ 2)
  have hi : Integrable bound volume :=
    continuous_const.integrableOn_Icc.integrable_indicator measurableSet_Icc
  have hsmall : ∀ᶠ i in l, ε i ≤ 1 :=
    ((tendsto_order.1 hlim).2 1 (by norm_num)).mono fun _ h ↦ h.le
  have hdom : ∀ᶠ i in l, ∀ᵐ x ∂volume,
      ‖smoothedTest A (ε i) (hε i) x *
        smoothedTest A (ε i) (hε i) (x - t)‖ ≤ bound x := by
    filter_upwards [hsmall] with i hi
    exact Eventually.of_forall fun x ↦ by
      by_cases hx : x ∈ Icc (-A - 1) (A + 1)
      · simp only [bound, indicator_of_mem hx, norm_mul]
        calc
          _ ≤ M * M :=
            mul_le_mul (hbound (ε i) (hε i) x)
              (hbound (ε i) (hε i) (x - t))
              (norm_nonneg _) hM
          _ = _ := (pow_two M).symm
      · rw [smoothed_zero_outside_common A (ε i) hA (hε i) hi x hx]
        simp only [zero_mul, norm_zero, bound,
          indicator_of_notMem hx, le_refl]
  exact tendsto_integral_filter_of_dominated_convergence bound
    (Eventually.of_forall fun i ↦
      (smoothed_correlation_integrable A (ε i) t hA (hε i)).1)
    hdom hi
    (Eventually.of_forall fun x ↦
      (smoothedTest_tendsto A hA ε hε hlim x).mul
        (smoothedTest_tendsto A hA ε hε hlim (x - t)))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DominatedDescent/Variant04d36dc1687ad5cf59baa3dc3c1dd0021923e0a9bc0e1bc758821d33ebd76e88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DominatedDescent/Variant04d36dc1687ad5cf59baa3dc3c1dd0021923e0a9bc0e1bc758821d33ebd76e88.lean#L431).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24a9a6b1300992ad8ef8a7f2d3688963f8c38ab5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
