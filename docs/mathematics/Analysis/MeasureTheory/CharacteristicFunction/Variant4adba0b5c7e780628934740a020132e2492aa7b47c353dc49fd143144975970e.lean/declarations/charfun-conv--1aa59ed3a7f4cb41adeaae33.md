# charFun_conv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e70279c8-b681-f69e-461a-81baf12623c8",
  "kind": "lemma",
  "lexical_name": "charFun_conv",
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
  "slug": "charfun-conv--1aa59ed3a7f4cb41adeaae33",
  "source": {
    "blob": "cfe39edd793ec429e617eca068248d1f1cb8d4b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 222,
    "path": "GRWTSK/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1aa59ed3a7f4cb41adeaae334101b01b99642221ee4d6e37a04c0a46c2079e0f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e70279c8-b681-f69e-461a-81baf12623c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma charFun_conv [IsFiniteMeasure μ] [IsFiniteMeasure ν] (t : E) :
    charFun (μ ∗ ν) t = charFun μ t * charFun ν t := by
  simp_rw [charFun_apply]
  rw [integral_conv]
  · simp [inner_add_left, add_mul, Complex.exp_add, integral_const_mul, integral_mul_const]
  · exact (integrable_const (1 : ℝ)).mono (by fun_prop) (by simp)

end InnerProductSpace

section NormedSpace

variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] {mE : MeasurableSpace E}
  [NormedAddCommGroup F] [NormedSpace ℝ F] {mF : MeasurableSpace F}
  {μ : Measure E} {ν : Measure F}

/-- The characteristic function of a measure in a normed space, function from `Dual ℝ E` to `ℂ`
with `charFunDual μ L = ∫ v, exp (L v * I) ∂μ`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfe39edd793ec429e617eca068248d1f1cb8d4b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
