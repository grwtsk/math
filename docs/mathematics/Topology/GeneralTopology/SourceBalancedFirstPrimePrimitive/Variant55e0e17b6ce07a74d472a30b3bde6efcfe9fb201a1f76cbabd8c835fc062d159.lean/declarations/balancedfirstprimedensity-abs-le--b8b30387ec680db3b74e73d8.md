# balancedFirstPrimeDensity_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c0fce4b-2be3-8df8-8541-4173f1c3fa03",
  "kind": "theorem",
  "lexical_name": "balancedFirstPrimeDensity_abs_le",
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
  "slug": "balancedfirstprimedensity-abs-le--b8b30387ec680db3b74e73d8",
  "source": {
    "blob": "720281a45b1ec20abac1242a8ce2ba4c5d6dcf30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 98,
    "path": "GRWTSK/Topology/GeneralTopology/SourceBalancedFirstPrimePrimitive/Variant55e0e17b6ce07a74d472a30b3bde6efcfe9fb201a1f76cbabd8c835fc062d159.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8b30387ec680db3b74e73d82c77a2687e23660b61eb9a40db8edd8f677cdd40",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceBalancedFirstPrimePrimitive/Variant55e0e17b6ce07a74d472a30b3bde6efcfe9fb201a1f76cbabd8c835fc062d159.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c0fce4b-2be3-8df8-8541-4173f1c3fa03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem balancedFirstPrimeDensity_abs_le {t : ℝ} (ht : Real.log 7 ≤ t) :
    |balancedFirstPrimeDensity t| ≤ Real.exp (t / 2) := by
  have hy : 7 ≤ Real.exp t := by
    simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 7)] using Real.exp_le_exp.mpr ht
  have he : 0 < Real.exp (t / 2) := Real.exp_pos _
  have he2 : Real.exp (t / 2) * Real.exp (t / 2) = Real.exp t := by
    rw [← Real.exp_add]; congr 1; ring
  have hege : 2 ≤ Real.exp (t / 2) := by nlinarith
  have hehalf : Real.exp (t / 2) ≤ Real.exp t / 2 := by nlinarith
  have hlog : Real.log 4 ≤ (3 / 2 : ℝ) := by
    have hp := Real.log_pow (2 : ℝ) 2
    norm_num at hp
    linarith [Real.log_two_lt_d9]
  have htheta := Chebyshev.theta_le_log4_mul_x (Real.exp_pos t).le
  have htheta0 := Chebyshev.theta_nonneg (Real.exp t)
  have hnum : |Chebyshev.theta (Real.exp t) - Real.exp t + Real.exp (t / 2)| ≤
      Real.exp t := by
    apply abs_le.mpr
    constructor
    · linarith
    · have hm := mul_le_mul_of_nonneg_right hlog (Real.exp_pos t).le
      nlinarith
  unfold balancedFirstPrimeDensity
  rw [abs_mul, abs_of_pos (Real.exp_pos _)]
  calc
    _ ≤ Real.exp t * Real.exp (-t / 2) :=
      mul_le_mul_of_nonneg_right hnum (Real.exp_pos _).le
    _ = _ := by rw [← Real.exp_add]; congr 1; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceBalancedFirstPrimePrimitive/Variant55e0e17b6ce07a74d472a30b3bde6efcfe9fb201a1f76cbabd8c835fc062d159.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceBalancedFirstPrimePrimitive/Variant55e0e17b6ce07a74d472a30b3bde6efcfe9fb201a1f76cbabd8c835fc062d159.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `720281a45b1ec20abac1242a8ce2ba4c5d6dcf30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
