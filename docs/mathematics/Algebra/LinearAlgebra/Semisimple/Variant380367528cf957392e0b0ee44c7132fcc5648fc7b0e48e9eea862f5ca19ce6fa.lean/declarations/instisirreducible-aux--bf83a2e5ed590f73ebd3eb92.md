# instIsIrreducible_aux₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d648f2a9d180c2ae628aa5fbc3a73c3b23e922c0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 190,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/380367528cf957392e0b0ee44c7132fcc5648fc7b0e48e9eea862f5ca19ce6fa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7f80c020-f44e-e2e0-b299-ab00661c7c11",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cc23f9ba-9156-792b-11fa-060fc7b75fb4",
  "kind": "lemma",
  "lexical_name": "instIsIrreducible_aux₀",
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
  "slug": "instisirreducible-aux--bf83a2e5ed590f73ebd3eb92",
  "source": {
    "blob": "d648f2a9d180c2ae628aa5fbc3a73c3b23e922c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 190,
    "path": "GRWTSK/Algebra/LinearAlgebra/Semisimple/Variant380367528cf957392e0b0ee44c7132fcc5648fc7b0e48e9eea862f5ca19ce6fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf83a2e5ed590f73ebd3eb923b6e2f694a96127d032d7697ec25ca5e53d36399",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Semisimple/Variant380367528cf957392e0b0ee44c7132fcc5648fc7b0e48e9eea862f5ca19ce6fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc23f9ba-9156-792b-11fa-060fc7b75fb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma instIsIrreducible_aux₀ {U : LieSubmodule K H (b.support ⊕ ι → K)}
    (χ : H → K) (hχ : χ ≠ 0) (hχ' : genWeightSpace U χ ≠ ⊥) :
    ∃ i, v b i ∈ (genWeightSpace U χ).map U.incl := by
  suffices ∀ {w : b.support ⊕ ι → K} (hw₀ : w ≠ 0) (hw : w ∈ genWeightSpace (b.support ⊕ ι → K) χ),
      ∃ (i : ι) (t : K), t • w = v b i by
    obtain ⟨w, hw, hw₀⟩ : ∃ w ∈ genWeightSpace U χ, w ≠ 0 := by
      simpa only [ne_eq, LieSubmodule.eq_bot_iff, not_forall, exists_prop] using! hχ'
    replace hw : U.incl w ∈ genWeightSpace (b.support ⊕ ι → K) χ :=
      map_genWeightSpace_le (f := U.incl) <| by simpa
    obtain ⟨i, t, hi : t • w = v b i⟩ := this (by simpa) hw
    use i
    rw [map_genWeightSpace_eq_of_injective U.injective_incl, LieSubmodule.range_incl, ← hi,
      LieSubmodule.mem_inf]
    exact ⟨SMulMemClass.smul_mem _ hw, SMulMemClass.smul_mem _ w.property⟩
  clear! U
  intro w hw₀ hw
  have aux (d : b.support ⊕ ι → K) (x : H) (hdx : x = diagonal d) :
      w ∈ genWeightSpaceOf (b.support ⊕ ι → K) (χ x) x ↔
        ∃ k, diagonal ((d - χ x • 1) ^ k) *ᵥ w = 0 := by
    set μ := χ x
    obtain ⟨⟨x, hx⟩, hx'⟩ := x
    replace hdx : x = diagonal d := by simpa using! hdx
    have this (d : b.support ⊕ ι → K) (μ : K) :
        (diagonal d).toLin' - μ • 1 = (diagonal (d - μ • 1)).toLin' := by
      ext i j
      simp [Pi.single_apply, ite_sub_ite]
    simp [mem_genWeightSpaceOf, hdx, this, ← toLin'_pow, diagonal_pow]
  obtain ⟨i, hi⟩ : ∃ i, w (Sum.inr i) ≠ 0 := by
    obtain ⟨l, hl⟩ : ∃ l, χ (h' l) ≠ 0 := by
      replace hw₀ : genWeightSpace (b.support ⊕ ι → K) χ ≠ ⊥ := by
        contrapose hw₀; rw [LieSubmodule.eq_bot_iff] at hw₀; exact hw₀ _ hw
      let χ' : H →ₗ[K] K := (Weight.mk χ hw₀).toLinear
      replace hχ : χ' ≠ 0 := by contrapose hχ; ext x; simpa using! LinearMap.congr_fun hχ x
      contrapose! hχ
      apply LinearMap.ext_on (span_range_h'_eq_top b)
      rintro - ⟨l, rfl⟩
      simp [χ', hχ l]
    contrapose! hw₀
    suffices ∀ i : b.support, w (Sum.inl i) = 0 by ext (k | k) <;> simp [hw₀, this]
    intro i
    replace hw := genWeightSpace_le_genWeightSpaceOf (b.support ⊕ ι → K) (h' l) χ hw
    rw [aux (Sum.elim 0 (P.pairingIn ℤ · l)) (h' l) (h_eq_diagonal l)] at hw
    obtain ⟨k, hk⟩ := hw
    simpa [mulVec_eq_sum, diagonal_apply, hl] using! congr_fun hk (Sum.inl i)
  refine ⟨i, (w (Sum.inr i))⁻¹, ?_⟩
  suffices ∃ d : ι → K, (∀ i, d i ≠ 0) ∧ Pairwise ((· ≠ ·) on d) ∧
      diagonal (Sum.elim 0 d) ∈ cartanSubalgebra b by
    obtain ⟨d, hd₀, hd₁, hd₂⟩ := this
    let x : H := ⟨⟨diagonal (Sum.elim 0 d), cartanSubalgebra_le_lieAlgebra hd₂⟩, hd₂⟩
    replace hw := genWeightSpace_le_genWeightSpaceOf (b.support ⊕ ι → K) x χ hw
    rw [aux (Sum.elim 0 d) x rfl] at hw
    obtain ⟨k, hk⟩ := hw
    obtain ⟨hχx, hk₀⟩ : d i = χ x ∧ k ≠ 0 := by
      simpa [hi, mulVec_eq_sum, diagonal_apply, sub_eq_zero] using! congr_fun hk (Sum.inr i)
    ext (j | j)
    · have : χ x ≠ 0 := hχx ▸ hd₀ i
      simpa [hi, mulVec_eq_sum, diagonal_apply, hk₀, this] using! congr_fun hk (Sum.inl j)
    · rcases eq_or_ne i j with rfl | hij
      · simp [hi]
      · suffices d j ≠ χ x by
          simpa [mulVec_eq_sum, diagonal_apply, sub_eq_zero, this, hij, hi] using!
            congr_fun hk (Sum.inr j)
        rw [← hχx]
        exact hd₁ <| by simp [hij.symm]
  simp_rw [cartanSubalgebra, LieSubalgebra.mem_mk_iff', diagonal_elim_mem_span_h_iff]
  exact (exists_congr fun d ↦ by tauto).mp b.exists_mem_span_pairingIn_ne_zero_and_pairwise_ne

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Semisimple/Variant380367528cf957392e0b0ee44c7132fcc5648fc7b0e48e9eea862f5ca19ce6fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Semisimple/Variant380367528cf957392e0b0ee44c7132fcc5648fc7b0e48e9eea862f5ca19ce6fa.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d648f2a9d180c2ae628aa5fbc3a73c3b23e922c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
