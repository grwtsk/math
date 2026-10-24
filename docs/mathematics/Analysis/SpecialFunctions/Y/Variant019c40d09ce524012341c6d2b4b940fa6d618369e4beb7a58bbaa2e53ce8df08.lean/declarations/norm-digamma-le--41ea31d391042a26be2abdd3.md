# norm_digamma_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f016c60b-5387-4a4c-9f81-3568a8cbddd8",
  "kind": "lemma",
  "lexical_name": "norm_digamma_le",
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
  "slug": "norm-digamma-le--41ea31d391042a26be2abdd3",
  "source": {
    "blob": "fdfcd632bf3910659a1a69583ecc1b8706a66d09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 44,
    "path": "GRWTSK/Analysis/SpecialFunctions/Y/Variant019c40d09ce524012341c6d2b4b940fa6d618369e4beb7a58bbaa2e53ce8df08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41ea31d391042a26be2abdd3935ecef83c378aaa01ff88a98911b27775dfd2fb",
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

Occurrence: `result:f016c60b-5387-4a4c-9f81-3568a8cbddd8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_digamma_le {w : ℂ} (hw : 0 < w.re) (hw' : 1 ≤ |w.im|) :
    ‖Complex.digamma w‖ ≤ ‖w‖ + 8 := by
  have h := Zeta23.StirlingVert.digamma_stirling hw (by linarith)
  have him2 : 1 ≤ w.im ^ 2 := by
    have := sq_abs w.im
    nlinarith [abs_nonneg w.im]
  have h3 : 3 / w.im ^ 2 ≤ 3 := by
    rw [div_le_iff₀ (by positivity)]
    nlinarith
  have hw1 : 1 ≤ ‖w‖ := le_trans hw' (Complex.abs_im_le_norm w)
  have hw0 : w ≠ 0 := fun h0 => by rw [h0] at hw; simp at hw
  have hlog : ‖Complex.log w‖ ≤ ‖w‖ + Real.pi := by
    calc ‖Complex.log w‖ ≤ |(Complex.log w).re| + |(Complex.log w).im| :=
          Complex.norm_le_abs_re_add_abs_im _
      _ = |Real.log ‖w‖| + |Complex.arg w| := by rw [Complex.log_re, Complex.log_im]
      _ ≤ ‖w‖ + Real.pi := by
          apply add_le_add _ (Complex.abs_arg_le_pi w)
          rw [abs_of_nonneg (Real.log_nonneg hw1)]
          linarith [Real.log_le_sub_one_of_pos (by linarith : (0:ℝ) < ‖w‖)]
  have hinv : ‖(1 / 2 : ℂ) / w‖ ≤ 1 / 2 := by
    rw [norm_div]
    have : ‖(1 / 2 : ℂ)‖ = 1 / 2 := by norm_num
    rw [this, div_le_iff₀ (by linarith)]
    nlinarith
  calc ‖Complex.digamma w‖
      = ‖(Complex.digamma w - Complex.log w + (1 / 2 : ℂ) / w) + Complex.log w - (1 / 2 : ℂ) / w‖ := by
        ring_nf
    _ ≤ ‖Complex.digamma w - Complex.log w + (1 / 2 : ℂ) / w‖ + ‖Complex.log w‖ + ‖(1 / 2 : ℂ) / w‖ := by
        refine le_trans (norm_sub_le _ _) ?_
        gcongr
        exact norm_add_le _ _
    _ ≤ 3 + (‖w‖ + Real.pi) + 1 / 2 := by linarith
    _ ≤ ‖w‖ + 8 := by linarith [Real.pi_lt_four]

/-- Re ψ(w) ≥ log |Im w| − 4 for Re w > 0, |Im w| ≥ 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Y/Variant019c40d09ce524012341c6d2b4b940fa6d618369e4beb7a58bbaa2e53ce8df08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Y/Variant019c40d09ce524012341c6d2b4b940fa6d618369e4beb7a58bbaa2e53ce8df08.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdfcd632bf3910659a1a69583ecc1b8706a66d09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
