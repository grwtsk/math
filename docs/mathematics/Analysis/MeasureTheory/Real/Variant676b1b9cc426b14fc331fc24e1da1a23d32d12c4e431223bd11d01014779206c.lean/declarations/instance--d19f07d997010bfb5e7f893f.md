# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ff3b202fdf636c52e99758e6d553cfe23e613f2b071987f2878b8e2283a6518c",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--d19f07d997010bfb5e7f893f",
  "source": {
    "blob": "bc38339bc21d598cbe6b515df8c59225a571733c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 529,
    "line": 512,
    "path": "GRWTSK/Analysis/MeasureTheory/Real/Variant676b1b9cc426b14fc331fc24e1da1a23d32d12c4e431223bd11d01014779206c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d19f07d997010bfb5e7f893f00def00051c4700e8086e2d160f09bdcd4d3f2da",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Real/Variant676b1b9cc426b14fc331fc24e1da1a23d32d12c4e431223bd11d01014779206c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ff3b202fdf636c52e99758e6d553cfe23e613f2b071987f2878b8e2283a6518c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 512–529.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : MeasurableMul₂ EReal := by
  refine ⟨measurable_of_real_real ?_ ?_ ?_ ?_ ?_⟩
  · exact (measurable_fst.mul measurable_snd).coe_real_ereal
  · exact (measurable_const_mul _).comp measurable_coe_real_ereal
  · exact (measurable_const_mul _).comp measurable_coe_real_ereal
  · simp_rw [mul_comm _ ⊥]
    exact (measurable_const_mul _).comp measurable_coe_real_ereal
  · simp_rw [mul_comm _ ⊤]
    exact (measurable_const_mul _).comp measurable_coe_real_ereal

end MeasurableMul

end EReal

/-- If a function `f : α → ℝ≥0` is measurable and the measure is σ-finite, then there exists
spanning measurable sets with finite measure on which `f` is bounded.
See also `StronglyMeasurable.exists_spanning_measurableSet_norm_le` for functions into normed
groups. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Real/Variant676b1b9cc426b14fc331fc24e1da1a23d32d12c4e431223bd11d01014779206c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Real/Variant676b1b9cc426b14fc331fc24e1da1a23d32d12c4e431223bd11d01014779206c.lean#L512).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc38339bc21d598cbe6b515df8c59225a571733c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
