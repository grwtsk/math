# norm_logDeriv_xi_le_far

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ff40bdf-6c29-cbdc-cd7f-b6de046ef259",
  "kind": "theorem",
  "lexical_name": "norm_logDeriv_xi_le_far",
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
  "slug": "norm-logderiv-xi-le-far--8f372888f8286b9ec14d8b67",
  "source": {
    "blob": "0ae0a2fe106d4d5a5bcb06102dc2f0a602bda9e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 604,
    "line": 568,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f372888f8286b9ec14d8b67f256bd6002f2e036b89fb8a7994e9a56dbedd714",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ff40bdf-6c29-cbdc-cd7f-b6de046ef259`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 568–604.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_logDeriv_xi_le_far : ∃ C : ℝ, 0 < C ∧ ∀ w : ℂ, 3 / 2 ≤ w.re →
    ‖logDeriv xi w‖ ≤ C * Real.log (2 + ‖w‖) := by
  obtain ⟨C, hC, hΓ⟩ := norm_logDeriv_Gammaℝ_le_far
  obtain ⟨M, hM0, hζ⟩ := norm_logDeriv_zeta_le_far
  have hlog2 : 0 < Real.log 2 := Real.log_pos one_lt_two
  refine ⟨C + (3 + M) / Real.log 2, by positivity, fun w hw => ?_⟩
  have hL : Real.log 2 ≤ Real.log (2 + ‖w‖) :=
    Real.log_le_log two_pos (by linarith [norm_nonneg w])
  have hw0 : 0 < w.re := by linarith
  have hw1 : w ≠ 1 := fun h => by rw [h, Complex.one_re] at hw; norm_num at hw
  have hζne : riemannZeta w ≠ 0 := riemannZeta_ne_zero_of_one_le_re (by linarith)
  rw [logDeriv_xi_eq hw0 hw1 hζne, Lfn]
  have hn1 : ‖1 / w‖ ≤ 1 := by
    rw [norm_div, norm_one, div_le_one (by
      linarith [le_trans (le_abs_self _) (Complex.abs_re_le_norm w)])]
    linarith [le_trans (le_abs_self _) (Complex.abs_re_le_norm w)]
  have hn2 : ‖1 / (w - 1)‖ ≤ 2 := by
    have : 1 / 2 ≤ ‖w - 1‖ := by
      calc (1 / 2 : ℝ) ≤ |(w - 1).re| := by
            rw [Complex.sub_re, Complex.one_re, abs_of_pos (by linarith)]; linarith
        _ ≤ ‖w - 1‖ := Complex.abs_re_le_norm _
    rw [norm_div, norm_one, div_le_iff₀ (by linarith)]
    linarith
  calc ‖logDeriv Gammaℝ w + 1 / w + 1 / (w - 1) + logDeriv riemannZeta w‖
      ≤ ‖logDeriv Gammaℝ w‖ + ‖1 / w‖ + ‖1 / (w - 1)‖ + ‖logDeriv riemannZeta w‖ := by
        refine (norm_add_le _ _).trans (add_le_add ((norm_add_le _ _).trans
          (add_le_add (norm_add_le _ _) le_rfl)) le_rfl)
    _ ≤ C * Real.log (2 + ‖w‖) + 1 + 2 + M := by
        linarith [hΓ w (by linarith), hζ w hw]
    _ = C * Real.log (2 + ‖w‖) + ((3 + M) / Real.log 2) * Real.log 2 := by field_simp; ring
    _ ≤ C * Real.log (2 + ‖w‖) + ((3 + M) / Real.log 2) * Real.log (2 + ‖w‖) := by
        have : 0 ≤ (3 + M) / Real.log 2 := by positivity
        nlinarith
    _ = (C + (3 + M) / Real.log 2) * Real.log (2 + ‖w‖) := by ring

/-- On the horizontal segments Im w = ±R, −1/2 ≤ Re w ≤ 3/2 of a good height R (ζ ≠ 0 and
‖ζ′/ζ‖ ≤ L on Im = ±R, 1/2 ≤ Re ≤ 2): ‖ξ′/ξ(w)‖ ≤ C (L + log(2 + R)). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean#L568).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ae0a2fe106d4d5a5bcb06102dc2f0a602bda9e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
