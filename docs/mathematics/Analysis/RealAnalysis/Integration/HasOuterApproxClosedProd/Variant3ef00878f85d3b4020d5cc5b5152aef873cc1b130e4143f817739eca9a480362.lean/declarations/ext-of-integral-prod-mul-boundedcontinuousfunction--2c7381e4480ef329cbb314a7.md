# ext_of_integral_prod_mul_boundedContinuousFunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:545d488c-8683-63fd-8eee-f6bba7a45258",
  "kind": "lemma",
  "lexical_name": "ext_of_integral_prod_mul_boundedContinuousFunction",
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
  "slug": "ext-of-integral-prod-mul-boundedcontinuousfunction--2c7381e4480ef329cbb314a7",
  "source": {
    "blob": "3c3c1aa30acb951e34c19d1bcf8000ad38599457",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 215,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HasOuterApproxClosedProd/Variant3ef00878f85d3b4020d5cc5b5152aef873cc1b130e4143f817739eca9a480362.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c7381e4480ef329cbb314a780c6fd5024d2fd805368d0c1ee4ec1437da469e4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HasOuterApproxClosedProd/Variant3ef00878f85d3b4020d5cc5b5152aef873cc1b130e4143f817739eca9a480362.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:545d488c-8683-63fd-8eee-f6bba7a45258`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ext_of_integral_prod_mul_boundedContinuousFunction {μ ν : Measure ((Π i, X i) × T)}
    [IsFiniteMeasure μ] [IsFiniteMeasure ν]
    (h : ∀ (f : (i : ι) → X i →ᵇ ℝ) (g : T →ᵇ ℝ),
      ∫ p, (∏ i, f i (p.1 i)) * g p.2 ∂μ = ∫ p, (∏ i, f i (p.1 i)) * g p.2 ∂ν) :
    μ = ν := by
  let e : ((Π i, X i) × T) ≃ᵐ ((Π i, X i) × (Unit → T)) :=
    { toFun p := ⟨fun i ↦ p.1 i, fun _ ↦ p.2⟩
      invFun p := ⟨fun i ↦ p.1 i, p.2 ()⟩
      left_inv p := by simp
      right_inv p := by simp }
  rw [← e.map_measurableEquiv_injective.eq_iff]
  refine ext_of_integral_prod_mul_prod_boundedContinuousFunction fun f g ↦ ?_
  rw [integral_map_equiv, integral_map_equiv]
  simpa [e] using h f (g ())

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HasOuterApproxClosedProd/Variant3ef00878f85d3b4020d5cc5b5152aef873cc1b130e4143f817739eca9a480362.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HasOuterApproxClosedProd/Variant3ef00878f85d3b4020d5cc5b5152aef873cc1b130e4143f817739eca9a480362.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c3c1aa30acb951e34c19d1bcf8000ad38599457` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
