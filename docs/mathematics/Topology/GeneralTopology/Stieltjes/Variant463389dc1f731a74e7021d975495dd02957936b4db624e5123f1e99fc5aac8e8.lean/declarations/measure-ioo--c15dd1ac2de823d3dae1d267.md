# measure_Ioo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d85d21dd-c42b-ea26-0daf-44f459e5b0d9",
  "kind": "theorem",
  "lexical_name": "measure_Ioo",
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
  "slug": "measure-ioo--c15dd1ac2de823d3dae1d267",
  "source": {
    "blob": "56028fa6106b368cbb7296b4a8a138d9c34b7966",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 420,
    "line": 404,
    "path": "GRWTSK/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c15dd1ac2de823d3dae1d26713248994c20d15362523d2c2bd37b1c249345890",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d85d21dd-c42b-ea26-0daf-44f459e5b0d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 404–420.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_Ioo {a b : ℝ} : f.measure (Ioo a b) = ofReal (leftLim f b - f a) := by
  rcases le_or_lt b a with (hab | hab)
  · simp only [hab, measure_empty, Ioo_eq_empty, not_lt]
    symm
    simp [ENNReal.ofReal_eq_zero, f.mono.leftLim_le hab]
  · have A : Disjoint (Ioo a b) {b} := by simp
    have D : f b - f a = f b - leftLim f b + (leftLim f b - f a) := by abel
    have := f.measure_Ioc a b
    simp only [← Ioo_union_Icc_eq_Ioc hab le_rfl, measure_singleton,
      measure_union A (measurableSet_singleton b), Icc_self] at this
    rw [D, ENNReal.ofReal_add, add_comm] at this
    · simpa only [ENNReal.add_right_inj ENNReal.ofReal_ne_top]
    · simp only [f.mono.leftLim_le le_rfl, sub_nonneg]
    · simp only [f.mono.le_leftLim hab, sub_nonneg]
#align stieltjes_function.measure_Ioo StieltjesFunction.measure_Ioo

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean#L404).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56028fa6106b368cbb7296b4a8a138d9c34b7966` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
