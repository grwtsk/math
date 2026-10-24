# monomial_mem_adjoin_monomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2069a0781786a20af53c45b59d4970b5df9b2214",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a2c12ef4f31d1cbfb83611f9f9c58b5d9f184d9b86849fe4e8b297855aaa9459.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:886bdea5-e330-4d47-8f00-0246fb3ac2f8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a2232a0c-1b2c-d5e4-6bec-b29c0f4f7fe8",
  "kind": "theorem",
  "lexical_name": "monomial_mem_adjoin_monomial",
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
  "slug": "monomial-mem-adjoin-monomial--a49c88d8002ee3c5cf5a8b1c",
  "source": {
    "blob": "2069a0781786a20af53c45b59d4970b5df9b2214",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 75,
    "path": "GRWTSK/Algebra/ReesAlgebra/Varianta2c12ef4f31d1cbfb83611f9f9c58b5d9f184d9b86849fe4e8b297855aaa9459.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a49c88d8002ee3c5cf5a8b1cb8e33c4844aa36c56985e1177cdb6951a4a0c971",
  "verification": {
    "reference": "docs/verification/Algebra/ReesAlgebra/Varianta2c12ef4f31d1cbfb83611f9f9c58b5d9f184d9b86849fe4e8b297855aaa9459.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2232a0c-1b2c-d5e4-6bec-b29c0f4f7fe8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem monomial_mem_adjoin_monomial {I : Ideal R} {n : ℕ} {r : R} (hr : r ∈ I ^ n) :
    monomial n r ∈ Algebra.adjoin R (Submodule.map (monomial 1 : R →ₗ[R] R[X]) I : Set R[X]) := by
  induction' n with n hn generalizing r
  · exact Subalgebra.algebraMap_mem _ _
  · rw [pow_succ'] at hr
    apply Submodule.smul_induction_on
      -- Porting note: did not need help with motive previously
      (p := fun r => (monomial (Nat.succ n)) r ∈ Algebra.adjoin R (Submodule.map (monomial 1) I)) hr
    · intro r hr s hs
      rw [Nat.succ_eq_one_add, smul_eq_mul, ← monomial_mul_monomial]
      exact Subalgebra.mul_mem _ (Algebra.subset_adjoin (Set.mem_image_of_mem _ hr)) (hn hs)
    · intro x y hx hy
      rw [monomial_add]
      exact Subalgebra.add_mem _ hx hy

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ReesAlgebra/Varianta2c12ef4f31d1cbfb83611f9f9c58b5d9f184d9b86849fe4e8b297855aaa9459.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ReesAlgebra/Varianta2c12ef4f31d1cbfb83611f9f9c58b5d9f184d9b86849fe4e8b297855aaa9459.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2069a0781786a20af53c45b59d4970b5df9b2214` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
