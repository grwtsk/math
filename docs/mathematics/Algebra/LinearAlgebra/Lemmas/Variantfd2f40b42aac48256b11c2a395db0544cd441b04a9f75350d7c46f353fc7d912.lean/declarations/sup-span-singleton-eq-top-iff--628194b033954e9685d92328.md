# sup_span_singleton_eq_top_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5b0d996dbe8b319705f742569437b6bea16c31be",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fd2f40b42aac48256b11c2a395db0544cd441b04a9f75350d7c46f353fc7d912.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:576da163-7fc5-4037-0a62-a324585b443a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7777bdc5-0eaa-a728-29c2-75e7010ada32",
  "kind": "theorem",
  "lexical_name": "sup_span_singleton_eq_top_iff",
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
  "slug": "sup-span-singleton-eq-top-iff--628194b033954e9685d92328",
  "source": {
    "blob": "5b0d996dbe8b319705f742569437b6bea16c31be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 89,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Variantfd2f40b42aac48256b11c2a395db0544cd441b04a9f75350d7c46f353fc7d912.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:628194b033954e9685d923284a8e71896846f76e0c243b1861ad1bfd06421e96",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lemmas/Variantfd2f40b42aac48256b11c2a395db0544cd441b04a9f75350d7c46f353fc7d912.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7777bdc5-0eaa-a728-29c2-75e7010ada32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sup_span_singleton_eq_top_iff [Module.Finite K V] {W : Submodule K V} {v : V} (hv : v ∉ W) :
    W ⊔ span K {v} = ⊤ ↔ finrank K (V ⧸ W) = 1 := by
  refine ⟨fun hW ↦ ?_, fun hW ↦ ?_⟩
  · suffices W ⊓ span K {v} = ⊥ by
      have hv₀ : v ≠ 0 := by aesop
      have aux := finrank_sup_add_finrank_inf_eq W (span K {v})
      rw [hW, finrank_span_singleton hv₀, this, finrank_bot, finrank_top,
        ← finrank_quotient_add_finrank W] at aux
      lia
    refine (Submodule.eq_bot_iff _).mpr fun w hw ↦ ?_
    obtain ⟨ht, t, rfl⟩ : w ∈ W ∧ ∃ t : K, t • v = w := by simpa [mem_span_singleton] using hw
    rcases eq_or_ne t 0 with rfl | ht₀; · simp
    rw [Submodule.smul_mem_iff _ ht₀] at ht
    contradiction
  · apply Submodule.eq_top_of_disjoint
    · rw [← W.finrank_quotient_add_finrank, add_comm, add_le_add_iff_left, hW]
      aesop
    · exact Submodule.disjoint_span_singleton_of_notMem hv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lemmas/Variantfd2f40b42aac48256b11c2a395db0544cd441b04a9f75350d7c46f353fc7d912.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lemmas/Variantfd2f40b42aac48256b11c2a395db0544cd441b04a9f75350d7c46f353fc7d912.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b0d996dbe8b319705f742569437b6bea16c31be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
