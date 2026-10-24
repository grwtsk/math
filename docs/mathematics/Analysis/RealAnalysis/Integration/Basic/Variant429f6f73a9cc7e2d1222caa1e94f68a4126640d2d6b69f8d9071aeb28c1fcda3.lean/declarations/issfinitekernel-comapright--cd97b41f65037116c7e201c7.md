# IsSFiniteKernel.comapRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b889938c82c419c448d4fc63d090287cbdb973ff175d4c125387624c6a0d3cfe",
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
  "slug": "issfinitekernel-comapright--cd97b41f65037116c7e201c7",
  "source": {
    "blob": "4683fef638ea312441ef263192bb3ec2ea40c62c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 325,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant429f6f73a9cc7e2d1222caa1e94f68a4126640d2d6b69f8d9071aeb28c1fcda3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd97b41f65037116c7e201c7220bdc4ce254f48882bf858a13d8e3871b35fe34",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant429f6f73a9cc7e2d1222caa1e94f68a4126640d2d6b69f8d9071aeb28c1fcda3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b889938c82c419c448d4fc63d090287cbdb973ff175d4c125387624c6a0d3cfe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected instance IsSFiniteKernel.comapRight (κ : Kernel α β) [IsSFiniteKernel κ]
    (hf : MeasurableEmbedding f) : IsSFiniteKernel (comapRight κ hf) := by
  refine ⟨⟨fun n => comapRight (seq κ n) hf, inferInstance, ?_⟩⟩
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

end ComapRight

section Piecewise

variable {η : Kernel α β} {s : Set α} {hs : MeasurableSet s} [DecidablePred (· ∈ s)]

/-- `ProbabilityTheory.Kernel.piecewise hs κ η` is the kernel equal to `κ` on the measurable set `s`
and to `η` on its complement. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant429f6f73a9cc7e2d1222caa1e94f68a4126640d2d6b69f8d9071aeb28c1fcda3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant429f6f73a9cc7e2d1222caa1e94f68a4126640d2d6b69f8d9071aeb28c1fcda3.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4683fef638ea312441ef263192bb3ec2ea40c62c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
