# exists_gauge_decomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c877af6-700b-bed7-5241-f01a33028ce0",
  "kind": "theorem",
  "lexical_name": "exists_gauge_decomposition",
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
  "slug": "exists-gauge-decomposition--1f4558e05a85cc2db672f944",
  "source": {
    "blob": "119610a284c38f3b844ea009c3e71df2dac341ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 58,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/HodgeFiniteComplex/Variant2c57873e5b79cc233131f670f4cce8f905ababfe4973980a992856158164f4a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f4558e05a85cc2db672f94434a331c205771885da0c9cb86d75eca7ba59c112",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/HodgeFiniteComplex/Variant2c57873e5b79cc233131f670f4cce8f905ababfe4973980a992856158164f4a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c877af6-700b-bed7-5241-f01a33028ce0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_gauge_decomposition (D : E₀ →ₗ[ℝ] E₁) (a : E₁) :
    ∃ b : E₀, b ∈ D.kerᗮ ∧ a = D b + harmonicPart D a := by
  obtain ⟨u, hu⟩ := D.range.starProjection_apply_mem a
  obtain ⟨k, hk, b, hb, hu'⟩ := D.ker.exists_add_mem_mem_orthogonal u
  have hk' : D k = 0 := hk
  have hb' : D b = D.range.starProjection a := by
    rw [hu', map_add, hk', zero_add] at hu
    exact hu
  refine ⟨b, hb, ?_⟩
  rw [hb', harmonicPart]
  abel

/-- Closedness places the constructed residual in both actual kernels. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/HodgeFiniteComplex/Variant2c57873e5b79cc233131f670f4cce8f905ababfe4973980a992856158164f4a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/HodgeFiniteComplex/Variant2c57873e5b79cc233131f670f4cce8f905ababfe4973980a992856158164f4a8.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `119610a284c38f3b844ea009c3e71df2dac341ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
