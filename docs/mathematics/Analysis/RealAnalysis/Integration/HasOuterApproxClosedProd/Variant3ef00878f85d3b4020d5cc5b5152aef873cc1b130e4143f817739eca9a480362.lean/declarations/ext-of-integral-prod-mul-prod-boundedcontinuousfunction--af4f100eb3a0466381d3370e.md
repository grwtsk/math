# ext_of_integral_prod_mul_prod_boundedContinuousFunction'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77c95f3b-9aaa-6821-953b-85dd8336b402",
  "kind": "lemma",
  "lexical_name": "ext_of_integral_prod_mul_prod_boundedContinuousFunction'",
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
  "slug": "ext-of-integral-prod-mul-prod-boundedcontinuousfunction--af4f100eb3a0466381d3370e",
  "source": {
    "blob": "3c3c1aa30acb951e34c19d1bcf8000ad38599457",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 286,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HasOuterApproxClosedProd/Variant3ef00878f85d3b4020d5cc5b5152aef873cc1b130e4143f817739eca9a480362.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af4f100eb3a0466381d3370ef35cc69080ad26d8496211566fa90b369da28390",
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

Occurrence: `result:77c95f3b-9aaa-6821-953b-85dd8336b402`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ext_of_integral_prod_mul_prod_boundedContinuousFunction'
    {μ ν : Measure ((Π i, X i) × (Π j, Y j))} [IsFiniteMeasure μ] [IsFiniteMeasure ν]
    (h : ∀ (f : (Π i, X i) →ᵇ ℝ) (g : (Π j, Y j) →ᵇ ℝ),
      ∫ p, f p.1 * g p.2 ∂μ = ∫ p, f p.1 * g p.2 ∂ν) :
    μ = ν := by
  have := Fintype.ofFinite ι; have := Fintype.ofFinite κ
  refine ext_of_integral_prod_mul_prod_boundedContinuousFunction fun f g ↦ ?_
  convert!
    h (∏ i, (f i).compContinuous ⟨Function.eval i, by fun_prop⟩)
      (∏ j, (g j).compContinuous ⟨Function.eval j, by fun_prop⟩) <;> simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HasOuterApproxClosedProd/Variant3ef00878f85d3b4020d5cc5b5152aef873cc1b130e4143f817739eca9a480362.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HasOuterApproxClosedProd/Variant3ef00878f85d3b4020d5cc5b5152aef873cc1b130e4143f817739eca9a480362.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c3c1aa30acb951e34c19d1bcf8000ad38599457` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
