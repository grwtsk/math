# full_readout_le_of_directional_projection_rows

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2186b3dd-981d-e29f-8258-ba81523c00bf",
  "kind": "theorem",
  "lexical_name": "full_readout_le_of_directional_projection_rows",
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
  "slug": "full-readout-le-of-directional-projection-rows--8b8143f18475cfd9cc06465f",
  "source": {
    "blob": "5fb3d4023bc9bc7192c1efe146055526eafc1588",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 150,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/InspectCopiedDirectional/Variant6cf49c2d0bc98b8fe7a214dccfa56fc19338e409baaf34d26803874f8fb087bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b8143f18475cfd9cc06465fdb6a01d3e541b0ac07def0012029218b70fdd924",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/InspectCopiedDirectional/Variant6cf49c2d0bc98b8fe7a214dccfa56fc19338e409baaf34d26803874f8fb087bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2186b3dd-981d-e29f-8258-ba81523c00bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem full_readout_le_of_directional_projection_rows [CompleteSpace H]
    (hV : Monotone V) (hzero : V 0 = ⊥) (K : H →L[ℂ] H) (hK : IsSelfAdjoint K)
    (q : H) (n : ℕ) (hq : q ∈ V n) (B : ℝ)
    (hB : (∑ j ∈ Finset.range n, combinedDirectionalPrice V K q j ^ 2) ≤ B) :
    quadraticReadout K q ≤ ‖q‖ * Real.sqrt B := by
  have hn : projectedState V q n = q := Submodule.starProjection_eq_self_iff.mpr hq
  have h0 : projectedState V q 0 = 0 := by simp [projectedState, hzero]
  have h := projected_readout_le_of_directional_square V hV K hK q n B hB
  simpa only [hn, h0, quadraticReadout, map_zero, inner_zero_left, Complex.zero_re,
    sub_zero] using h

/-- A single exact source block is tautological: its price is the readout's positive part. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/InspectCopiedDirectional/Variant6cf49c2d0bc98b8fe7a214dccfa56fc19338e409baaf34d26803874f8fb087bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/InspectCopiedDirectional/Variant6cf49c2d0bc98b8fe7a214dccfa56fc19338e409baaf34d26803874f8fb087bf.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fb3d4023bc9bc7192c1efe146055526eafc1588` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
