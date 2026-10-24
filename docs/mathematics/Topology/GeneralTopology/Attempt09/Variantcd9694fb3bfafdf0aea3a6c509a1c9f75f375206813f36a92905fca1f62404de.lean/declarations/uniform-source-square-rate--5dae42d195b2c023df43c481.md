# uniform_source_square_rate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:026a415c-0ee4-d3a4-8d2c-e4705a6815b1",
  "kind": "theorem",
  "lexical_name": "uniform_source_square_rate",
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
  "slug": "uniform-source-square-rate--5dae42d195b2c023df43c481",
  "source": {
    "blob": "20d324b42fd397a242c873d41ff001bc61731ac9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 389,
    "line": 360,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt09/Variantcd9694fb3bfafdf0aea3a6c509a1c9f75f375206813f36a92905fca1f62404de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5dae42d195b2c023df43c48189ad79209a7681360e19d83b9a629cf57ce9bfb5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt09/Variantcd9694fb3bfafdf0aea3a6c509a1c9f75f375206813f36a92905fca1f62404de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:026a415c-0ee4-d3a4-8d2c-e4705a6815b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 360–389.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniform_source_square_rate {A delta : ℝ} (hA : 1 ≤ A) (hdelta : 0 < delta)
    {z : ℂ} (hz : delta ≤ z.re) (hf : z^2-1/4 ≠ 0) :
    ‖scaledAmplitude A z^2-leadingCoefficient z^2‖ ≤
      ‖leadingCoefficient z‖^2*(rateConstant delta^2+2*rateConstant delta)/A := by
  let r := scaledAmplitude A z/leadingCoefficient z
  have hc := leadingCoefficient_ne_zero (half_plane_ne_zero (lt_of_lt_of_le hdelta hz)) hf
  have hK := rateConstant_nonneg hdelta
  have hp : 0 < A := by linarith
  have hr : ‖r-1‖ ≤ rateConstant delta/A := uniform_source_ratio_rate hA hdelta hz hf
  have hrp : ‖r+1‖ ≤ rateConstant delta/A+2 := by
    have he : r+1=(r-1)+(2 : ℂ) := by ring
    rw [he]
    have ht := norm_add_le (r-1) (2 : ℂ)
    norm_num only [Complex.norm_ofNat] at ht
    linarith
  have he : scaledAmplitude A z^2-leadingCoefficient z^2 =
      leadingCoefficient z^2*((r-1)*(r+1)) := by
    dsimp [r]
    field_simp
    ring
  rw [he,norm_mul,norm_mul,norm_pow]
  calc
    _ ≤ ‖leadingCoefficient z‖^2*((rateConstant delta/A)*(rateConstant delta/A+2)) := by
      gcongr
    _ = ‖leadingCoefficient z‖^2*(rateConstant delta^2/A^2+2*rateConstant delta/A) := by ring
    _ ≤ ‖leadingCoefficient z‖^2*(rateConstant delta^2/A+2*rateConstant delta/A) := by
      gcongr
      nlinarith [sq_nonneg (A-1)]
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt09/Variantcd9694fb3bfafdf0aea3a6c509a1c9f75f375206813f36a92905fca1f62404de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt09/Variantcd9694fb3bfafdf0aea3a6c509a1c9f75f375206813f36a92905fca1f62404de.lean#L360).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20d324b42fd397a242c873d41ff001bc61731ac9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
