# xInTermsOfW_vars_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bc2e12d00e106e36f43cc155b8cf3e46dbfc9a68",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 254,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b19830b26384625540b82322d63dd95e669c06c5f0cff73c22a3fad4c549f02f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:751b2a43-df36-dd34-8dbd-64812bb2d3f0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e582008e-4aa2-586e-e6e6-e550d6bef58c",
  "kind": "theorem",
  "lexical_name": "xInTermsOfW_vars_aux",
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
  "slug": "xintermsofw-vars-aux--2d8161ca3aad87bc95b0a48c",
  "source": {
    "blob": "bc2e12d00e106e36f43cc155b8cf3e46dbfc9a68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 254,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/WittPolynomial/Variantb19830b26384625540b82322d63dd95e669c06c5f0cff73c22a3fad4c549f02f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d8161ca3aad87bc95b0a48cfbb2ccc86b76531919bb466c34d7c8c996f17cfe",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/WittPolynomial/Variantb19830b26384625540b82322d63dd95e669c06c5f0cff73c22a3fad4c549f02f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e582008e-4aa2-586e-e6e6-e550d6bef58c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xInTermsOfW_vars_aux (n : ℕ) :
    n ∈ (xInTermsOfW p ℚ n).vars ∧ (xInTermsOfW p ℚ n).vars ⊆ range (n + 1) := by
  apply Nat.strongInductionOn n; clear n
  intro n ih
  rw [xInTermsOfW_eq, mul_comm, vars_C_mul _ (nonzero_of_invertible _),
    vars_sub_of_disjoint, vars_X, range_succ, insert_eq]
  on_goal 1 =>
    simp only [true_and_iff, true_or_iff, eq_self_iff_true, mem_union, mem_singleton]
    intro i
    rw [mem_union, mem_union]
    apply Or.imp id
  on_goal 2 => rw [vars_X, disjoint_singleton_left]
  all_goals
    intro H
    replace H := vars_sum_subset _ _ H
    rw [mem_biUnion] at H
    rcases H with ⟨j, hj, H⟩
    rw [vars_C_mul] at H
    swap
    · apply pow_ne_zero
      exact_mod_cast hp.1.ne_zero
    rw [mem_range] at hj
    replace H := (ih j hj).2 (vars_pow _ _ H)
    rw [mem_range] at H
  · rw [mem_range]
    linarith
  · linarith
set_option linter.uppercaseLean3 false in
#align X_in_terms_of_W_vars_aux xInTermsOfW_vars_aux

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/WittPolynomial/Variantb19830b26384625540b82322d63dd95e669c06c5f0cff73c22a3fad4c549f02f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/WittPolynomial/Variantb19830b26384625540b82322d63dd95e669c06c5f0cff73c22a3fad4c549f02f.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc2e12d00e106e36f43cc155b8cf3e46dbfc9a68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
