# exists_monic_aeval_eq_zero_forall_mem_pow_of_mem_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e7e89e23bed0beb7bc72e5afc85035a3d614e066",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3acd66ff2b7e8b4295d04f4a8331bea898fd60abe2021c683a37a626379d006b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f064238a-258c-209a-cacc-02925691fd0f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3e207b63-10ae-f475-257f-cd526ca622f9",
  "kind": "lemma",
  "lexical_name": "exists_monic_aeval_eq_zero_forall_mem_pow_of_mem_map",
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
  "slug": "exists-monic-aeval-eq-zero-forall-mem-pow-of-mem-map--d58a163f101110418d4c6061",
  "source": {
    "blob": "e7e89e23bed0beb7bc72e5afc85035a3d614e066",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 73,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Ideal/Variant3acd66ff2b7e8b4295d04f4a8331bea898fd60abe2021c683a37a626379d006b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d58a163f101110418d4c6061e1484d8b0ac0b865ca26ac0ea4f9963c43e6e974",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Ideal/Variant3acd66ff2b7e8b4295d04f4a8331bea898fd60abe2021c683a37a626379d006b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e207b63-10ae-f475-257f-cd526ca622f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_monic_aeval_eq_zero_forall_mem_pow_of_mem_map [Algebra.IsIntegral R S]
    {I : Ideal R} {x : S} (hx : x ∈ I.map (algebraMap R S)) :
    ∃ p : R[X], p.Monic ∧ aeval x p = 0 ∧ ∀ i, p.coeff i ∈ I ^ (p.natDegree - i) := by
  let A : Subalgebra R R[X] := Algebra.adjoin R { C r * X | r ∈ I }
  let := Polynomial.algebra R S
  refine exists_monic_aeval_eq_zero_forall_mem_pow_of_isIntegral ?_
  induction hx using Submodule.span_induction with
  | zero => simp [isIntegral_zero]
  | add x y _ _ hx hy => simpa [add_mul] using hx.add hy
  | mem x h =>
    obtain ⟨x, hx, rfl⟩ := h
    simpa using isIntegral_algebraMap (R := A) (A := S[X])
      (x := ⟨C x * X, Algebra.subset_adjoin ⟨x, hx, rfl⟩⟩)
  | smul a x _ hx =>
    simp only [smul_eq_mul, map_mul, mul_assoc]
    refine .mul ?_ hx
    exact ((Algebra.IsIntegral.isIntegral (R := R) a).map (IsScalarTower.toAlgHom R S _)).tower_top

@[stacks 00H5]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Ideal/Variant3acd66ff2b7e8b4295d04f4a8331bea898fd60abe2021c683a37a626379d006b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Ideal/Variant3acd66ff2b7e8b4295d04f4a8331bea898fd60abe2021c683a37a626379d006b.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7e89e23bed0beb7bc72e5afc85035a3d614e066` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
