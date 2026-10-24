# integral_integral_swap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9a11edce1155ee73b04ed856f70353e9c9c7b81f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 434,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/26/261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:86371434-bb9f-1ebf-8bc9-1b9204d9ce74",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a7e80988-c4a1-2840-698a-d171ae9046da",
  "kind": "theorem",
  "lexical_name": "integral_integral_swap",
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
  "slug": "integral-integral-swap--182480270224a9bc96800195",
  "source": {
    "blob": "9a11edce1155ee73b04ed856f70353e9c9c7b81f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 452,
    "line": 434,
    "path": "GRWTSK/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:182480270224a9bc968001951929427e93df0f7795b34b5cb480c27e53409458",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7e80988-c4a1-2840-698a-d171ae9046da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 434–452.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_integral_swap
    [IsFiniteMeasure ν.variation] [IsFiniteMeasure μ.variation]
    ⦃f : X → Y → G⦄ [CompleteSpace H] [CompleteSpace J]
    {B : G →L[ℝ] F →L[ℝ] H} {C : H →L[ℝ] E →L[ℝ] I}
    {A : G →L[ℝ] E →L[ℝ] J} {D : J →L[ℝ] F →L[ℝ] I}
    (hf : Integrable (uncurry f) (μ.variation.prod ν.variation))
    (h : ∀ x y z, C (B x y) z = D (A x z) y) :
    ∫ᵛ x, ∫ᵛ y, f x y ∂[B; ν] ∂[C; μ] = ∫ᵛ y, ∫ᵛ x, f x y ∂[A; μ] ∂[D; ν] := by
  by_cases hI : CompleteSpace I; swap
  · simp [integral_of_not_completeSpace, hI]
  let P : (H →L[ℝ] I) →L[ℝ] (G →L[ℝ] H) →L[ℝ] (G →L[ℝ] I) :=
    ContinuousLinearMap.compL ℝ G H I
  let A' := ContinuousLinearMap.bilinearComp P C.flip B.flip
  let D' : G →L[ℝ] (G →L[ℝ] I) →L[ℝ] I := ContinuousLinearMap.apply ℝ I
  rw [integral_integral (A := A') (D := D') hf (by simp [D', A', P])]
  exact (integral_integral_symm hf (by simp [D', A', P, h])).symm

/-- Change the order of integration in integrals wrt vector measures.
Case where `f` is scalar. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean#L434).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a11edce1155ee73b04ed856f70353e9c9c7b81f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
