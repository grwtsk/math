# iIndepFun.indepFun_prodMk_prodMk₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d326314-c135-1305-8bc6-38a4489aaa16",
  "kind": "theorem",
  "lexical_name": "iIndepFun.indepFun_prodMk_prodMk₀",
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
  "slug": "iindepfun-indepfun-prodmk-prodmk--7524d6b91ea1682068bac0cb",
  "source": {
    "blob": "428ee49d927019dc40db5400fd6c5c1aa80440c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 525,
    "line": 501,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/IndepFun/Variant5ec87c8603c6b829c9c935f62eaf3626080bf03872f39df4fef51e6f6b1a3990.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7524d6b91ea1682068bac0cbd09bb21e362dc6d47e66037a3d51533bfc645098",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/IndepFun/Variant5ec87c8603c6b829c9c935f62eaf3626080bf03872f39df4fef51e6f6b1a3990.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d326314-c135-1305-8bc6-38a4489aaa16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 501–525.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iIndepFun.indepFun_prodMk_prodMk₀ (hf_indep : iIndepFun f κ μ)
    (hf_meas : ∀ i, AEMeasurable (f i) (κ ∘ₘ μ))
    (i j k l : ι) (hik : i ≠ k) (hil : i ≠ l) (hjk : j ≠ k) (hjl : j ≠ l) :
    IndepFun (fun a ↦ (f i a, f j a)) (fun a ↦ (f k a, f l a)) κ μ := by
  have h : IndepFun (fun a ↦ ((hf_meas i).mk (f i) a, (hf_meas j).mk (f j) a))
      (fun a ↦ ((hf_meas k).mk (f k) a, (hf_meas l).mk (f l) a)) κ μ := by
    refine iIndepFun.indepFun_prodMk_prodMk ?_ (fun i ↦ (hf_meas i).measurable_mk) _ _ _ _ hik hil
      hjk hjl
    exact iIndepFun.congr' hf_indep fun i ↦ Measure.ae_ae_of_ae_comp (hf_meas i).ae_eq_mk
  refine IndepFun.congr' h ?_ ?_
  · filter_upwards [Measure.ae_ae_of_ae_comp (hf_meas i).ae_eq_mk,
      Measure.ae_ae_of_ae_comp (hf_meas j).ae_eq_mk] with a hi hj
    filter_upwards [hi, hj] with ω hωi hωj
    rw [← hωi, ← hωj]
  · filter_upwards [Measure.ae_ae_of_ae_comp (hf_meas k).ae_eq_mk,
      Measure.ae_ae_of_ae_comp (hf_meas l).ae_eq_mk] with a hk hl
    filter_upwards [hk, hl] with ω hωk hωl
    rw [← hωk, ← hωl]

end iIndepFun

section Mul
variable {β : Type*} {m : MeasurableSpace β} [Mul β] [MeasurableMul₂ β] {f : ι → Ω → β}

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/IndepFun/Variant5ec87c8603c6b829c9c935f62eaf3626080bf03872f39df4fef51e6f6b1a3990.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/IndepFun/Variant5ec87c8603c6b829c9c935f62eaf3626080bf03872f39df4fef51e6f6b1a3990.lean#L501).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `428ee49d927019dc40db5400fd6c5c1aa80440c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
