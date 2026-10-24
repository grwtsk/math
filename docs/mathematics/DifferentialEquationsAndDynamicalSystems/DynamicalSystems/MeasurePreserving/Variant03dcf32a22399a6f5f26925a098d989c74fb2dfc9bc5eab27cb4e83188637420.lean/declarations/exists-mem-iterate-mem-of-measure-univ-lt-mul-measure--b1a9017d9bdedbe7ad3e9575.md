# exists_mem_iterate_mem_of_measure_univ_lt_mul_measure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d3df4da0-a3fa-7844-da0b-fb151bf2b872",
  "kind": "theorem",
  "lexical_name": "exists_mem_iterate_mem_of_measure_univ_lt_mul_measure",
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
  "slug": "exists-mem-iterate-mem-of-measure-univ-lt-mul-measure--b1a9017d9bdedbe7ad3e9575",
  "source": {
    "blob": "7b5c694ef39da0496f448bd22e60b6bdc296464e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 220,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant03dcf32a22399a6f5f26925a098d989c74fb2dfc9bc5eab27cb4e83188637420.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1a9017d9bdedbe7ad3e9575be2c58345ce7d7631e8fc84e6ab6366743290a61",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant03dcf32a22399a6f5f26925a098d989c74fb2dfc9bc5eab27cb4e83188637420.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3df4da0-a3fa-7844-da0b-fb151bf2b872`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_mem_iterate_mem_of_measure_univ_lt_mul_measure (hf : MeasurePreserving f μ μ)
    (hs : NullMeasurableSet s μ) {n : ℕ} (hvol : μ (Set.univ : Set α) < n * μ s) :
    ∃ x ∈ s, ∃ m ∈ Set.Ioo 0 n, f^[m] x ∈ s := by
  have A : ∀ m, NullMeasurableSet (f^[m] ⁻¹' s) μ := fun m ↦
    hs.preimage (hf.iterate m).quasiMeasurePreserving
  have B : ∀ m, μ (f^[m] ⁻¹' s) = μ s := fun m ↦ (hf.iterate m).measure_preimage hs
  have : μ (univ : Set α) < ∑ m ∈ Finset.range n, μ (f^[m] ⁻¹' s) := by simpa [B]
  obtain ⟨i, hi, j, hj, hij, x, hxi : f^[i] x ∈ s, hxj : f^[j] x ∈ s⟩ :
      ∃ i < n, ∃ j < n, i ≠ j ∧ (f^[i] ⁻¹' s ∩ f^[j] ⁻¹' s).Nonempty := by
    simpa using exists_nonempty_inter_of_measure_univ_lt_sum_measure μ (fun m _ ↦ A m) this
  wlog hlt : i < j generalizing i j
  · exact this j hj i hi hij.symm hxj hxi (hij.lt_or_gt.resolve_left hlt)
  refine ⟨f^[i] x, hxi, j - i, ⟨tsub_pos_of_lt hlt, lt_of_le_of_lt (j.sub_le i) hj⟩, ?_⟩
  rwa [← iterate_add_apply, tsub_add_cancel_of_le hlt.le]

/-- A self-map preserving a finite measure is conservative: if `μ s ≠ 0`, then at least one point
`x ∈ s` comes back to `s` under iterations of `f`. Actually, a.e. point of `s` comes back to `s`
infinitely many times, see `MeasureTheory.MeasurePreserving.conservative` and theorems about
`MeasureTheory.Conservative`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant03dcf32a22399a6f5f26925a098d989c74fb2dfc9bc5eab27cb4e83188637420.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant03dcf32a22399a6f5f26925a098d989c74fb2dfc9bc5eab27cb4e83188637420.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b5c694ef39da0496f448bd22e60b6bdc296464e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
