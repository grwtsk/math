# rect_invGammaℝ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1539cc26-bc52-4352-ca2b-b2ac388c322f",
  "kind": "theorem",
  "lexical_name": "rect_invGammaℝ",
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
  "slug": "rect-invgamma--0a0dedcd51c5f91173400537",
  "source": {
    "blob": "8afe5c752e7ee61c4c9c658b1e153f47d630cba0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 121,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variantdf9264753a2caa0cc0bd88c0d565855af85e93cc760c8c85169e3b225687b294.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a0dedcd51c5f911734005373fdb724ccbc58b316276dab0a9b149a9da8b3250",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variantdf9264753a2caa0cc0bd88c0d565855af85e93cc760c8c85169e3b225687b294.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1539cc26-bc52-4352-ca2b-b2ac388c322f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rect_invGammaℝ :
    RectangleIntegral' (fun s => Hfn k s * logDeriv invGammaℝ s) (zc c R) (wc c R) = Hfn k 0 := by
  classical
  have key := Zeta23.Analytic.rectangleIntegral'_mul_logDeriv (zc_le_wc_re hc1 hc2) (zc_le_wc_im hR)
    (f := invGammaℝ) (g := Hfn k) (fun s _ => analyticAt_invGammaℝ s) (Hfn_analyticOnNhd hk hkc _)
    (fun s hs => invGammaℝ_ne_zero_iff.mpr
      (Gammaℝ_ne_zero_of_mem hc1 hc2 hR (rectangleBorder_subset_rectangle _ _ hs) (border_ne_zero_one hc1 hc2 hR hs).1))
    {0} (fun s hs => by
      rw [Finset.mem_singleton, invGammaℝ_eq_zero_iff]
      constructor
      · intro h; by_contra h0; exact Gammaℝ_ne_zero_of_mem hc1 hc2 hR hs h0 h
      · rintro rfl; simp [Gammaℝ_eq_zero_iff])
    (by simpa using zero_mem_rect hc1 hc2 hR)
  rw [key, Finset.sum_singleton, analyticOrderNatAt_invGammaℝ_zero]
  simp

/-- (b) (1/2πi)∮ H·(G∘(1−·))′/(G∘(1−·)) = H(1). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variantdf9264753a2caa0cc0bd88c0d565855af85e93cc760c8c85169e3b225687b294.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variantdf9264753a2caa0cc0bd88c0d565855af85e93cc760c8c85169e3b225687b294.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8afe5c752e7ee61c4c9c658b1e153f47d630cba0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
