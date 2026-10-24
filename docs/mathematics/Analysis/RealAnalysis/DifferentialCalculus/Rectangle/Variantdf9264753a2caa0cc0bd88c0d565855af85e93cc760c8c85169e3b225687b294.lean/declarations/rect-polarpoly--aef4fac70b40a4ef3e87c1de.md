# rect_polarPoly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ea7efd6-71fd-9f21-3743-72ed13fdea92",
  "kind": "theorem",
  "lexical_name": "rect_polarPoly",
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
  "slug": "rect-polarpoly--aef4fac70b40a4ef3e87c1de",
  "source": {
    "blob": "8afe5c752e7ee61c4c9c658b1e153f47d630cba0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 236,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variantdf9264753a2caa0cc0bd88c0d565855af85e93cc760c8c85169e3b225687b294.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aef4fac70b40a4ef3e87c1deb3f05cc1648038e72373f772a5d80a875f2142d5",
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

Occurrence: `result:8ea7efd6-71fd-9f21-3743-72ed13fdea92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rect_polarPoly :
    RectangleIntegral' (fun s => Hfn k s * logDeriv polarPoly s) (zc c R) (wc c R) = Hfn k 0 + 2 * Hfn k 1 := by
  classical
  have key := Zeta23.Analytic.rectangleIntegral'_mul_logDeriv (zc_le_wc_re hc1 hc2) (zc_le_wc_im hR)
    (f := polarPoly) (g := Hfn k) (fun s _ => differentiable_polarPoly.analyticAt s)
    (Hfn_analyticOnNhd hk hkc _)
    (fun s hs => by
      obtain ⟨h0, h1⟩ := border_ne_zero_one hc1 hc2 hR hs
      rw [Ne, polarPoly_eq_zero_iff]; simp [h0, h1])
    {0, 1} (fun s _ => by rw [polarPoly_eq_zero_iff]; simp)
    (by
      intro s hs
      simp only [Finset.coe_insert, Finset.coe_singleton, Set.mem_insert_iff, Set.mem_singleton_iff] at hs
      rcases hs with rfl | rfl
      · exact zero_mem_rect hc1 hc2 hR
      · exact one_mem_rect hc1 hc2 hR)
  rw [key, Finset.sum_insert (by simp), Finset.sum_singleton, analyticOrderNatAt_polarPoly_zero,
    analyticOrderNatAt_polarPoly_one]
  push_cast; ring

/-! ### §3. The W piece -/

/-- (e) (1/2πi)∮ H·Wreg′/Wreg = Σ_{ρ ∈ Q, ρ ∉ {0,1}, W(ρ)=0} ord_ρ(W)·H(ρ), provided W ≠ 0 on ∂Q. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variantdf9264753a2caa0cc0bd88c0d565855af85e93cc760c8c85169e3b225687b294.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variantdf9264753a2caa0cc0bd88c0d565855af85e93cc760c8c85169e3b225687b294.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8afe5c752e7ee61c4c9c658b1e153f47d630cba0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
