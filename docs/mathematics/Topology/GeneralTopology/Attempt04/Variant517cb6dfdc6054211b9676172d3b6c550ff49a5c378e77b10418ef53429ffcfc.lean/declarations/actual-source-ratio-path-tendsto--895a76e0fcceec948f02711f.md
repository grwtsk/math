# actual_source_ratio_path_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17883307-266b-cbdc-6a28-8376e5be2564",
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
  "slug": "actual-source-ratio-path-tendsto--895a76e0fcceec948f02711f",
  "source": {
    "blob": "18c2654a9d030dd7a623cba5c34dc5b2ae74ea7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 206,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt04/Variant517cb6dfdc6054211b9676172d3b6c550ff49a5c378e77b10418ef53429ffcfc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:895a76e0fcceec948f02711fca4b21831b40041683fe45f4efdbc682029034d0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt04/Variant517cb6dfdc6054211b9676172d3b6c550ff49a5c378e77b10418ef53429ffcfc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17883307-266b-cbdc-6a28-8376e5be2564`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–225.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt04/Variant517cb6dfdc6054211b9676172d3b6c550ff49a5c378e77b10418ef53429ffcfc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt04/Variant517cb6dfdc6054211b9676172d3b6c550ff49a5c378e77b10418ef53429ffcfc.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18c2654a9d030dd7a623cba5c34dc5b2ae74ea7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
