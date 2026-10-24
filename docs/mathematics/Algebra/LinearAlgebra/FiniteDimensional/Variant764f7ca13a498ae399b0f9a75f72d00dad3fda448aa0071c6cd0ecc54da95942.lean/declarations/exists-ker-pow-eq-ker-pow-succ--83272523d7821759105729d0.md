# exists_ker_pow_eq_ker_pow_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a9bd4711528e02e48be1c10bb6d7a39467adff0e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1482,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/764f7ca13a498ae399b0f9a75f72d00dad3fda448aa0071c6cd0ecc54da95942.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5aff4a43-c92e-ff06-7617-6c89e393a83e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0d9f2b75-73c6-044b-d8cb-2e1ebc0b80d1",
  "kind": "theorem",
  "lexical_name": "exists_ker_pow_eq_ker_pow_succ",
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
  "slug": "exists-ker-pow-eq-ker-pow-succ--83272523d7821759105729d0",
  "source": {
    "blob": "a9bd4711528e02e48be1c10bb6d7a39467adff0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1508,
    "line": 1482,
    "path": "GRWTSK/Algebra/LinearAlgebra/FiniteDimensional/Variant764f7ca13a498ae399b0f9a75f72d00dad3fda448aa0071c6cd0ecc54da95942.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83272523d7821759105729d0f906ff96fda7cc69512d5e4e9d779d7ea024f558",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FiniteDimensional/Variant764f7ca13a498ae399b0f9a75f72d00dad3fda448aa0071c6cd0ecc54da95942.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d9f2b75-73c6-044b-d8cb-2e1ebc0b80d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1482–1508.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_ker_pow_eq_ker_pow_succ [FiniteDimensional K V] (f : End K V) :
    ∃ k : ℕ, k ≤ finrank K V ∧ LinearMap.ker (f ^ k) = LinearMap.ker (f ^ k.succ) := by
  classical
    by_contra h_contra
    simp_rw [not_exists, not_and] at h_contra
    have h_le_ker_pow : ∀ n : ℕ, n ≤ (finrank K V).succ →
        n ≤ finrank K (LinearMap.ker (f ^ n)) := by
      intro n hn
      induction' n with n ih
      · exact zero_le (finrank _ _)
      · have h_ker_lt_ker : LinearMap.ker (f ^ n) < LinearMap.ker (f ^ n.succ) := by
          refine' lt_of_le_of_ne _ (h_contra n (Nat.le_of_succ_le_succ hn))
          rw [pow_succ]
          apply LinearMap.ker_le_ker_comp
        have h_finrank_lt_finrank :
            finrank K (LinearMap.ker (f ^ n)) < finrank K (LinearMap.ker (f ^ n.succ)) := by
          apply Submodule.finrank_lt_finrank_of_lt h_ker_lt_ker
        calc
          n.succ ≤ (finrank K ↑(LinearMap.ker (f ^ n))).succ :=
            Nat.succ_le_succ (ih (Nat.le_of_succ_le hn))
          _ ≤ finrank K ↑(LinearMap.ker (f ^ n.succ)) := Nat.succ_le_of_lt h_finrank_lt_finrank
    have h_any_n_lt : ∀ n, n ≤ (finrank K V).succ → n ≤ finrank K V := fun n hn =>
      (h_le_ker_pow n hn).trans (Submodule.finrank_le _)
    show False
    exact Nat.not_succ_le_self _ (h_any_n_lt (finrank K V).succ (finrank K V).succ.le_refl)
#align module.End.exists_ker_pow_eq_ker_pow_succ Module.End.exists_ker_pow_eq_ker_pow_succ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FiniteDimensional/Variant764f7ca13a498ae399b0f9a75f72d00dad3fda448aa0071c6cd0ecc54da95942.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FiniteDimensional/Variant764f7ca13a498ae399b0f9a75f72d00dad3fda448aa0071c6cd0ecc54da95942.lean#L1482).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9bd4711528e02e48be1c10bb6d7a39467adff0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
