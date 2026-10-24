# integral_add_measure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f19b96e9-8ffb-2809-b0ea-3d02fce9d37d",
  "kind": "theorem",
  "lexical_name": "integral_add_measure",
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
  "slug": "integral-add-measure--e6f32e1e5806f462a6232c1f",
  "source": {
    "blob": "231f6160cc10a85ea9f0f54834862b6657c8c993",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 995,
    "line": 975,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variantcb9a18a3ab4ed7c88cdbe248bd10643324b56682e2c0b2687e6872d2a136a1b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6f32e1e5806f462a6232c1f16c1c163a79067ea219c11146c36ea4b04a6b24a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variantcb9a18a3ab4ed7c88cdbe248bd10643324b56682e2c0b2687e6872d2a136a1b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f19b96e9-8ffb-2809-b0ea-3d02fce9d37d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 975–995.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_add_measure {f : α → G} (hμ : Integrable f μ) (hν : Integrable f ν) :
    ∫ x, f x ∂(μ + ν) = ∫ x, f x ∂μ + ∫ x, f x ∂ν := by
  by_cases hG : CompleteSpace G; swap
  · simp [integral, hG]
  have hfi := hμ.add_measure hν
  simp_rw [integral_eq_setToFun]
  have hμ_dfma : DominatedFinMeasAdditive (μ + ν) (weightedSMul μ : Set α → G →L[ℝ] G) 1 :=
    DominatedFinMeasAdditive.add_measure_right μ ν (dominatedFinMeasAdditive_weightedSMul μ)
      zero_le_one
  have hν_dfma : DominatedFinMeasAdditive (μ + ν) (weightedSMul ν : Set α → G →L[ℝ] G) 1 :=
    DominatedFinMeasAdditive.add_measure_left μ ν (dominatedFinMeasAdditive_weightedSMul ν)
      zero_le_one
  rw [← setToFun_congr_measure_of_add_right hμ_dfma
        (dominatedFinMeasAdditive_weightedSMul μ) f hfi,
    ← setToFun_congr_measure_of_add_left hν_dfma (dominatedFinMeasAdditive_weightedSMul ν) f hfi]
  refine setToFun_add_left' _ _ _ (fun s _ hμνs => ?_) f
  rw [Measure.coe_add, Pi.add_apply, add_lt_top] at hμνs
  rw [weightedSMul, weightedSMul, weightedSMul, ← add_smul,
    measureReal_add_apply hμνs.1.ne hμνs.2.ne]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variantcb9a18a3ab4ed7c88cdbe248bd10643324b56682e2c0b2687e6872d2a136a1b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variantcb9a18a3ab4ed7c88cdbe248bd10643324b56682e2c0b2687e6872d2a136a1b9.lean#L975).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `231f6160cc10a85ea9f0f54834862b6657c8c993` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
