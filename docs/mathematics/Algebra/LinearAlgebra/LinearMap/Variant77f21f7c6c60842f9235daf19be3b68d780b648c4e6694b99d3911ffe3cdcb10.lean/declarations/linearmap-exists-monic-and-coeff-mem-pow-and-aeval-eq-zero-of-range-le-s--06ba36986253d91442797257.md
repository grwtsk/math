# LinearMap.exists_monic_and_coeff_mem_pow_and_aeval_eq_zero_of_range_le_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:81279c58-fe76-b885-de77-5adc75501c81",
  "kind": "theorem",
  "lexical_name": "LinearMap.exists_monic_and_coeff_mem_pow_and_aeval_eq_zero_of_range_le_smul",
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
  "slug": "linearmap-exists-monic-and-coeff-mem-pow-and-aeval-eq-zero-of-range-le-s--06ba36986253d91442797257",
  "source": {
    "blob": "4683f2f57a5b62ac279b45b4d785b0b8a898a117",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 233,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant77f21f7c6c60842f9235daf19be3b68d780b648c4e6694b99d3911ffe3cdcb10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06ba36986253d91442797257d42e98db75b0f9a0edd6397178bfb7d8676933c3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearMap/Variant77f21f7c6c60842f9235daf19be3b68d780b648c4e6694b99d3911ffe3cdcb10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81279c58-fe76-b885-de77-5adc75501c81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LinearMap.exists_monic_and_coeff_mem_pow_and_aeval_eq_zero_of_range_le_smul
    [Module.Finite R M] (f : Module.End R M) (I : Ideal R) (hI : LinearMap.range f ≤ I • ⊤) :
    ∃ p : R[X], p.Monic ∧ (∀ k, p.coeff k ∈ I ^ (p.natDegree - k)) ∧ Polynomial.aeval f p = 0 := by
  classical
    cases subsingleton_or_nontrivial R
    · exact ⟨0, Polynomial.monic_of_subsingleton _, by simp⟩
    obtain ⟨s : Finset M, hs : Submodule.span R (s : Set M) = ⊤⟩ :=
      Module.Finite.out (R := R) (M := M)
    -- Porting note: `H` was `rfl`
    obtain ⟨A, H, h⟩ :=
      Matrix.isRepresentation.toEnd_exists_mem_ideal R ((↑) : s → M)
        (by rw [Subtype.range_coe_subtype, Finset.setOf_mem, hs]) f I hI
    rw [← H]
    refine' ⟨A.1.charpoly, A.1.charpoly_monic, _, _⟩
    · rw [A.1.charpoly_natDegree_eq_dim]
      exact coeff_charpoly_mem_ideal_pow h
    · rw [Polynomial.aeval_algHom_apply,
        ← map_zero (Matrix.isRepresentation.toEnd R ((↑) : s → M) _)]
      congr 1
      ext1
      rw [Polynomial.aeval_subalgebra_coe, Matrix.aeval_self_charpoly, Subalgebra.coe_zero]
#align linear_map.exists_monic_and_coeff_mem_pow_and_aeval_eq_zero_of_range_le_smul LinearMap.exists_monic_and_coeff_mem_pow_and_aeval_eq_zero_of_range_le_smul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearMap/Variant77f21f7c6c60842f9235daf19be3b68d780b648c4e6694b99d3911ffe3cdcb10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant77f21f7c6c60842f9235daf19be3b68d780b648c4e6694b99d3911ffe3cdcb10.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4683f2f57a5b62ac279b45b4d785b0b8a898a117` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
