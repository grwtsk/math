# mul_self_mem_kIdeal_of_X_Y_Z_mul_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73b13f96-6b13-9be6-74f3-d858aff25d39",
  "kind": "theorem",
  "lexical_name": "mul_self_mem_kIdeal_of_X_Y_Z_mul_mem",
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
  "slug": "mul-self-mem-kideal-of-x-y-z-mul-mem--b00cc54ae333f635e436d009",
  "source": {
    "blob": "2ebf9d27a2d131951441c917f2fa2dc2ce974315",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 74,
    "path": "GRWTSK/Algebra/CliffordAlgebraNotInjective/Variant788fec8499b73fac79448888f5afee293fb220417f6fb48b8ea20d9637cfea29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b00cc54ae333f635e436d00999e0039a2c10706841a556ce2ff2d9f74a23082d",
  "verification": {
    "reference": "docs/verification/Algebra/CliffordAlgebraNotInjective/Variant788fec8499b73fac79448888f5afee293fb220417f6fb48b8ea20d9637cfea29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73b13f96-6b13-9be6-74f3-d858aff25d39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_self_mem_kIdeal_of_X_Y_Z_mul_mem {x : MvPolynomial (Fin 3) (ZMod 2)}
    (h : X * Y * Z * x ∈ kIdeal) : x * x ∈ kIdeal := by
  rw [mem_kIdeal_iff] at h
  have : x ∈ Ideal.span ((MvPolynomial.X : Fin 3 → MvPolynomial _ (ZMod 2)) '' Set.univ) := by
    rw [mem_ideal_span_X_image]
    intro m hm
    simp_rw [mul_assoc, support_X_mul, Finset.map_map, Finset.mem_map,
      Function.Embedding.trans_apply, addLeftEmbedding_apply, forall_exists_index,
      and_imp, forall_apply_eq_imp_iff₂, ← add_assoc, ←
      Fin.sum_univ_three fun i => Finsupp.single i 1, ← Finsupp.equivFunOnFinite_symm_eq_sum,
      Finsupp.add_apply, Finsupp.equivFunOnFinite_symm_apply_apply] at h
    refine (h _ hm).imp fun i hi => ⟨Set.mem_univ _, ?_⟩
    rintro hmi
    rw [hmi] at hi
    norm_num at hi
  rw [as_sum x, CharTwo.sum_mul_self]
  refine sum_mem fun m hm => ?_
  rw [mem_kIdeal_iff, monomial_mul_monomial]
  intro m' hm'
  obtain rfl := Finset.mem_singleton.1 (support_monomial_subset hm')
  rw [mem_ideal_span_X_image] at this
  obtain ⟨i, _, hi⟩ := this m hm
  simp_rw [← one_add_one_eq_two]
  refine ⟨i, Nat.add_le_add ?_ ?_⟩ <;> rwa [Nat.one_le_iff_ne_zero]

/-- `𝔽₂[α, β, γ] / (α², β², γ²)` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CliffordAlgebraNotInjective/Variant788fec8499b73fac79448888f5afee293fb220417f6fb48b8ea20d9637cfea29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CliffordAlgebraNotInjective/Variant788fec8499b73fac79448888f5afee293fb220417f6fb48b8ea20d9637cfea29.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ebf9d27a2d131951441c917f2fa2dc2ce974315` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
