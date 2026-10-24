# _root_.GRWTSK.Analysis.MeasureTheory.SFinite.Variant92267ba9729e9474e223246c9c037b09ef9c54b7c0348bea11c5883a03d7396f.Set.Infinite.meas_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b613ea23-e89d-65bb-0b2c-79d011a75773",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.SFinite.Variant92267ba9729e9474e223246c9c037b09ef9c54b7c0348bea11c5883a03d7396f.Set.Infinite.meas_eq_top",
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
  "slug": "root-grwtsk-analysis-measuretheory-sfinite-variant92267ba9729e9474e22324--e9d0c0a9922bfbbae8cb9381",
  "source": {
    "blob": "853877bcadd246cff80f7cda3a45128b777b6388",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 239,
    "path": "GRWTSK/Analysis/MeasureTheory/SFinite/Variant04a15fd3a283bbbc0b1fc88c0944f3cf5e21ab81f90bae01f89a6c83c76547d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9d0c0a9922bfbbae8cb938150945fa7af8e3107410bb08ccea6177acc674eda",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SFinite/Variant04a15fd3a283bbbc0b1fc88c0944f3cf5e21ab81f90bae01f89a6c83c76547d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b613ea23-e89d-65bb-0b2c-79d011a75773`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.MeasureTheory.SFinite.Variant92267ba9729e9474e223246c9c037b09ef9c54b7c0348bea11c5883a03d7396f.Set.Infinite.meas_eq_top [MeasurableSingletonClass α]
    {s : Set α} (hs : s.Infinite) (h' : ∃ ε, ε ≠ 0 ∧ ∀ x ∈ s, ε ≤ μ {x}) : μ s = ∞ := top_unique <|
  let ⟨ε, hne, hε⟩ := h'; have := hs.to_subtype
  calc
    ∞ = ∑' _ : s, ε := (ENNReal.tsum_const_eq_top_of_ne_zero hne).symm
    _ ≤ ∑' x : s, μ {x.1} := ENNReal.tsum_le_tsum fun x ↦ hε x x.2
    _ ≤ μ (⋃ x : s, {x.1}) := tsum_meas_le_meas_iUnion_of_disjoint _
      (fun _ ↦ MeasurableSet.singleton _) fun x y hne ↦ by simpa [Subtype.val_inj]
    _ = μ s := by simp

/-- If the union of a.e.-disjoint null-measurable sets has finite measure, then there are only
countably many members of the union whose measure is positive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SFinite/Variant04a15fd3a283bbbc0b1fc88c0944f3cf5e21ab81f90bae01f89a6c83c76547d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SFinite/Variant04a15fd3a283bbbc0b1fc88c0944f3cf5e21ab81f90bae01f89a6c83c76547d4.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `853877bcadd246cff80f7cda3a45128b777b6388` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
