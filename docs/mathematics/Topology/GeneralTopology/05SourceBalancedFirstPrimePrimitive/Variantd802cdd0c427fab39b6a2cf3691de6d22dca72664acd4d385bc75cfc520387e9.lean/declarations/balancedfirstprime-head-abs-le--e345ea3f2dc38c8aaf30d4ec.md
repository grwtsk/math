# balancedFirstPrime_head_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f15bf01-ea34-6cd5-68cb-cc4ada000b58",
  "kind": "theorem",
  "lexical_name": "balancedFirstPrime_head_abs_le",
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
  "slug": "balancedfirstprime-head-abs-le--e345ea3f2dc38c8aaf30d4ec",
  "source": {
    "blob": "5ea59110bd557f722c2c4626699819be2d9bb4d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 157,
    "path": "GRWTSK/Topology/GeneralTopology/05SourceBalancedFirstPrimePrimitive/Variantd802cdd0c427fab39b6a2cf3691de6d22dca72664acd4d385bc75cfc520387e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e345ea3f2dc38c8aaf30d4ecbc5e265703acc1ed5bc686c2acee7e0e711a9d5d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/05SourceBalancedFirstPrimePrimitive/Variantd802cdd0c427fab39b6a2cf3691de6d22dca72664acd4d385bc75cfc520387e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f15bf01-ea34-6cd5-68cb-cc4ada000b58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem balancedFirstPrime_head_abs_le {A H : ℝ} (hA : 91 ≤ A)
    (hH : Real.log 7 ≤ H) :
    |-(∫ t in Real.log 7..H, balancedFirstPrimePrimitive t * actualXiCurvature A t)| ≤
      10 / A ^ 2 * H * Real.exp (H / 2) := by
  let k : ℝ := 10 / A ^ 2
  have hk : 0 ≤ k := by dsimp [k]; positivity
  have hb : IntervalIntegrable (fun t : ℝ =>
      k * (1 + t / 2) * Real.exp (t / 2)) volume (Real.log 7) H :=
    (by fun_prop : Continuous _).intervalIntegrable _ _
  have hp : ∀ t ∈ Ioc (Real.log 7) H,
      ‖balancedFirstPrimePrimitive t * actualXiCurvature A t‖ ≤
        k * (1 + t / 2) * Real.exp (t / 2) := by
    intro t ht
    have ht0 : 0 ≤ t := (Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 7)).trans ht.1.le
    have hF : |balancedFirstPrimePrimitive t| ≤ 2 * Real.exp (t / 2) :=
      (balancedFirstPrimePrimitive_abs_le ht.1.le).trans
        (by nlinarith [Real.sqrt_nonneg (7 : ℝ)])
    have hK := actualXiCurvature_abs_le hA ht0
    rw [Real.norm_eq_abs, abs_mul]
    calc
      _ ≤ (2 * Real.exp (t / 2)) * (5 / A ^ 2 * (1 + t / 2)) :=
        mul_le_mul hF hK (abs_nonneg _) (by positivity)
      _ = _ := by dsimp [k]; ring
  have hn := intervalIntegral.norm_integral_le_of_norm_le hH (ae_of_all _ hp) hb
  have hd (t : ℝ) : HasDerivAt (fun t : ℝ => k * t * Real.exp (t / 2))
      (k * (1 + t / 2) * Real.exp (t / 2)) t := by
    convert (((hasDerivAt_id t).const_mul k).mul
      (((hasDerivAt_id t).div_const 2).exp)) using 1 <;> try rfl
    dsimp
    ring
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t) hb,
    Real.norm_eq_abs] at hn
  have hlow : 0 ≤ k * Real.log 7 * Real.exp (Real.log 7 / 2) :=
    mul_nonneg (mul_nonneg hk (Real.log_nonneg (by norm_num))) (Real.exp_pos _).le
  rw [abs_neg]
  exact hn.trans (by dsimp [k]; linarith)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/05SourceBalancedFirstPrimePrimitive/Variantd802cdd0c427fab39b6a2cf3691de6d22dca72664acd4d385bc75cfc520387e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/05SourceBalancedFirstPrimePrimitive/Variantd802cdd0c427fab39b6a2cf3691de6d22dca72664acd4d385bc75cfc520387e9.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ea59110bd557f722c2c4626699819be2d9bb4d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
