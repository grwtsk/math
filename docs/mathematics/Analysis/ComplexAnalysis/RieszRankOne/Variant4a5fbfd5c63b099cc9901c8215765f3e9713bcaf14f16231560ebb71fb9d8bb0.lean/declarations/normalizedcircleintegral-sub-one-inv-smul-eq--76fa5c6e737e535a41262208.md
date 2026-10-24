# normalizedCircleIntegral_sub_one_inv_smul_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:463905c1-58e9-f331-230a-c4911f2cc72d",
  "kind": "theorem",
  "lexical_name": "normalizedCircleIntegral_sub_one_inv_smul_eq",
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
  "slug": "normalizedcircleintegral-sub-one-inv-smul-eq--76fa5c6e737e535a41262208",
  "source": {
    "blob": "a336dd5980d3457802f4e4ad090ac48dccbe38f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 204,
    "path": "GRWTSK/Analysis/ComplexAnalysis/RieszRankOne/Variant4a5fbfd5c63b099cc9901c8215765f3e9713bcaf14f16231560ebb71fb9d8bb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76fa5c6e737e535a412622082f17365ba0f52879069c57f7f06908779d643386",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RieszRankOne/Variant4a5fbfd5c63b099cc9901c8215765f3e9713bcaf14f16231560ebb71fb9d8bb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:463905c1-58e9-f331-230a-c4911f2cc72d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedCircleIntegral_sub_one_inv_smul_eq
    (v : H) {r : ℝ} (hr : 0 < r) :
    normalizedCircleIntegral (fun z : ℂ ↦ (z - 1)⁻¹ • v) 1 r = v := by
  unfold normalizedCircleIntegral
  rw [circleIntegral.integral_smul_const,
    circleIntegral.integral_sub_center_inv (1 : ℂ) hr.ne']
  rw [inv_smul_smul₀]
  simp [Real.pi_ne_zero, I_ne_zero]

/--
The normalized resolvent integral around `C(1,r)` is exactly the idempotent
whose `1`-eigenspace the circle isolates.
-/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/RieszRankOne/Variant4a5fbfd5c63b099cc9901c8215765f3e9713bcaf14f16231560ebb71fb9d8bb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/RieszRankOne/Variant4a5fbfd5c63b099cc9901c8215765f3e9713bcaf14f16231560ebb71fb9d8bb0.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a336dd5980d3457802f4e4ad090ac48dccbe38f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
