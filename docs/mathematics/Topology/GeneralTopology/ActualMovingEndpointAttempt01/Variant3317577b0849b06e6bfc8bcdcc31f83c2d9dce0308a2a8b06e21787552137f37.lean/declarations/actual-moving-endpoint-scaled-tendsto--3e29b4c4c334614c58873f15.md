# actual_moving_endpoint_scaled_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce9f8d89-a81a-034f-9b66-e84ebe2d786d",
  "kind": "theorem",
  "lexical_name": "actual_moving_endpoint_scaled_tendsto",
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
  "slug": "actual-moving-endpoint-scaled-tendsto--3e29b4c4c334614c58873f15",
  "source": {
    "blob": "fb0d7bc980812f84d6f13cba428d3f4bb16a9e9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 178,
    "path": "GRWTSK/Topology/GeneralTopology/ActualMovingEndpointAttempt01/Variant3317577b0849b06e6bfc8bcdcc31f83c2d9dce0308a2a8b06e21787552137f37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e29b4c4c334614c58873f15d730a32c28437bc9a0c9248aca9a6dad703e109c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualMovingEndpointAttempt01/Variant3317577b0849b06e6bfc8bcdcc31f83c2d9dce0308a2a8b06e21787552137f37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce9f8d89-a81a-034f-9b66-e84ebe2d786d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_moving_endpoint_scaled_tendsto
    (hI : IntegrableOn actualRemainder (Ioi (0:ℝ))) {K : ℝ} (hK : 0 ≤ K)
    (hdecay : ∀ t : ℝ, 1 ≤ t → |actualPrimeRemainder t| ≤ K/t^2)
    {y : ℝ} (hy : 0 ≤ y) :
    Tendsto (fun A : ℝ => A*criticalDiscrepancyBridge A (2*A-y)) atTop
      (𝓝 (actualPrimeIntercept*y/2)) := by
  have hz : Tendsto (fun A : ℝ => A*criticalDiscrepancyBridge A (2*A-y)-
      actualPrimeIntercept*y/2) atTop (𝓝 0) := by
    apply squeeze_zero_norm' (a:=fun A : ℝ =>
      5*K*y/(4*A)+A*y*Real.exp (-A/2)+y*Real.exp (-A))
    · filter_upwards [eventually_ge_atTop (1:ℝ),eventually_ge_atTop y] with A hA hyA
      have hp : 0 < A := by linarith
      have hb := actual_moving_endpoint_error_abs_le hI hK hA hy hyA hdecay
      calc
        _ = A*|criticalDiscrepancyBridge A (2*A-y)-actualPrimeIntercept*y/(2*A)| := by
          rw [Real.norm_eq_abs]
          have he : A*criticalDiscrepancyBridge A (2*A-y)-actualPrimeIntercept*y/2 =
              A*(criticalDiscrepancyBridge A (2*A-y)-actualPrimeIntercept*y/(2*A)) := by
            field_simp [hp.ne']
          rw [he,abs_mul,abs_of_pos hp]
        _ ≤ A*(5*K*y/(4*A^2)+y*Real.exp (-A/2)+(y/A)*Real.exp (-A)) :=
          mul_le_mul_of_nonneg_left hb hp.le
        _ = 5*K*y/(4*A)+A*y*Real.exp (-A/2)+y*Real.exp (-A) := by
          field_simp [hp.ne']
    · exact scaled_error_majorant_tendsto K y
  simpa only [zero_add,sub_add_cancel] using hz.add_const (actualPrimeIntercept*y/2)

/-- Raw actual full-Mangoldt decay supplies both arithmetic premises, preserving B2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualMovingEndpointAttempt01/Variant3317577b0849b06e6bfc8bcdcc31f83c2d9dce0308a2a8b06e21787552137f37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualMovingEndpointAttempt01/Variant3317577b0849b06e6bfc8bcdcc31f83c2d9dce0308a2a8b06e21787552137f37.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb0d7bc980812f84d6f13cba428d3f4bb16a9e9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
