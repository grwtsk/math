# actualProfile_convex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1dc080a6-f8c3-9e15-0259-978e813d0992",
  "kind": "theorem",
  "lexical_name": "actualProfile_convex",
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
  "slug": "actualprofile-convex--60225604f26a0f9fac527c47",
  "source": {
    "blob": "c5402ce95bc5664fdae8f1ab183b237f3de49f56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 264,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variante2226f19873b1544509c1d3fcfb5d400a7514ef3b58c75f816f8e6c94db547b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60225604f26a0f9fac527c47505e0d0a8abfc98679c2c0116ea91d4ab90d0652",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variante2226f19873b1544509c1d3fcfb5d400a7514ef3b58c75f816f8e6c94db547b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1dc080a6-f8c3-9e15-0259-978e813d0992`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualProfile_convex : ConvexOn ℝ (Ioi (-2 : ℝ)) actualProfile := by
  let g : ℝ →ᵃ[ℝ] ℝ := AffineMap.const ℝ ℝ (1 : ℝ) +
    (DistribSMul.toLinearMap ℝ ℝ (1 / 2 : ℝ)).toAffineMap
  have hg (x : ℝ) : g x = 1 + x / 2 := by simp [g, smul_eq_mul, div_eq_mul_inv, mul_comm]
  have hlog : ConvexOn ℝ (Ioi (-2 : ℝ)) (fun x ↦ Real.log (Real.Gamma (1 + x / 2))) := by
    have h := Real.convexOn_log_Gamma.comp_affineMap g
    have hs : Ioi (-2 : ℝ) = g ⁻¹' Ioi 0 := by
      ext x
      simp only [Set.mem_Ioi, Set.mem_preimage, hg]
      constructor <;> intro hx <;> linarith
    rw [← hs] at h
    exact h.congr (fun x _ ↦ by change Real.log (Real.Gamma (g x)) = _; rw [hg])
  have hlin : ConvexOn ℝ (Ioi (-2 : ℝ))
      (fun x ↦ Real.eulerMascheroniConstant * x / 2) := by
    exact ((DistribSMul.toLinearMap ℝ ℝ (Real.eulerMascheroniConstant / 2)).convexOn
      (convex_Ioi (-2 : ℝ))).congr
      (fun x _ ↦ by change (Real.eulerMascheroniConstant / 2) * x = _; ring)
  exact hlog.add hlin

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variante2226f19873b1544509c1d3fcfb5d400a7514ef3b58c75f816f8e6c94db547b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variante2226f19873b1544509c1d3fcfb5d400a7514ef3b58c75f816f8e6c94db547b3.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5402ce95bc5664fdae8f1ab183b237f3de49f56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
