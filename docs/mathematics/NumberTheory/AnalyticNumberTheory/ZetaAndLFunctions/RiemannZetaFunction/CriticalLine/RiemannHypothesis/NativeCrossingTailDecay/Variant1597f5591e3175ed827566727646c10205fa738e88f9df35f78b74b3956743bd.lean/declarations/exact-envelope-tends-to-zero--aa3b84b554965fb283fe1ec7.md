# exact_envelope_tends_to_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0696425-521a-0784-427a-091d4f80eb09",
  "kind": "theorem",
  "lexical_name": "exact_envelope_tends_to_zero",
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
  "slug": "exact-envelope-tends-to-zero--aa3b84b554965fb283fe1ec7",
  "source": {
    "blob": "85a025f8a9883cafacbcbf69da80ff5ea9ff4991",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 22,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCrossingTailDecay/Variant1597f5591e3175ed827566727646c10205fa738e88f9df35f78b74b3956743bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa3b84b554965fb283fe1ec79ed0f4fb7b126126d44796edda0b1ac1355b5874",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCrossingTailDecay/Variant1597f5591e3175ed827566727646c10205fa738e88f9df35f78b74b3956743bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0696425-521a-0784-427a-091d4f80eb09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_envelope_tends_to_zero : Tendsto envelope atTop (𝓝 0) := by
  have hnat : Tendsto (fun N : ℕ ↦ (N : ℝ)) atTop atTop := tendsto_natCast_atTop_atTop
  have hshift : Tendsto (fun N : ℕ ↦ (N : ℝ) - 1) atTop atTop := by
    apply tendsto_atTop.2
    intro B
    filter_upwards [hnat.eventually (eventually_ge_atTop (B + 1))] with N hN
    linarith
  have h := (log_root_primitive_tends_to_zero.comp hshift).neg
  simp only [neg_zero] at h
  apply h.congr'
  filter_upwards [] with N
  dsimp only [Function.comp_def]
  unfold envelope primitive
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCrossingTailDecay/Variant1597f5591e3175ed827566727646c10205fa738e88f9df35f78b74b3956743bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCrossingTailDecay/Variant1597f5591e3175ed827566727646c10205fa738e88f9df35f78b74b3956743bd.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85a025f8a9883cafacbcbf69da80ff5ea9ff4991` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
