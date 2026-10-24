# exists_monic_aeval_eq_zero_forall_mem_of_mem_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b80efe1-eb83-7667-4b80-e074d67aa2bc",
  "kind": "lemma",
  "lexical_name": "exists_monic_aeval_eq_zero_forall_mem_of_mem_map",
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
  "slug": "exists-monic-aeval-eq-zero-forall-mem-of-mem-map--869189f12801347f30afe18f",
  "source": {
    "blob": "fefa13bdd0905296a48a4a75382327345171eb8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 100,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Ideal/Variantce6664b1614d63a00de929d1db59f90aae9c728dfbb1864234bdba8084b6967d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:869189f12801347f30afe18fa171acb3aec37db54d3df8aa6eac0598eedd2821",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Ideal/Variantce6664b1614d63a00de929d1db59f90aae9c728dfbb1864234bdba8084b6967d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b80efe1-eb83-7667-4b80-e074d67aa2bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_monic_aeval_eq_zero_forall_mem_of_mem_map [Algebra.IsIntegral R S]
    {I : Ideal R} {x : S} (hx : x ∈ I.map (algebraMap R S)) :
    ∃ p : R[X], p.Monic ∧ aeval x p = 0 ∧ ∀ i ≠ p.natDegree, p.coeff i ∈ I := by
  obtain ⟨p, hp, e, h⟩ := exists_monic_aeval_eq_zero_forall_mem_pow_of_mem_map hx
  refine ⟨p, hp, e, fun i hi ↦ ?_⟩
  obtain hi | hi := hi.lt_or_gt
  · exact Ideal.pow_le_self (by lia) (h _)
  · simp [coeff_eq_zero_of_natDegree_lt hi]

end Polynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Ideal/Variantce6664b1614d63a00de929d1db59f90aae9c728dfbb1864234bdba8084b6967d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Ideal/Variantce6664b1614d63a00de929d1db59f90aae9c728dfbb1864234bdba8084b6967d.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fefa13bdd0905296a48a4a75382327345171eb8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
