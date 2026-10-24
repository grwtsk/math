# bilinLeftCLM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd02fcfcf6f63dc26772c85cb8e29a82ce5337ce7e996b3bfdcfe06d8a1e3f30",
  "kind": "def",
  "lexical_name": "bilinLeftCLM",
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
  "slug": "bilinleftclm--04e5d51b4d0ff6718e4dc24f",
  "source": {
    "blob": "e40ab3ba02ca5ed3d5a262fe8ddf049c8c28b72e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1103,
    "line": 1065,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ContDiffMapSupportedIn/Variant0d3442625a6525f184e8d5f5b5712b3af472ad02c0ac29d6c8cc0d8cb91d151e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:04e5d51b4d0ff6718e4dc24f84517c0c40df47f7d79a139da7d9c4bfdacf26e4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ContDiffMapSupportedIn/Variant0d3442625a6525f184e8d5f5b5712b3af472ad02c0ac29d6c8cc0d8cb91d151e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd02fcfcf6f63dc26772c85cb8e29a82ce5337ce7e996b3bfdcfe06d8a1e3f30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1065–1103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def bilinLeftCLM (B : F₁ →L[𝕜] F₂ →L[𝕜] F₃) {g : E → F₂} (hg : ContDiff ℝ n g) :
    𝓓^{n}_{K}(E, F₁) →L[𝕜] 𝓓^{n}_{K}(E, F₃) :=
  ContDiffMapSupportedIn.mkCLM 𝕜 (fun φ x ↦ B (φ x) (g x)) ?hadd ?hsmul (fun φ ↦ ?hsmooth)
    (fun φ x hx ↦ ?hsupp) (fun k hk ↦ ?hbound)
where finally
  case hadd | hsmul => intros; simp
  case hsmooth =>
    exact (B.bilinearRestrictScalars ℝ).isBoundedBilinearMap.contDiff.comp (φ.contDiff.prodMk hg)
  case hsupp => simp only [φ.zero_on_compl hx, Pi.zero_apply, map_zero, zero_apply]
  case hbound =>
    have hcont : Continuous fun x ↦ (Finset.range (k + 1)).sup' Finset.nonempty_range_add_one
        (fun i ↦ ‖iteratedFDeriv ℝ i g x‖) :=
      Continuous.finset_sup'_apply Finset.nonempty_range_add_one fun i hi ↦
        (hg.continuous_iteratedFDeriv (WithTop.coe_le_coe.2
          (le_trans (WithTop.coe_le_coe.2 (mem_range_succ_iff.mp hi)) hk))).norm
    obtain ⟨C₀, hC₀⟩ := K.isCompact.exists_bound_of_continuousOn hcont.continuousOn
    have hgC₀ : ∀ i ≤ k, ∀ x ∈ K, ‖iteratedFDeriv ℝ i g x‖ ≤ ‖C₀‖ := fun i hi x hx ↦
      (Finset.le_sup' _ (Finset.mem_range_succ_iff.2 hi)).trans
        ((Real.le_norm_self _).trans ((hC₀ x hx).trans (Real.le_norm_self C₀)))
    refine ⟨Finset.Iic k, ‖B‖ * 2 ^ k * ‖C₀‖, by positivity, fun φ x hx ↦ ?_⟩
    calc
      ‖iteratedFDeriv ℝ k (fun y ↦ B (φ y) (g y)) x‖
        ≤ ‖B‖ * ∑ i ∈ Finset.range (k + 1), (k.choose i : ℝ) * ‖iteratedFDeriv ℝ i φ x‖ *
            ‖iteratedFDeriv ℝ (k - i) g x‖ := by
          simpa using (B.bilinearRestrictScalars ℝ).norm_iteratedFDeriv_le_of_bilinear
            φ.contDiff hg x (mod_cast hk)
      _ ≤ ‖B‖ * ∑ i ∈ Finset.range (k + 1), (k.choose i : ℝ) *
            ((Finset.Iic k).sup fun m ↦ N[𝕜]_{K, n, m}) φ * ‖C₀‖ := by
          gcongr with i hi
          · exact (norm_iteratedFDeriv_apply_le_seminorm 𝕜
              ((WithTop.coe_le_coe.2 (mem_range_succ_iff.mp hi)).trans hk)).trans
              (Seminorm.le_finset_sup_apply (Finset.mem_Iic.2 (mem_range_succ_iff.mp hi)))
          · exact hgC₀ (k - i) (Nat.sub_le k i) x hx
      _ = ‖B‖ * 2 ^ k * ‖C₀‖ * ((Finset.Iic k).sup fun m ↦ N[𝕜]_{K, n, m}) φ := by
          simp_rw [← Finset.sum_mul, ← Nat.cast_sum, Nat.sum_range_choose]
          push_cast
          ring

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ContDiffMapSupportedIn/Variant0d3442625a6525f184e8d5f5b5712b3af472ad02c0ac29d6c8cc0d8cb91d151e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ContDiffMapSupportedIn/Variant0d3442625a6525f184e8d5f5b5712b3af472ad02c0ac29d6c8cc0d8cb91d151e.lean#L1065).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e40ab3ba02ca5ed3d5a262fe8ddf049c8c28b72e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
