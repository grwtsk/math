# lie_baseChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "938d6fb9a792021627c06f491c14db06b23c0f4c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 211,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a69f778d29241cd8e7eb71b02a770b48de919601322e0fd11bfe1e52a0e0f87d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3ce69fe2-b800-5a15-20b3-b6ac577e3c37",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ead06527-58a0-2ad8-48bf-7366f7f73054",
  "kind": "lemma",
  "lexical_name": "lie_baseChange",
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
  "slug": "lie-basechange--ff8baae43202ad99de422ed0",
  "source": {
    "blob": "938d6fb9a792021627c06f491c14db06b23c0f4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 211,
    "path": "GRWTSK/Algebra/LinearAlgebra/BaseChange/Varianta69f778d29241cd8e7eb71b02a770b48de919601322e0fd11bfe1e52a0e0f87d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff8baae43202ad99de422ed0ad69f5a8158a3280b4736c5f9c83ae3fafde15ca",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BaseChange/Varianta69f778d29241cd8e7eb71b02a770b48de919601322e0fd11bfe1e52a0e0f87d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ead06527-58a0-2ad8-48bf-7366f7f73054`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lie_baseChange {I : LieIdeal R L} {N : LieSubmodule R L M} :
    ⁅I, N⁆.baseChange A = ⁅I.baseChange A, N.baseChange A⁆ := by
  set s : Set (A ⊗[R] M) := { m | ∃ x ∈ I, ∃ n ∈ N, 1 ⊗ₜ ⁅x, n⁆ = m}
  have : (TensorProduct.mk R A M 1) '' {m | ∃ x ∈ I, ∃ n ∈ N, ⁅x, n⁆ = m} = s := by ext; simp [s]
  rw [← toSubmodule_inj, coe_baseChange, lieIdeal_oper_eq_linear_span',
    Submodule.baseChange_span, this, lieIdeal_oper_eq_linear_span']
  refine le_antisymm (Submodule.span_mono ?_) (Submodule.span_le.mpr ?_)
  · rintro - ⟨x, hx, m, hm, rfl⟩
    exact ⟨1 ⊗ₜ x, tmul_mem_baseChange_of_mem 1 hx,
           1 ⊗ₜ m, tmul_mem_baseChange_of_mem 1 hm, by simp⟩
  · rintro - ⟨x, hx, m, hm, rfl⟩
    revert m
    apply Submodule.span_induction
      (p := fun x' _ ↦ ∀ m' ∈ N.baseChange A, ⁅x', m'⁆ ∈ Submodule.span A s) (hx := hx)
    · rintro _ ⟨y : L, hy : y ∈ I, rfl⟩ m hm
      apply Submodule.span_induction
        (p := fun m' _ ↦ ⁅(1 : A) ⊗ₜ[R] y, m'⁆ ∈ Submodule.span A s) (hx := hm)
      · rintro - ⟨m', hm' : m' ∈ N, rfl⟩
        rw [TensorProduct.mk_apply, LieAlgebra.ExtendScalars.bracket_tmul, mul_one]
        apply Submodule.subset_span
        exact ⟨y, hy, m', hm', rfl⟩
      · simp
      · intro u v _ _ hu hv
        rw [lie_add]
        exact Submodule.add_mem _ hu hv
      · intro a u _ hu
        rw [lie_smul]
        exact Submodule.smul_mem _ a hu
    · simp
    · intro x y _ _ hx hy m' hm'
      rw [add_lie]
      exact Submodule.add_mem _ (hx _ hm') (hy _ hm')
    · intro a x _ hx m' hm'
      rw [smul_lie]
      exact Submodule.smul_mem _ a (hx _ hm')

end LieSubmodule

end ExtendScalars
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BaseChange/Varianta69f778d29241cd8e7eb71b02a770b48de919601322e0fd11bfe1e52a0e0f87d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BaseChange/Varianta69f778d29241cd8e7eb71b02a770b48de919601322e0fd11bfe1e52a0e0f87d.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `938d6fb9a792021627c06f491c14db06b23c0f4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
