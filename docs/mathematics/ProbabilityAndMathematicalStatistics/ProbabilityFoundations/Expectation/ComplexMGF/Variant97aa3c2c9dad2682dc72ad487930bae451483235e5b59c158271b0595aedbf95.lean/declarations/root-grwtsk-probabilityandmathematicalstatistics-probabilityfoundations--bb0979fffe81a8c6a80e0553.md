# _root_.GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ComplexMGF.Variant49ef4f9d7cf3359e06fa19058583ba5076dbd922ff0b9162e5fdb7c313af3d0e.MeasureTheory.Measure.ext_of_complexMGF_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ea48f52-cad8-7851-3a84-16647850cff4",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ComplexMGF.Variant49ef4f9d7cf3359e06fa19058583ba5076dbd922ff0b9162e5fdb7c313af3d0e.MeasureTheory.Measure.ext_of_complexMGF_eq",
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
  "slug": "root-grwtsk-probabilityandmathematicalstatistics-probabilityfoundations--bb0979fffe81a8c6a80e0553",
  "source": {
    "blob": "b40a2821163f629b067094724bf5d041fa3f58da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 339,
    "line": 325,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant97aa3c2c9dad2682dc72ad487930bae451483235e5b59c158271b0595aedbf95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb0979fffe81a8c6a80e0553c8e2758d5389eaac6673ba0dd2290a2c76c3fbc1",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant97aa3c2c9dad2682dc72ad487930bae451483235e5b59c158271b0595aedbf95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ea48f52-cad8-7851-3a84-16647850cff4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–339.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ComplexMGF.Variant49ef4f9d7cf3359e06fa19058583ba5076dbd922ff0b9162e5fdb7c313af3d0e.MeasureTheory.Measure.ext_of_complexMGF_eq [IsFiniteMeasure μ]
    [IsFiniteMeasure μ'] (hX : AEMeasurable X μ) (hY : AEMeasurable Y μ')
    (h : complexMGF X μ = complexMGF Y μ') :
    μ.map X = μ'.map Y := by
  have inner_ne_zero (x : ℝ) (h : x ≠ 0) : bilinFormOfRealInner x ≠ 0 :=
    DFunLike.ne_iff.mpr ⟨x, inner_self_ne_zero.mpr h⟩
  apply MeasureTheory.ext_of_integral_char_eq continuous_probChar probChar_ne_one inner_ne_zero
    continuous_inner (fun w ↦ ?_)
  rw [funext_iff] at h
  specialize h (Multiplicative.toAdd w * I)
  simp_rw [complexMGF, mul_assoc, mul_comm I, ← mul_assoc] at h
  simp only [BoundedContinuousFunction.char_apply, bilinFormOfRealInner_apply_apply,
    RCLike.inner_apply, conj_trivial, probChar_apply, ofReal_mul]
  rwa [integral_map hX (by fun_prop), integral_map hY (by fun_prop)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant97aa3c2c9dad2682dc72ad487930bae451483235e5b59c158271b0595aedbf95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant97aa3c2c9dad2682dc72ad487930bae451483235e5b59c158271b0595aedbf95.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b40a2821163f629b067094724bf5d041fa3f58da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
