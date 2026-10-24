# coe_genWeightSpace_zero_eq_span_range_u

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
      "line": 338,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/380367528cf957392e0b0ee44c7132fcc5648fc7b0e48e9eea862f5ca19ce6fa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aab0ea8f-5f29-2bd8-c039-b7eeebf9db60",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4ea7d2b9-3cbe-3b55-c58c-0df6c7275ad1",
  "kind": "lemma",
  "lexical_name": "coe_genWeightSpace_zero_eq_span_range_u",
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
  "slug": "coe-genweightspace-zero-eq-span-range-u--9e9258e6e92092f16f45c8eb",
  "source": {
    "blob": "d648f2a9d180c2ae628aa5fbc3a73c3b23e922c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 338,
    "path": "GRWTSK/Algebra/LinearAlgebra/Semisimple/Variant380367528cf957392e0b0ee44c7132fcc5648fc7b0e48e9eea862f5ca19ce6fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e9258e6e92092f16f45c8eb3073bd307c6350886906dd4e56ccd3e3c2beeea4",
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

Occurrence: `result:4ea7d2b9-3cbe-3b55-c58c-0df6c7275ad1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 338–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coe_genWeightSpace_zero_eq_span_range_u :
    genWeightSpace (b.support ⊕ ι → K) (0 : H → K) = span K (range <| u (b := b)) := by
  refine le_antisymm (fun w hw ↦ Pi.mem_span_range_single_inl_iff.mpr fun i ↦ ?_) ?_
  · replace hw : ∀ (x) (hx : x ∈ lieAlgebra b), ⟨x, hx⟩ ∈ H →
        ∃ k, (x.toLin' ^ k) w = 0 := by simpa [mem_genWeightSpace] using hw
    obtain ⟨j, hj⟩ : ∃ j : b.support, P.pairingIn ℤ i j ≠ 0 := by
      obtain ⟨j, hj, hj₀⟩ := b.exists_mem_support_pos_pairingIn_ne_zero i
      rw [ne_eq, P.pairingIn_eq_zero_iff] at hj₀
      exact ⟨⟨j, hj⟩, hj₀⟩
    obtain ⟨k, hk⟩ := hw (h j) (h_mem_lieAlgebra j) (h_mem_cartanSubalgebra' j _)
    simpa [h_eq_diagonal, ← toLin'_pow, fromBlocks_diagonal_pow, diagonal_pow,
      mulVec_eq_sum, diagonal_apply, hj] using congr_fun hk (Sum.inr i)
  · rw [span_le]
    rintro - ⟨i, rfl⟩
    simp only [SetLike.mem_coe, LieSubmodule.mem_toSubmodule, mem_genWeightSpace]
    rintro ⟨⟨x, -⟩, hx⟩
    exact ⟨1, funext fun j ↦ by simpa using apply_sum_inl_eq_zero_of_mem_span_h i j hx⟩

variable [P.IsReduced] [P.IsIrreducible]

/-- Lemma 4.2 from [Geck](Geck2017). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Semisimple/Variant380367528cf957392e0b0ee44c7132fcc5648fc7b0e48e9eea862f5ca19ce6fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Semisimple/Variant380367528cf957392e0b0ee44c7132fcc5648fc7b0e48e9eea862f5ca19ce6fa.lean#L338).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d648f2a9d180c2ae628aa5fbc3a73c3b23e922c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
