# HasFDerivAt.lim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:672b95d4-3f7e-519c-7bf0-4c01c91d90a9",
  "kind": "theorem",
  "lexical_name": "HasFDerivAt.lim",
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
  "slug": "hasfderivat-lim--3f94dff48e32f094c4a92f11",
  "source": {
    "blob": "f5f3c70718a7365e2599ea92e3cbc099e9a38a0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 352,
    "line": 341,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant5f69a2ab90d9b18aee218efb258c4ec307a264e5de9c1812b98a6a01b8dc6bce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f94dff48e32f094c4a92f11d460761979056a0aa415af5ee06e6c7e0acfb869",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant5f69a2ab90d9b18aee218efb258c4ec307a264e5de9c1812b98a6a01b8dc6bce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:672b95d4-3f7e-519c-7bf0-4c01c91d90a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 341–352.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasFDerivAt.lim
    [ContinuousAdd E] [ContinuousSMul 𝕜 E] [ContinuousAdd F] [ContinuousSMul 𝕜 F]
    (hf : HasFDerivAt f f' x) (v : E) {α : Type*} {c : α → 𝕜} {l : Filter α}
    (hc : Tendsto (fun n => ‖c n‖) l atTop) :
    Tendsto (fun n => c n • (f (x + (c n)⁻¹ • v) - f x)) l (𝓝 (f' v)) := by
  refine (hasFDerivWithinAt_univ.2 hf).lim ?_ (.of_forall fun _ ↦ mem_univ _) ?_
  · rw [tendsto_norm_atTop_iff_cobounded] at hc
    simpa using (tendsto_inv₀_cobounded.comp hc).smul (tendsto_const_nhds (x := v))
  · refine tendsto_nhds_of_eventually_eq ?_
    refine (eventually_ne_of_tendsto_norm_atTop hc (0 : 𝕜)).mono fun y hy => ?_
    simp [hy]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant5f69a2ab90d9b18aee218efb258c4ec307a264e5de9c1812b98a6a01b8dc6bce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant5f69a2ab90d9b18aee218efb258c4ec307a264e5de9c1812b98a6a01b8dc6bce.lean#L341).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5f3c70718a7365e2599ea92e3cbc099e9a38a0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
