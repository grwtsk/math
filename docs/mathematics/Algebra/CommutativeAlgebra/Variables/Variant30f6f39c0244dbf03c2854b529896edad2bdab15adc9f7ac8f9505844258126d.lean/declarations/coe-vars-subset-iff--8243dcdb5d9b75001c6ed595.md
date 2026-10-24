# coe_vars_subset_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "34043e304afd18ba5b4a4517c3523caa74ae5911",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/30/30f6f39c0244dbf03c2854b529896edad2bdab15adc9f7ac8f9505844258126d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:14208157-b33b-78f0-31da-a45946f0dd5f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f855354b-870d-6e20-365f-7e633211f114",
  "kind": "theorem",
  "lexical_name": "coe_vars_subset_iff",
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
  "slug": "coe-vars-subset-iff--8243dcdb5d9b75001c6ed595",
  "source": {
    "blob": "34043e304afd18ba5b4a4517c3523caa74ae5911",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 77,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Variables/Variant30f6f39c0244dbf03c2854b529896edad2bdab15adc9f7ac8f9505844258126d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8243dcdb5d9b75001c6ed59599152bc58c12843ecb23b976b252e19c3979b8e9",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Variables/Variant30f6f39c0244dbf03c2854b529896edad2bdab15adc9f7ac8f9505844258126d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f855354b-870d-6e20-365f-7e633211f114`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_vars_subset_iff {p : MvPolynomial σ R} {s : Set σ} :
    (p.vars : Set σ) ⊆ s ↔ p ∈ (rename ((↑) : s → σ)).range := by
  classical
  rw [MvPolynomial.vars_def, AlgHom.mem_range]
  constructor
  · intro h
    refine ⟨p.killCompl Subtype.val_injective, ext _ _ fun m => ?_⟩
    by_cases hm : m ∈ Set.range (Finsupp.mapDomain ((↑) : s → σ))
    · obtain ⟨m, rfl⟩ := hm
      rw [coeff_rename_mapDomain _ Subtype.val_injective, coeff_killCompl]
    · suffices hp : p.coeff m = 0 by
        rw [hp]
        apply coeff_rename_eq_zero
        rintro m rfl
        rw [coeff_killCompl, hp]
      rw [mem_range_mapDomain_iff _ Subtype.val_injective, Subtype.range_coe] at hm
      push Not at hm
      obtain ⟨b, hb, hm⟩ := hm
      contrapose! hb
      apply h
      rw [SetLike.mem_coe, Multiset.mem_toFinset, mem_degrees]
      exact ⟨m, hb, Finsupp.mem_support_iff.2 hm⟩
  · rintro ⟨x, rfl⟩
    rw [degrees_rename_of_injective Subtype.val_injective,
      Multiset.coe_toFinset, Set.ofPred_subset, Multiset.forall_mem_map_iff]
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Variables/Variant30f6f39c0244dbf03c2854b529896edad2bdab15adc9f7ac8f9505844258126d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Variables/Variant30f6f39c0244dbf03c2854b529896edad2bdab15adc9f7ac8f9505844258126d.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34043e304afd18ba5b4a4517c3523caa74ae5911` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
