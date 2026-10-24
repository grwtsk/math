# AddMonoidHom.continuous_of_isBounded_nhds_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9213d54f-fa02-2443-7889-66340d1ad7dc",
  "kind": "lemma",
  "lexical_name": "AddMonoidHom.continuous_of_isBounded_nhds_zero",
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
  "slug": "addmonoidhom-continuous-of-isbounded-nhds-zero--144def35db42a29754eb5ad4",
  "source": {
    "blob": "343df2571d6445e1c6b7188fdfe11dda639d55be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 812,
    "line": 782,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantacef8f6d856223660765ef15b98bf4c3b07e62e4281b25559af7e812e8c346dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:144def35db42a29754eb5ad4408be35a06ac37b0c5b993f8c564b640f93ef34d",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantacef8f6d856223660765ef15b98bf4c3b07e62e4281b25559af7e812e8c346dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9213d54f-fa02-2443-7889-66340d1ad7dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 782–812.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma AddMonoidHom.continuous_of_isBounded_nhds_zero (f : G →+ H) (hs : s ∈ 𝓝 (0 : G))
    (hbounded : IsBounded (f '' s)) : Continuous f := by
  obtain ⟨δ, hδ, hUε⟩ := Metric.mem_nhds_iff.mp hs
  obtain ⟨C, hC⟩ := (isBounded_iff_subset_ball 0).1 (hbounded.subset <| image_mono hUε)
  refine continuous_of_continuousAt_zero _ (continuousAt_iff.2 fun ε (hε : _ < _) => ?_)
  simp only [dist_zero_right, map_zero]
  simp only [subset_def, mem_image, mem_ball, dist_zero_right, forall_exists_index, and_imp,
    forall_apply_eq_imp_iff₂] at hC
  have hC₀ : 0 < C := (norm_nonneg _).trans_lt <| hC 0 (by simpa)
  obtain ⟨n, hn⟩ := exists_nat_gt (C / ε)
  have hnpos : 0 < (n : ℝ) := (div_pos hC₀ hε).trans hn
  have hn₀ : n ≠ 0 := by rintro rfl; simp at hnpos
  refine ⟨δ / n, div_pos hδ hnpos, fun {x} hxδ => ?_⟩
  calc
    ‖f x‖
    _ = ‖(n : ℝ)⁻¹ • f (n • x)‖ := by simp [← Nat.cast_smul_eq_nsmul ℝ, hn₀]
    _ ≤ ‖(n : ℝ)⁻¹‖ * ‖f (n • x)‖ := norm_smul_le ..
    _ < ‖(n : ℝ)⁻¹‖ * C := by
      gcongr
      · simpa [pos_iff_ne_zero]
      · refine hC _ <| norm_nsmul_le.trans_lt ?_
        simpa only [norm_mul, Real.norm_natCast, lt_div_iff₀ hnpos, mul_comm] using hxδ
    _ = (n : ℝ)⁻¹ * C := by simp
    _ < (C / ε : ℝ)⁻¹ * C := by gcongr
    _ = ε := by simp [hC₀.ne']

attribute [local instance] IsUnital.toSeminormedRing in
/-- A unital non-unital normed algebra is a normed algebra.

This constructor is primarily intended to be used within proofs since it creates bad definitional
equalities. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantacef8f6d856223660765ef15b98bf4c3b07e62e4281b25559af7e812e8c346dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantacef8f6d856223660765ef15b98bf4c3b07e62e4281b25559af7e812e8c346dc.lean#L782).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `343df2571d6445e1c6b7188fdfe11dda639d55be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
