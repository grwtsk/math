# radius_rightInv_pos_of_radius_pos_aux2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d14faf2-61e9-ee48-4029-6bb54dd8e64d",
  "kind": "theorem",
  "lexical_name": "radius_rightInv_pos_of_radius_pos_aux2",
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
  "slug": "radius-rightinv-pos-of-radius-pos-aux2--7034b6ab16f3549b834ff51a",
  "source": {
    "blob": "b7b66d12286c6bf8da26e3d2d443224f465865bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 512,
    "line": 452,
    "path": "GRWTSK/Analysis/Inverse/Variant87dd451452f9601f1384a052e8ebdcd47edc20e3cf3809c32d753ffc915667d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7034b6ab16f3549b834ff51ac8373f306400a3823d7a26666c2da482b3d91304",
  "verification": {
    "reference": "docs/verification/Analysis/Inverse/Variant87dd451452f9601f1384a052e8ebdcd47edc20e3cf3809c32d753ffc915667d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d14faf2-61e9-ee48-4029-6bb54dd8e64d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 452–512.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem radius_rightInv_pos_of_radius_pos_aux2 {n : ℕ} (hn : 2 ≤ n + 1)
    (p : FormalMultilinearSeries 𝕜 E F) (i : E ≃L[𝕜] F) {r a C : ℝ} (hr : 0 ≤ r) (ha : 0 ≤ a)
    (hC : 0 ≤ C) (hp : ∀ n, ‖p n‖ ≤ C * r ^ n) :
    ∑ k in Ico 1 (n + 1), a ^ k * ‖p.rightInv i k‖ ≤
      ‖(i.symm : F →L[𝕜] E)‖ * a +
        ‖(i.symm : F →L[𝕜] E)‖ * C *
          ∑ k in Ico 2 (n + 1), (r * ∑ j in Ico 1 n, a ^ j * ‖p.rightInv i j‖) ^ k :=
  let I := ‖(i.symm : F →L[𝕜] E)‖
  calc
    ∑ k in Ico 1 (n + 1), a ^ k * ‖p.rightInv i k‖ =
        a * I + ∑ k in Ico 2 (n + 1), a ^ k * ‖p.rightInv i k‖ := by
      simp only [LinearIsometryEquiv.norm_map, pow_one, rightInv_coeff_one,
        show Ico (1 : ℕ) 2 = {1} from Nat.Ico_succ_singleton 1,
        sum_singleton, ← sum_Ico_consecutive _ one_le_two hn]
    _ =
        a * I +
          ∑ k in Ico 2 (n + 1),
            a ^ k *
              ‖(i.symm : F →L[𝕜] E).compContinuousMultilinearMap
                  (∑ c in ({c | 1 < Composition.length c}.toFinset : Finset (Composition k)),
                    p.compAlongComposition (p.rightInv i) c)‖ := by
      congr 1
      apply sum_congr rfl fun j hj => ?_
      rw [rightInv_coeff _ _ _ (mem_Ico.1 hj).1, norm_neg]
    _ ≤
        a * ‖(i.symm : F →L[𝕜] E)‖ +
          ∑ k in Ico 2 (n + 1),
            a ^ k *
              (I *
                ∑ c in ({c | 1 < Composition.length c}.toFinset : Finset (Composition k)),
                  C * r ^ c.length * ∏ j, ‖p.rightInv i (c.blocksFun j)‖) := by
      apply_rules [add_le_add, le_refl, sum_le_sum fun j hj => ?_, mul_le_mul_of_nonneg_left,
        pow_nonneg, ha]
      apply (ContinuousLinearMap.norm_compContinuousMultilinearMap_le _ _).trans
      apply mul_le_mul_of_nonneg_left _ (norm_nonneg _)
      apply (norm_sum_le _ _).trans
      apply sum_le_sum fun c _ => ?_
      apply (compAlongComposition_norm _ _ _).trans
      apply mul_le_mul_of_nonneg_right (hp _)
      exact prod_nonneg fun j _ => norm_nonneg _
    _ =
        I * a +
          I * C *
            ∑ k in Ico 2 (n + 1),
              a ^ k *
                ∑ c in ({c | 1 < Composition.length c}.toFinset : Finset (Composition k)),
                  r ^ c.length * ∏ j, ‖p.rightInv i (c.blocksFun j)‖ := by
      simp_rw [mul_assoc C, ← mul_sum, ← mul_assoc, mul_comm _ ‖(i.symm : F →L[𝕜] E)‖, mul_assoc,
        ← mul_sum, ← mul_assoc, mul_comm _ C, mul_assoc, ← mul_sum]
      ring
    _ ≤ I * a + I * C *
        ∑ k in Ico 2 (n + 1), (r * ∑ j in Ico 1 n, a ^ j * ‖p.rightInv i j‖) ^ k := by
      apply_rules [add_le_add, le_refl, mul_le_mul_of_nonneg_left, norm_nonneg, hC, mul_nonneg]
      simp_rw [mul_pow]
      apply
        radius_right_inv_pos_of_radius_pos_aux1 n (fun k => ‖p.rightInv i k‖)
          (fun k => norm_nonneg _) hr ha
#align formal_multilinear_series.radius_right_inv_pos_of_radius_pos_aux2 FormalMultilinearSeries.radius_rightInv_pos_of_radius_pos_aux2

/-- If a a formal multilinear series has a positive radius of convergence, then its right inverse
also has a positive radius of convergence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Inverse/Variant87dd451452f9601f1384a052e8ebdcd47edc20e3cf3809c32d753ffc915667d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Inverse/Variant87dd451452f9601f1384a052e8ebdcd47edc20e3cf3809c32d753ffc915667d5.lean#L452).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7b66d12286c6bf8da26e3d2d443224f465865bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
