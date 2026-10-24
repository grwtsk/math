# integralBridge_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c1b31a1-b2f6-145e-a325-2e10de50bc02",
  "kind": "theorem",
  "lexical_name": "integralBridge_abs_le",
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
  "slug": "integralbridge-abs-le--67edb371186700aec7c1dfcf",
  "source": {
    "blob": "39d646f0accaaf75948fd2c353f23eec5f17b17f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 41,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/BridgeEnvelope/Variant410e61b2be616e4ece754ec47f7ba19b15ee00a83447e78a31cc3ab9c96d98c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67edb371186700aec7c1dfcf059c1e7c9ada1acdd70cef85e600e69525c43b19",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/BridgeEnvelope/Variant410e61b2be616e4ece754ec47f7ba19b15ee00a83447e78a31cc3ab9c96d98c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c1b31a1-b2f6-145e-a325-2e10de50bc02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integralBridge_abs_le {f : ℝ → ℝ} {L u a b : ℝ}
    (hL : 0<L) (hu : 0≤u) (huL : u≤L)
    (hi : ∀ x y : ℝ,IntervalIntegrable f volume x y)
    (hf : ∀ t∈Icc (0:ℝ) L,a≤f t ∧ f t≤b) :
    |integralBridge f L u|≤(b-a)*u*(L-u)/L := by
  have hq := segment_integral_bounds (L:=L) (a:=a) (b:=b)
    (by norm_num : (0:ℝ)≤0) hu huL (hi 0 u) hf
  have hr := segment_integral_bounds (L:=L) (a:=a) (b:=b)
    hu huL le_rfl (hi u L) hf
  have he := intervalIntegral.integral_add_adjacent_intervals (hi 0 u) (hi u L)
  have htu : 0≤u/L := div_nonneg hu hL.le
  have htl : 0≤(L-u)/L := div_nonneg (sub_nonneg.mpr huL) hL.le
  have hx : integralBridge f L u =
      ((L-u)/L)*(∫ t in 0..u,f t)-(u/L)*(∫ t in u..L,f t) := by
    unfold integralBridge
    rw [← he]
    field_simp
    ring
  rw [hx]
  apply abs_le.mpr
  constructor
  · have h1 := mul_le_mul_of_nonneg_left hq.1 htl
    have h2 := mul_le_mul_of_nonneg_left hr.2 htu
    have he : ((L-u)/L)*(a*(u-0))-(u/L)*(b*(L-u)) =
        -((b-a)*u*(L-u)/L) := by ring
    linarith
  · have h1 := mul_le_mul_of_nonneg_left hq.2 htl
    have h2 := mul_le_mul_of_nonneg_left hr.1 htu
    have he : ((L-u)/L)*(b*(u-0))-(u/L)*(a*(L-u)) =
        (b-a)*u*(L-u)/L := by ring
    linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/BridgeEnvelope/Variant410e61b2be616e4ece754ec47f7ba19b15ee00a83447e78a31cc3ab9c96d98c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/BridgeEnvelope/Variant410e61b2be616e4ece754ec47f7ba19b15ee00a83447e78a31cc3ab9c96d98c9.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39d646f0accaaf75948fd2c353f23eec5f17b17f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
