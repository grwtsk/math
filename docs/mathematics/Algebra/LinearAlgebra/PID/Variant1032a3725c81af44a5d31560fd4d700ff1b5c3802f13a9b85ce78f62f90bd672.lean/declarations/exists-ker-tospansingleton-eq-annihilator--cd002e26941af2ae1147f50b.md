# exists_ker_toSpanSingleton_eq_annihilator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f4dd728-6d08-01d9-649b-b9fedd59321a",
  "kind": "theorem",
  "lexical_name": "exists_ker_toSpanSingleton_eq_annihilator",
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
  "slug": "exists-ker-tospansingleton-eq-annihilator--cd002e26941af2ae1147f50b",
  "source": {
    "blob": "7d90409fe566a11917fe218e2c5346922af8d7ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 279,
    "path": "GRWTSK/Algebra/LinearAlgebra/PID/Variant1032a3725c81af44a5d31560fd4d700ff1b5c3802f13a9b85ce78f62f90bd672.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd002e26941af2ae1147f50bff6b15ad3c55b96ee47071cc0e2f3ab5d1ed7f47",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PID/Variant1032a3725c81af44a5d31560fd4d700ff1b5c3802f13a9b85ce78f62f90bd672.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f4dd728-6d08-01d9-649b-b9fedd59321a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_ker_toSpanSingleton_eq_annihilator [Module.Finite R M] :
    ∃ x : M, ker (toSpanSingleton R _ x) = annihilator R M := by
  have ⟨m, ι, _, p, irr, n, ⟨e⟩⟩ := equiv_free_prod_directSum (R := R) (M := M)
  refine ⟨e.symm (Finsupp.equivFunOnFinite.symm fun _ ↦ 1, DFinsupp.equivFunOnFintype.symm
    fun _ ↦ mkQ _ 1), le_antisymm (fun x h ↦ ?_) fun x h ↦ mem_annihilator.mp h _⟩
  rw [mem_ker, toSpanSingleton_apply, ← map_smul,
    e.symm.map_eq_zero_iff, Prod.ext_iff, Finsupp.ext_iff, DFinsupp.ext_iff] at h
  obtain _ | m := m
  · rw [← mul_one x, ← smul_eq_mul, e.annihilator_eq, annihilator_prod]
    simp_rw [annihilator_eq_top_iff.mpr inferInstance, DirectSum, annihilator_dfinsupp,
      top_inf_eq, mem_iInf, Ideal.annihilator_quotient, ← Quotient.mk_eq_zero]
    exact h.2
  · rw [show x = 0 by simpa using h.1 0]
    exact zero_mem _

end Module
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PID/Variant1032a3725c81af44a5d31560fd4d700ff1b5c3802f13a9b85ce78f62f90bd672.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PID/Variant1032a3725c81af44a5d31560fd4d700ff1b5c3802f13a9b85ce78f62f90bd672.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d90409fe566a11917fe218e2c5346922af8d7ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
