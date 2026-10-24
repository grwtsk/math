# decay_short_interval_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e7b8589-c461-bcc9-8d45-529e337d3a74",
  "kind": "theorem",
  "lexical_name": "decay_short_interval_abs_le",
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
  "slug": "decay-short-interval-abs-le--2f67d1471d7a60d73770b5a6",
  "source": {
    "blob": "e63f49421328942ad367b136ac78fa0026ec099a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 91,
    "path": "GRWTSK/Topology/GeneralTopology/ActualMovingEndpointAttempt01/Varianta3130a4489bc50381fad79ec147335459f870cb4d77cf7207935c1b8a8c32e02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f67d1471d7a60d73770b5a6f43178cc7b5f59bd76f885ae7640cfa2da07297d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualMovingEndpointAttempt01/Varianta3130a4489bc50381fad79ec147335459f870cb4d77cf7207935c1b8a8c32e02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e7b8589-c461-bcc9-8d45-529e337d3a74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem decay_short_interval_abs_le {A y : ℝ} (hy : 0 ≤ y) (hyA : y ≤ A) :
    |∫ t in (2*A-y)..(2*A), criticalDecay t| ≤ y*criticalDecay A := by
  have h := intervalIntegral.norm_integral_le_of_norm_le_const
    (f:=criticalDecay) (a:=2*A-y) (b:=2*A) (C:=criticalDecay A) (fun t ht => ?_)
  · rw [Real.norm_eq_abs,show 2*A-(2*A-y)=y by ring,abs_of_nonneg hy] at h
    simpa only [mul_comm] using h
  · rw [uIoc_of_le (by linarith : 2*A-y ≤ 2*A)] at ht
    rw [Real.norm_eq_abs,abs_of_pos (by unfold criticalDecay;positivity)]
    unfold criticalDecay
    exact Real.exp_le_exp.mpr (by linarith [ht.1])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualMovingEndpointAttempt01/Varianta3130a4489bc50381fad79ec147335459f870cb4d77cf7207935c1b8a8c32e02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualMovingEndpointAttempt01/Varianta3130a4489bc50381fad79ec147335459f870cb4d77cf7207935c1b8a8c32e02.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e63f49421328942ad367b136ac78fa0026ec099a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
