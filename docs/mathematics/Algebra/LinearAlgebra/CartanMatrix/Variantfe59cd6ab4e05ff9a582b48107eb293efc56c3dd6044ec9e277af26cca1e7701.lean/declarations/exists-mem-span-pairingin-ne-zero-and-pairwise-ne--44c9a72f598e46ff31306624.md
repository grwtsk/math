# exists_mem_span_pairingIn_ne_zero_and_pairwise_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea8e1b68-277e-4697-33f6-60ee159b2eee",
  "kind": "lemma",
  "lexical_name": "exists_mem_span_pairingIn_ne_zero_and_pairwise_ne",
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
  "slug": "exists-mem-span-pairingin-ne-zero-and-pairwise-ne--44c9a72f598e46ff31306624",
  "source": {
    "blob": "eac0bb40458667cb33d16a720fd997c79f95aefd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 312,
    "path": "GRWTSK/Algebra/LinearAlgebra/CartanMatrix/Variantfe59cd6ab4e05ff9a582b48107eb293efc56c3dd6044ec9e277af26cca1e7701.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44c9a72f598e46ff3130662465d98b1ce3aeae95b5b1a783fd0734297fb56fe4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CartanMatrix/Variantfe59cd6ab4e05ff9a582b48107eb293efc56c3dd6044ec9e277af26cca1e7701.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea8e1b68-277e-4697-33f6-60ee159b2eee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 312–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_mem_span_pairingIn_ne_zero_and_pairwise_ne
    {K : Type*} [Field K] [CharZero K] [Module K M] [Module K N]
    {P : RootPairing ι K M N} [P.IsRootSystem] [P.IsCrystallographic] (b : P.Base) :
    ∃ d ∈ span K (range fun (i : b.support) j ↦ (P.pairingIn ℤ j i : K)),
      (∀ i, d i ≠ 0) ∧ Pairwise ((· ≠ ·) on d) := by
  set p := span K (range fun (i : b.support) j ↦ (P.pairingIn ℤ j i : K))
  let f : ι ⊕ {(i, j) : ι × ι | i ≠ j} → Module.Dual K (ι → K) := Sum.elim
    LinearMap.proj (fun x ↦ LinearMap.proj (R := K) (φ := fun _ ↦ K) x.1.1 - LinearMap.proj x.1.2)
  suffices ∃ d ∈ p, ∀ i, f i d ≠ 0 by
    obtain ⟨d, hp, hf⟩ := this
    refine ⟨d, hp, fun i ↦ hf (Sum.inl i), fun i j h ↦ ?_⟩
    simpa [f, sub_eq_zero] using hf (Sum.inr ⟨⟨i, j⟩, h⟩)
  apply Module.Dual.exists_forall_mem_ne_zero_of_forall_exists p f
  rintro (i | ⟨⟨i, j⟩, h : i ≠ j⟩)
  · obtain ⟨j, hj, hj₀⟩ := b.exists_mem_support_pos_pairingIn_ne_zero i
    refine ⟨fun i ↦ P.pairingIn ℤ i j, subset_span ⟨⟨j, hj⟩, rfl⟩, ?_⟩
    rw [ne_eq, P.pairingIn_eq_zero_iff] at hj₀
    simpa [f, ne_eq, Int.cast_eq_zero]
  · obtain ⟨k, hk, hk'⟩ : ∃ k ∈ b.support, P.pairingIn ℤ i k ≠ P.pairingIn ℤ j k := by
      contrapose! h
      apply b.injective_pairingIn
      aesop
    simpa [f, sub_eq_zero] using ⟨fun i ↦ P.pairingIn ℤ i k, subset_span ⟨⟨k, hk⟩, rfl⟩, by simpa⟩

section Uniqueness

variable {ι₂ M₂ N₂ : Type*} [AddCommGroup M₂] [Module R M₂] [AddCommGroup N₂] [Module R N₂]
  {P : RootPairing ι R M N} [P.IsRootSystem] [P.IsCrystallographic] [P.IsReduced] (b : P.Base)
  {P₂ : RootPairing ι₂ R M₂ N₂} [P₂.IsCrystallographic] (b₂ : P₂.Base)
  (e : b.support ≃ b₂.support)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CartanMatrix/Variantfe59cd6ab4e05ff9a582b48107eb293efc56c3dd6044ec9e277af26cca1e7701.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CartanMatrix/Variantfe59cd6ab4e05ff9a582b48107eb293efc56c3dd6044ec9e277af26cca1e7701.lean#L312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eac0bb40458667cb33d16a720fd997c79f95aefd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
