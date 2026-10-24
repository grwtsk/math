# isPrincipalIdealRing_of_isPrincipal_of_lt_or_isPrincipal_of_mem_primesOver_of_mem_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7126a0bb75215cbb9044f7c7aefcca794e543f81",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 183,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/43/43379a45a522ec04015d65d2fec023067c1b62c0e15315c5b54c7340b6c61ce6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:73e26835-c983-b103-3f56-00a54f17bfba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:304ab46c-c17c-9169-565a-403f2ff394c2",
  "kind": "theorem",
  "lexical_name": "isPrincipalIdealRing_of_isPrincipal_of_lt_or_isPrincipal_of_mem_primesOver_of_mem_Icc",
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
  "slug": "isprincipalidealring-of-isprincipal-of-lt-or-isprincipal-of-mem-primesov--91c4f68abe0f747454a61623",
  "source": {
    "blob": "7126a0bb75215cbb9044f7c7aefcca794e543f81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 183,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variant43379a45a522ec04015d65d2fec023067c1b62c0e15315c5b54c7340b6c61ce6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91c4f68abe0f747454a6162307f7e90fba6abf9ab337ffcd3460ac6a3382be0f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variant43379a45a522ec04015d65d2fec023067c1b62c0e15315c5b54c7340b6c61ce6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:304ab46c-c17c-9169-565a-403f2ff394c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPrincipalIdealRing_of_isPrincipal_of_lt_or_isPrincipal_of_mem_primesOver_of_mem_Icc
    [IsGalois ℚ K] (h : ∀ p ∈ Finset.Icc 1 ⌊(M K)⌋₊, p.Prime →
      ∃ P ∈ primesOver (span {(p : ℤ)}) (𝓞 K),
        ⌊(M K)⌋₊ < p ^ P.inertiaDeg ℤ ∨
          Submodule.IsPrincipal P) :
      IsPrincipalIdealRing (𝓞 K) := by
  refine isPrincipalIdealRing_of_isPrincipal_of_pow_le_of_mem_primesOver_of_mem_Icc
    (fun p hpmem hp P ⟨hP1, hP2⟩ hple ↦ ?_)
  obtain ⟨Q, ⟨hQ1, hQ2⟩, H⟩ := h p hpmem hp
  have := (isPrime_of_prime (prime_span_singleton_iff.mpr (prime_iff_prime_int.mp hp))).isMaximal
    (by simp [hp.ne_zero])
  by_cases h : ⌊(M K)⌋₊ < p ^ P.inertiaDeg ℤ
  · linarith
  rw [inertiaDeg_eq_of_isGaloisGroup (span {↑p}) Q P (K ≃ₐ[ℚ] K)] at H
  obtain ⟨σ, rfl⟩ := exists_smul_eq_of_isGaloisGroup (span ({↑p} : Set ℤ)) Q P (K ≃ₐ[ℚ] K)
  exact (H.resolve_left h).map_ringHom (MulSemiringAction.toRingHom (K ≃ₐ[ℚ] K) (𝓞 K) σ)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variant43379a45a522ec04015d65d2fec023067c1b62c0e15315c5b54c7340b6c61ce6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variant43379a45a522ec04015d65d2fec023067c1b62c0e15315c5b54c7340b6c61ce6.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7126a0bb75215cbb9044f7c7aefcca794e543f81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
