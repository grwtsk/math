# IsSFiniteKernel.comapRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:602b65f68db606b9080c7ada142585bd8c15b62b207e2e6adccae7cf9a649f6c",
  "kind": "instance",
  "lexical_name": "IsSFiniteKernel.comapRight",
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
  "slug": "issfinitekernel-comapright--70a0bd57593689e800dcc1a5",
  "source": {
    "blob": "28f9ee4002795ae62a048574c561692e42872ccf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 622,
    "line": 598,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant02911435eab328c245da9d588eca9d051a81606d2d25f8840579fab816cdf409.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:70a0bd57593689e800dcc1a59997dfbb08a2e2b51bacfa43f51a4aa6b596c9a1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant02911435eab328c245da9d588eca9d051a81606d2d25f8840579fab816cdf409.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:602b65f68db606b9080c7ada142585bd8c15b62b207e2e6adccae7cf9a649f6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 598–622.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected instance IsSFiniteKernel.comapRight (κ : kernel α β) [IsSFiniteKernel κ]
    (hf : MeasurableEmbedding f) : IsSFiniteKernel (comapRight κ hf) := by
  refine' ⟨⟨fun n => comapRight (seq κ n) hf, inferInstance, _⟩⟩
  ext1 a
  rw [sum_apply]
  simp_rw [comapRight_apply _ hf]
  have :
    (Measure.sum fun n => Measure.comap f (seq κ n a)) =
      Measure.comap f (Measure.sum fun n => seq κ n a) := by
    ext1 t ht
    rw [Measure.comap_apply _ hf.injective (fun s' => hf.measurableSet_image.mpr) _ ht,
      Measure.sum_apply _ ht, Measure.sum_apply _ (hf.measurableSet_image.mpr ht)]
    congr with n : 1
    rw [Measure.comap_apply _ hf.injective (fun s' => hf.measurableSet_image.mpr) _ ht]
  rw [this, measure_sum_seq]
#align probability_theory.kernel.is_s_finite_kernel.comap_right ProbabilityTheory.kernel.IsSFiniteKernel.comapRight

end ComapRight

section Piecewise

variable {η : kernel α β} {s : Set α} {hs : MeasurableSet s} [DecidablePred (· ∈ s)]

/-- `ProbabilityTheory.kernel.piecewise hs κ η` is the kernel equal to `κ` on the measurable set `s`
and to `η` on its complement. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant02911435eab328c245da9d588eca9d051a81606d2d25f8840579fab816cdf409.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant02911435eab328c245da9d588eca9d051a81606d2d25f8840579fab816cdf409.lean#L598).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28f9ee4002795ae62a048574c561692e42872ccf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
