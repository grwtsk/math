# norm_deriv_digamma_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9cb6e7b1-a4ce-62d7-0c2d-9f1d9f177beb",
  "kind": "theorem",
  "lexical_name": "norm_deriv_digamma_le",
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
  "slug": "norm-deriv-digamma-le--c0632901a2997554a5e8fac2",
  "source": {
    "blob": "3e3b9bfcde9101b8f3c28b140c8bb809278cf521",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 581,
    "line": 551,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantafd502217358c13db2a0aea95f2952eeef14675e7393d478a671591e99d9dd0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0632901a2997554a5e8fac237d912b1fb71036530fdb5c1a68838c7df732dae",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantafd502217358c13db2a0aea95f2952eeef14675e7393d478a671591e99d9dd0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9cb6e7b1-a4ce-62d7-0c2d-9f1d9f177beb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 551–581.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_deriv_digamma_le {w : ℂ} (hw : 0 < w.re) (hwi : 1 / 2 ≤ |w.im|) :
    ‖deriv Complex.digamma w‖ ≤ 1 / w.im ^ 2 + 2 / |w.im| := by
  have hwi0 : w.im ≠ 0 := by
    intro h; rw [h, abs_zero] at hwi; norm_num at hwi
  have hmem := mem_integerComplement_of_im_ne_zero hwi0
  have hsum := Zeta23.Stirling.hasSum_trigamma hmem
  -- summability of the norms
  have hshift : ∀ n : ℕ, ‖1 / (w + ((n + 1 : ℕ) : ℂ)) ^ 2‖ = 1 / ‖(n : ℂ) + 1 + w‖ ^ 2 := by
    intro n
    rw [norm_div, norm_one, norm_pow]
    congr 2
    push_cast; ring_nf
  have hs1 : Summable (fun n : ℕ => 1 / ‖(n : ℂ) + 1 + w‖ ^ 2) := Zeta23.StirlingVert.summable_inv_norm_sq hw
  have hsn : Summable (fun n : ℕ => ‖1 / (w + (n : ℂ)) ^ 2‖) := by
    rw [← summable_nat_add_iff 1]
    exact hs1.congr fun n => (hshift n).symm
  rw [← hsum.tsum_eq]
  calc ‖∑' n : ℕ, 1 / (w + (n : ℂ)) ^ 2‖ ≤ ∑' n : ℕ, ‖1 / (w + (n : ℂ)) ^ 2‖ := norm_tsum_le_tsum_norm hsn
    _ = ‖1 / (w + ((0:ℕ) : ℂ)) ^ 2‖ + ∑' n : ℕ, ‖1 / (w + ((n + 1 : ℕ) : ℂ)) ^ 2‖ := hsn.tsum_eq_zero_add
    _ = 1 / ‖w‖ ^ 2 + ∑' n : ℕ, 1 / ‖(n : ℂ) + 1 + w‖ ^ 2 := by
        congr 1
        · simp [norm_pow]
        · exact tsum_congr hshift
    _ ≤ 1 / w.im ^ 2 + 2 / |w.im| := by
        refine add_le_add ?_ (Zeta23.StirlingVert.tsum_inv_norm_sq_le hw hwi)
        have h1 : |w.im| ≤ ‖w‖ := Complex.abs_im_le_norm w
        have h2 : w.im ^ 2 ≤ ‖w‖ ^ 2 := by
          rw [← sq_abs]; exact pow_le_pow_left₀ (abs_nonneg _) h1 2
        exact div_le_div_of_nonneg_left zero_le_one (by positivity) h2

/-- **L′ on the line**: ‖L′(5/4+it)‖ ≤ 3/|t| for |t| ≥ 2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantafd502217358c13db2a0aea95f2952eeef14675e7393d478a671591e99d9dd0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantafd502217358c13db2a0aea95f2952eeef14675e7393d478a671591e99d9dd0f.lean#L551).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e3b9bfcde9101b8f3c28b140c8bb809278cf521` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
