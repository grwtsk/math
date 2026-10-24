# measurable_trajFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f96b0b41-12d4-99ce-8adc-1c94643bcb25",
  "kind": "theorem",
  "lexical_name": "measurable_trajFun",
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
  "slug": "measurable-trajfun--d45c3efce8d531cfebaf582a",
  "source": {
    "blob": "8f1752e5d91d551ac2645e9ff6e93780bac736ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 525,
    "line": 501,
    "path": "GRWTSK/Analysis/MeasureTheory/Traj/Variantefbde4a18eb2fc5ea533e9bbba49e704cc08a4cd6d75cbfd0af0b45eb9f8bdc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d45c3efce8d531cfebaf582a0091d9ca6781402619d78104d858396d5d692f84",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Traj/Variantefbde4a18eb2fc5ea533e9bbba49e704cc08a4cd6d75cbfd0af0b45eb9f8bdc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f96b0b41-12d4-99ce-8adc-1c94643bcb25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 501–525.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurable_trajFun (a : ℕ) : Measurable (trajFun κ a) := by
  apply Measure.measurable_of_measurable_coe
  refine MeasurableSpace.induction_on_inter
    (C := fun t ht ↦ Measurable (fun x₀ ↦ trajFun κ a x₀ t))
    (s := measurableCylinders X) generateFrom_measurableCylinders.symm
    isPiSystem_measurableCylinders (by simp) (fun t ht ↦ ?cylinder) (fun t mt ht ↦ ?compl)
    (fun f disf mf hf ↦ ?union)
  · obtain ⟨N, S, mS, t_eq⟩ : ∃ N S, MeasurableSet S ∧ t = cylinder (Iic N) S := by
      simpa [measurableCylinders_nat] using ht
    simp_rw [trajFun, AddContent.measure_eq _ _ generateFrom_measurableCylinders.symm _ ht,
      trajContent, projectiveFamilyContent_congr _ t t_eq mS, inducedFamily]
    refine Measure.measurable_measure.1 ?_ _ mS
    exact (Measure.measurable_map _ (measurable_restrict₂ _)).comp (measurable _)
  · have := isProbabilityMeasure_trajFun κ a
    simpa [measure_compl mt (measure_ne_top _ _)] using Measurable.const_sub ht _
  · simpa [measure_iUnion disf mf] using Measurable.tsum hf

/-- *Ionescu-Tulcea Theorem* : Given a family of kernels `κ n` taking variables in `Iic n` with
value in `X (n + 1)`, the kernel `traj κ a` takes a variable `x` depending on the
variables `i ≤ a` and associates to it a kernel on trajectories depending on all variables,
where the entries with index `≤ a` are those of `x`, and then one follows iteratively the
kernels `κ a`, then `κ (a + 1)`, and so on.

The fact that such a kernel exists on infinite trajectories is not obvious, and is the content of
the Ionescu-Tulcea theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Traj/Variantefbde4a18eb2fc5ea533e9bbba49e704cc08a4cd6d75cbfd0af0b45eb9f8bdc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Traj/Variantefbde4a18eb2fc5ea533e9bbba49e704cc08a4cd6d75cbfd0af0b45eb9f8bdc0.lean#L501).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f1752e5d91d551ac2645e9ff6e93780bac736ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
