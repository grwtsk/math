# ramp_second_abel_atom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0c42f09290414d90b352cd246d303a54d94c5ae6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 113,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a345fc8ccfe1365d7f4befca2aa8b5b229b2024c7334de7e1d74e28ea21e526.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2fbf8404-fda9-8f98-9673-6855fafc5071",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:329c7fdf-8212-b1dc-6f21-f6a7eb088ff8",
  "kind": "theorem",
  "lexical_name": "ramp_second_abel_atom",
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
  "slug": "ramp-second-abel-atom--f65d68cd575101e45ada9013",
  "source": {
    "blob": "0c42f09290414d90b352cd246d303a54d94c5ae6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 113,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variant4a345fc8ccfe1365d7f4befca2aa8b5b229b2024c7334de7e1d74e28ea21e526.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f65d68cd575101e45ada9013a5ceeb05943c5f1634b4af002075fe3c1d9bfe21",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variant4a345fc8ccfe1365d7f4befca2aa8b5b229b2024c7334de7e1d74e28ea21e526.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:329c7fdf-8212-b1dc-6f21-f6a7eb088ff8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ramp_second_abel_atom (F : ℝ → ℝ) (hF : ContDiff ℝ 2 F)
    (B r : ℝ) (hr : 0 ≤ r) (hrB : r ≤ B) (hFB : F B = 0)
    (hF'B : deriv F B = 0) :
    (∫ t in (0 : ℝ)..B, max (t - r) 0 * deriv (deriv F) t) = F r := by
  have hFc : Continuous (deriv F) := hF.continuous_deriv (by norm_num)
  have hFd : Differentiable ℝ F := hF.differentiable (by norm_num)
  have hFdd : Differentiable ℝ (deriv F) := hF.differentiable_deriv_two
  have hFcc : Continuous (deriv (deriv F)) :=
    (hF.deriv' (n := 1)).continuous_deriv_one
  have hc : Continuous (fun t ↦ max (t - r) 0 * deriv (deriv F) t) := by
    fun_prop
  rw [← intervalIntegral.integral_add_adjacent_intervals
    (hc.intervalIntegrable 0 r) (hc.intervalIntegrable r B)]
  have hz : (∫ t in (0 : ℝ)..r, max (t - r) 0 * deriv (deriv F) t) = 0 := by
    calc
      _ = ∫ _ in (0 : ℝ)..r, (0 : ℝ) := by
        apply intervalIntegral.integral_congr
        intro t ht
        have htr := (uIcc_of_le hr ▸ ht).2
        simp [max_eq_right (sub_nonpos.mpr htr)]
      _ = 0 := intervalIntegral.integral_zero
  rw [hz, zero_add]
  have he : (∫ t in r..B, max (t - r) 0 * deriv (deriv F) t) =
      ∫ t in r..B, (t - r) * deriv (deriv F) t := by
    apply intervalIntegral.integral_congr
    intro t ht
    dsimp only
    rw [max_eq_left (sub_nonneg.mpr (uIcc_of_le hrB ▸ ht).1)]
  rw [he]
  have hd (t : ℝ) : HasDerivAt (fun x ↦ (x - r) * deriv F x - F x)
      ((t - r) * deriv (deriv F) t) t := by
    have hd := (((hasDerivAt_id t).sub_const r).mul (hFdd t).hasDerivAt).sub
      (hFd t).hasDerivAt
    apply hd.congr_deriv
    dsimp
    ring
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ ↦ hd t)
    (((continuous_id.sub continuous_const).mul hFcc).intervalIntegrable r B)]
  simp [hFB, hF'B]

/-- The smooth continuum ramp contributes exactly the exponential reference. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variant4a345fc8ccfe1365d7f4befca2aa8b5b229b2024c7334de7e1d74e28ea21e526.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variant4a345fc8ccfe1365d7f4befca2aa8b5b229b2024c7334de7e1d74e28ea21e526.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c42f09290414d90b352cd246d303a54d94c5ae6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
