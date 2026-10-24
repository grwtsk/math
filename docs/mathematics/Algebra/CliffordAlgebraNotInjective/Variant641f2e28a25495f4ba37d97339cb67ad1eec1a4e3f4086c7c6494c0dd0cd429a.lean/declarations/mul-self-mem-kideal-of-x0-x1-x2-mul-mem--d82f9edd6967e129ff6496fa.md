# mul_self_mem_kIdeal_of_X0_X1_X2_mul_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a1d7bae-483c-7329-be79-6307cd07490d",
  "kind": "theorem",
  "lexical_name": "mul_self_mem_kIdeal_of_X0_X1_X2_mul_mem",
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
  "slug": "mul-self-mem-kideal-of-x0-x1-x2-mul-mem--d82f9edd6967e129ff6496fa",
  "source": {
    "blob": "4869e97aa7dc4c2c7c9a9d2f169e1166cfd281e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 71,
    "path": "GRWTSK/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d82f9edd6967e129ff6496fa6d4034c815f9c1cf027c56519c08464a90c4916a",
  "verification": {
    "reference": "docs/verification/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a1d7bae-483c-7329-be79-6307cd07490d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_self_mem_kIdeal_of_X0_X1_X2_mul_mem {x : MvPolynomial (Fin 3) (ZMod 2)}
    (h : X 0 * X 1 * X 2 * x ∈ kIdeal) : x * x ∈ kIdeal := by
  rw [mem_kIdeal_iff] at h
  have : x ∈ Ideal.span ((X : Fin 3 → MvPolynomial _ (ZMod 2)) '' Set.univ) := by
    rw [mem_ideal_span_X_image]
    intro m hm
    simp_rw [mul_assoc, support_X_mul, Finset.map_map, Finset.mem_map,
      Function.Embedding.trans_apply, addLeftEmbedding_apply, forall_exists_index,
      and_imp, forall_apply_eq_imp_iff₂, ← add_assoc, ←
      Fin.sum_univ_three fun i => Finsupp.single i 1, ← Finsupp.equivFunOnFinite_symm_eq_sum,
      Finsupp.add_apply, Finsupp.equivFunOnFinite_symm_apply_toFun] at h
    refine (h _ hm).imp fun i hi => ⟨Set.mem_univ _, ?_⟩
    rintro hmi
    rw [hmi] at hi
    norm_num at hi
  rw [as_sum x, CharTwo.sum_mul_self]
  refine sum_mem fun m hm => ?_
  rw [mem_kIdeal_iff, monomial_mul]
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

[Verification target and public status](../../../../../verification/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4869e97aa7dc4c2c7c9a9d2f169e1166cfd281e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
