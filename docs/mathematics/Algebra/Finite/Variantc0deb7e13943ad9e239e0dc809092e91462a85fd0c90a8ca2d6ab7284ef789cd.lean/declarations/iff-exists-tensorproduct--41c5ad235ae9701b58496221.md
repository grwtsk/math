# iff_exists_tensorProduct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4c8fd4e93d0b005c350e9d3994f5c54d8e01114d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 48,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c0deb7e13943ad9e239e0dc809092e91462a85fd0c90a8ca2d6ab7284ef789cd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aa792001-94f3-52c7-85f0-d2c5f8ad5c53",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5b819e9e-a0fc-5327-9e3b-5e2dc0606d7e",
  "kind": "theorem",
  "lexical_name": "iff_exists_tensorProduct",
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
  "slug": "iff-exists-tensorproduct--41c5ad235ae9701b58496221",
  "source": {
    "blob": "4c8fd4e93d0b005c350e9d3994f5c54d8e01114d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 48,
    "path": "GRWTSK/Algebra/Finite/Variantc0deb7e13943ad9e239e0dc809092e91462a85fd0c90a8ca2d6ab7284ef789cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41c5ad235ae9701b58496221696139904d44c85a050f7dd86f8a4da36a18b2a2",
  "verification": {
    "reference": "docs/verification/Algebra/Finite/Variantc0deb7e13943ad9e239e0dc809092e91462a85fd0c90a8ca2d6ab7284ef789cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b819e9e-a0fc-5327-9e3b-5e2dc0606d7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iff_exists_tensorProduct [EssFiniteType R S] :
    FormallyUnramified R S ↔ ∃ t : S ⊗[R] S,
      (∀ s, ((1 : S) ⊗ₜ[R] s - s ⊗ₜ[R] (1 : S)) * t = 0) ∧ TensorProduct.lmul' R t = 1 := by
  rw [formallyUnramified_iff, KaehlerDifferential,
    Ideal.cotangent_subsingleton_iff, Ideal.isIdempotentElem_iff_of_fg _
      (KaehlerDifferential.ideal_fg R S)]
  have : ∀ t : S ⊗[R] S, TensorProduct.lmul' R t = 1 ↔ 1 - t ∈ KaehlerDifferential.ideal R S := by
    intro t
    simp only [KaehlerDifferential.ideal, RingHom.mem_ker, map_sub, map_one,
      sub_eq_zero, @eq_comm S 1]
  simp_rw [this, ← KaehlerDifferential.span_range_eq_ideal]
  constructor
  · rintro ⟨e, he₁, he₂ : _ = Ideal.span _⟩
    refine ⟨1 - e, ?_, ?_⟩
    · intro s
      obtain ⟨x, hx⟩ : e ∣ 1 ⊗ₜ[R] s - s ⊗ₜ[R] 1 := by
        rw [← Ideal.mem_span_singleton, ← he₂]
        exact Ideal.subset_span ⟨s, rfl⟩
      rw [hx, mul_comm, ← mul_assoc, sub_mul, one_mul, he₁.eq, sub_self, zero_mul]
    · rw [sub_sub_cancel, he₂, Ideal.mem_span_singleton]
  · rintro ⟨t, ht₁, ht₂⟩
    use 1 - t
    rw [← sub_sub_self 1 t] at ht₁; generalize 1 - t = e at *
    constructor
    · suffices e ∈ (Submodule.span (S ⊗[R] S) {1 - e}).annihilator by
        simpa [IsIdempotentElem, mul_sub, sub_eq_zero, eq_comm, -Ideal.submodule_span_eq,
          Submodule.mem_annihilator_span_singleton] using this
      exact (show Ideal.span _ ≤ _ by simpa only [Ideal.span_le, Set.range_subset_iff,
        Submodule.mem_annihilator_span_singleton, SetLike.mem_coe]) ht₂
    · apply le_antisymm <;> simp only [Ideal.submodule_span_eq, Ideal.mem_span_singleton, ht₂,
        Ideal.span_le, Set.singleton_subset_iff, SetLike.mem_coe, Set.range_subset_iff]
      intro s
      use 1 ⊗ₜ[R] s - s ⊗ₜ[R] 1
      linear_combination ht₁ s

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Finite/Variantc0deb7e13943ad9e239e0dc809092e91462a85fd0c90a8ca2d6ab7284ef789cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Finite/Variantc0deb7e13943ad9e239e0dc809092e91462a85fd0c90a8ca2d6ab7284ef789cd.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c8fd4e93d0b005c350e9d3994f5c54d8e01114d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
