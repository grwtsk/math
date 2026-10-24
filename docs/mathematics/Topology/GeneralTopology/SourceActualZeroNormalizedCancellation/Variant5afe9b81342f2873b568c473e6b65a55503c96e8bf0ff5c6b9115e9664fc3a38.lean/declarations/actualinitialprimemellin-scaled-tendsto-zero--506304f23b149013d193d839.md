# actualInitialPrimeMellin_scaled_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f9ed511b-1ec7-54ec-bb78-f6d3eabdf330",
  "kind": "theorem",
  "lexical_name": "actualInitialPrimeMellin_scaled_tendsto_zero",
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
  "slug": "actualinitialprimemellin-scaled-tendsto-zero--506304f23b149013d193d839",
  "source": {
    "blob": "09d5cc78e08e285224056295f7fd15d2073fb970",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 98,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualZeroNormalizedCancellation/Variant5afe9b81342f2873b568c473e6b65a55503c96e8bf0ff5c6b9115e9664fc3a38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:506304f23b149013d193d8398063683a82e77f9f76602130af576c700b9f795c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualZeroNormalizedCancellation/Variant5afe9b81342f2873b568c473e6b65a55503c96e8bf0ff5c6b9115e9664fc3a38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9ed511b-1ec7-54ec-bb78-f6d3eabdf330`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualInitialPrimeMellin_scaled_tendsto_zero (s : ℂ)
    (hs0 : 0 < s.re) (hs1 : s.re < 1) (hs : s ≠ 1 / 2) :
    Tendsto (fun A : ℝ => ((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) *
      actualInitialPrimeMellin A s) atTop (𝓝 0) := by
  obtain ⟨K,R,hK,hR,hbound⟩ := actualInitialPrimeMellin_scaled_norm_bound s hs
  have hx : |s.re - 1 / 2| < 1 / 2 := abs_lt.mpr ⟨by linarith,by linarith⟩
  have hd : 0 < 1 - 2 * |s.re - 1 / 2| := by linarith
  have he : Tendsto (fun A : ℝ => Real.exp (-(1 - 2 * |s.re - 1 / 2|) * A))
      atTop (𝓝 0) := by
    simpa only [Real.rpow_zero, one_mul] using
      tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero 0 (1 - 2 * |s.re - 1 / 2|) hd
  have hlim : Tendsto (fun A : ℝ => K *
      Real.exp (-(1 - 2 * |s.re - 1 / 2|) * A)) atTop (𝓝 0) := by
    simpa only [mul_zero] using he.const_mul K
  apply squeeze_zero_norm' _ hlim
  filter_upwards [eventually_ge_atTop R] with A hA
  exact hbound A hA

/-- Genuine actual zero membership excludes the sole degenerate fixed point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualZeroNormalizedCancellation/Variant5afe9b81342f2873b568c473e6b65a55503c96e8bf0ff5c6b9115e9664fc3a38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualZeroNormalizedCancellation/Variant5afe9b81342f2873b568c473e6b65a55503c96e8bf0ff5c6b9115e9664fc3a38.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09d5cc78e08e285224056295f7fd15d2073fb970` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
