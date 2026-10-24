# norm_deriv_zeta_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20cbdd6a-d9bb-09c0-9e44-db6d232bea8a",
  "kind": "lemma",
  "lexical_name": "norm_deriv_zeta_le",
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
  "slug": "norm-deriv-zeta-le--b5364541a688a9788186ba67",
  "source": {
    "blob": "fdfcd632bf3910659a1a69583ecc1b8706a66d09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 107,
    "path": "GRWTSK/Analysis/SpecialFunctions/Y/Variant019c40d09ce524012341c6d2b4b940fa6d618369e4beb7a58bbaa2e53ce8df08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5364541a688a9788186ba6783d8ad6026986d928a4c821d4f7338440da096a6",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Y/Variant019c40d09ce524012341c6d2b4b940fa6d618369e4beb7a58bbaa2e53ce8df08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20cbdd6a-d9bb-09c0-9e44-db6d232bea8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_deriv_zeta_le {C : ℝ} (hC : 0 < C)
    (hζ : ∀ s : ℂ, (1 / 16 : ℝ) ≤ s.re → 1 ≤ |s.im| → ‖riemannZeta s‖ ≤ C * |s.im|)
    {s : ℂ} (hre : 1 / 8 ≤ s.re) (him : 2 ≤ |s.im|) :
    ‖deriv riemannZeta s‖ ≤ 24 * C * |s.im| := by
  have hR : (0 : ℝ) < 1 / 16 := by norm_num
  -- on the circle: Re ≥ 1/16, 1 ≤ |Im| ≤ |Im s| + 1/16
  have hsph : ∀ z ∈ sphere s (1 / 16), ‖riemannZeta z‖ ≤ C * (|s.im| + 1) := by
    intro z hz
    rw [mem_sphere, Complex.dist_eq] at hz
    have hre' : |(z - s).re| ≤ 1 / 16 := by rw [← hz]; exact Complex.abs_re_le_norm _
    have him' : |(z - s).im| ≤ 1 / 16 := by rw [← hz]; exact Complex.abs_im_le_norm _
    simp only [Complex.sub_re, Complex.sub_im] at hre' him'
    rw [abs_le] at hre' him'
    have h1 : (1 / 16 : ℝ) ≤ z.re := by linarith [hre'.1]
    have h2 : 1 ≤ |z.im| := by
      rcases le_abs'.mp him with h | h
      · rw [abs_of_neg (by linarith [him'.2])]; linarith [him'.2]
      · rw [abs_of_pos (by linarith [him'.1])]; linarith [him'.1]
    have h3 : |z.im| ≤ |s.im| + 1 := by
      have h5 : |z.im - s.im| ≤ 1 / 16 := abs_le.mpr ⟨him'.1, him'.2⟩
      have h6 := abs_sub_abs_le_abs_sub z.im s.im
      linarith
    calc ‖riemannZeta z‖ ≤ C * |z.im| := hζ z h1 h2
      _ ≤ C * (|s.im| + 1) := by gcongr
  have hdiff : DiffContOnCl ℂ riemannZeta (ball s (1 / 16)) := by
    apply DifferentiableOn.diffContOnCl
    rw [closure_ball s (by norm_num)]
    intro z hz
    apply (differentiableAt_riemannZeta ?_).differentiableWithinAt
    intro hz1
    rw [mem_closedBall, Complex.dist_eq, hz1] at hz
    have : |((1 : ℂ) - s).im| ≤ 1 / 16 := le_trans (Complex.abs_im_le_norm _) hz
    simp at this
    rw [abs_le] at this
    have : |s.im| ≤ 1 / 16 := abs_le.mpr ⟨by linarith, by linarith⟩
    linarith
  have key := Complex.norm_deriv_le_of_forall_mem_sphere_norm_le hR hdiff hsph
  calc ‖deriv riemannZeta s‖ ≤ C * (|s.im| + 1) / (1 / 16) := key
    _ = 16 * C * (|s.im| + 1) := by ring
    _ ≤ 24 * C * |s.im| := by nlinarith

/-- ‖Γℝ′/Γℝ(s)‖ ≤ 4|Im s| for 0 < Re s ≤ 4, |Im s| ≥ 2 (crude). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Y/Variant019c40d09ce524012341c6d2b4b940fa6d618369e4beb7a58bbaa2e53ce8df08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Y/Variant019c40d09ce524012341c6d2b4b940fa6d618369e4beb7a58bbaa2e53ce8df08.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdfcd632bf3910659a1a69583ecc1b8706a66d09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
