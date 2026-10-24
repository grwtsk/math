# actual_source_ratio_path_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:08ef0861-eb88-40f9-0f24-7aa5e3e6b3a8",
  "kind": "theorem",
  "lexical_name": "actual_source_ratio_path_tendsto",
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
  "slug": "actual-source-ratio-path-tendsto--a20ecda322a5dd24f1c03d11",
  "source": {
    "blob": "886353b181356de812e4e22e5af4b925ad0f49a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 198,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt06/Variantc643ca409182d4d31428532286c0086aff41c661f339807d8c6e598dde4c8fc1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a20ecda322a5dd24f1c03d11d0ef511e1986183dfd28501052ddc15829c524be",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt06/Variantc643ca409182d4d31428532286c0086aff41c661f339807d8c6e598dde4c8fc1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08ef0861-eb88-40f9-0f24-7aa5e3e6b3a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_source_ratio_path_tendsto (delta : ℝ → ℝ) (z : ℝ → ℂ)
    (hdelta : ∀ᶠ A : ℝ in atTop, 0 < delta A)
    (hz : ∀ᶠ A : ℝ in atTop, delta A ≤ (z A).re)
    (hf : ∀ᶠ A : ℝ in atTop, (z A)^2-1/4 ≠ 0)
    (hprod : Tendsto (fun A : ℝ => A*delta A) atTop atTop) :
    Tendsto (fun A : ℝ => scaledAmplitude A (z A)/leadingCoefficient (z A))
      atTop (𝓝 1) := by
  have hb : ∀ᶠ A : ℝ in atTop,
      ‖scaledAmplitude A (z A)/leadingCoefficient (z A)-1‖ ≤ sharpError A (delta A) := by
    filter_upwards [eventually_ge_atTop (1 : ℝ),hdelta,hz,hf] with A hA hd hz hf
    exact actual_source_ratio_sharp hA hd hz hf
  have ht : Tendsto (fun A : ℝ =>
      ‖scaledAmplitude A (z A)/leadingCoefficient (z A)-1‖) atTop (𝓝 0) :=
    squeeze_zero' (Eventually.of_forall (fun _ => norm_nonneg _)) hb
      (sharpError_path_tendsto delta hprod)
  have hc : Tendsto (fun A : ℝ =>
      scaledAmplitude A (z A)/leadingCoefficient (z A)-1) atTop (𝓝 0) :=
    tendsto_zero_iff_norm_tendsto_zero.mpr ht
  simpa only [zero_add,sub_add_cancel] using hc.add_const 1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt06/Variantc643ca409182d4d31428532286c0086aff41c661f339807d8c6e598dde4c8fc1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt06/Variantc643ca409182d4d31428532286c0086aff41c661f339807d8c6e598dde4c8fc1.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `886353b181356de812e4e22e5af4b925ad0f49a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
