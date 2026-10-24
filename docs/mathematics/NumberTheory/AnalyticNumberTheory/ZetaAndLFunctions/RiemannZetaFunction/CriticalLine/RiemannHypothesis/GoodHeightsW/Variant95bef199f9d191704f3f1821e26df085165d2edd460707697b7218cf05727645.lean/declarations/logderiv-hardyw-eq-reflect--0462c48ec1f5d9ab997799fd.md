# logDeriv_hardyW_eq_reflect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7325e738-6c69-a4ff-1430-3954e663a34e",
  "kind": "theorem",
  "lexical_name": "logDeriv_hardyW_eq_reflect",
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
  "slug": "logderiv-hardyw-eq-reflect--0462c48ec1f5d9ab997799fd",
  "source": {
    "blob": "ab7c296b64e6e09176c92f88367da030b74e93ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 81,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeightsW/Variant95bef199f9d191704f3f1821e26df085165d2edd460707697b7218cf05727645.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0462c48ec1f5d9ab997799fde4d5634bb7da32029eed5c89bd643615ead252c6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeightsW/Variant95bef199f9d191704f3f1821e26df085165d2edd460707697b7218cf05727645.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7325e738-6c69-a4ff-1430-3954e663a34e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logDeriv_hardyW_eq_reflect {s : ℂ} (hs : s.im ≠ 0) (hW : hardyW s ≠ 0) :
    logDeriv hardyW s = -2 * L2 s - logDeriv hardyW (1 - s) := by
  have hs' : (1 - s).im ≠ 0 := im_one_sub_ne_zero hs
  have hW' : hardyW (1 - s) ≠ 0 := fun h => hW ((hardyW_one_sub_eq_zero_iff hs).mp h)
  have hχ : chiFE s ≠ 0 := chiFE_ne_zero hs
  -- the functional equation as an identity of functions near s
  have hev : hardyW =ᶠ[𝓝 s] fun z => (-1 : ℂ) * (chiFE z * hardyW (1 - z)) := by
    filter_upwards [isOpen_im_ne_zero.mem_nhds hs] with z hz
    rw [hardyW_eq_neg_chiFE_mul hz]; ring
  have h1 : logDeriv hardyW s = logDeriv (fun z => (-1 : ℂ) * (chiFE z * hardyW (1 - z))) s := by
    rw [logDeriv_apply, logDeriv_apply, hev.deriv_eq, hev.eq_of_nhds]
  have hdχ : DifferentiableAt ℂ chiFE s := (chiFE_analyticAt hs).differentiableAt
  have hdg : DifferentiableAt ℂ (fun z : ℂ => 1 - z) s := by fun_prop
  have hdW1 : DifferentiableAt ℂ (fun z => hardyW (1 - z)) s :=
    (hardyW_differentiableAt hs').comp s hdg
  have h2 : logDeriv (fun z => chiFE z * hardyW (1 - z)) s
      = logDeriv chiFE s + logDeriv (fun z => hardyW (1 - z)) s :=
    logDeriv_mul s hχ hW' hdχ hdW1
  have h3 : logDeriv (fun z => hardyW (1 - z)) s = -logDeriv hardyW (1 - s) := by
    have hc : logDeriv (hardyW ∘ fun z : ℂ => 1 - z) s
        = logDeriv hardyW (1 - s) * deriv (fun z : ℂ => 1 - z) s :=
      logDeriv_comp (hardyW_differentiableAt hs') hdg
    have hd : deriv (fun z : ℂ => 1 - z) s = -1 := by
      rw [deriv_const_sub, deriv_id'']
    have : (hardyW ∘ fun z : ℂ => 1 - z) = fun z => hardyW (1 - z) := rfl
    rw [this] at hc
    rw [hc, hd]; ring
  have hL : logDeriv chiFE s = -2 * L2 s := by
    simp only [L2]; ring
  rw [h1, logDeriv_const_mul s (-1 : ℂ) (by norm_num), h2, h3, hL]
  ring

/-- **F_𝒵(1−s) = −F_𝒵(s)**, F_𝒵 := L₂ + W′/W (off ℝ, at points where W ≠ 0). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeightsW/Variant95bef199f9d191704f3f1821e26df085165d2edd460707697b7218cf05727645.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeightsW/Variant95bef199f9d191704f3f1821e26df085165d2edd460707697b7218cf05727645.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab7c296b64e6e09176c92f88367da030b74e93ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
