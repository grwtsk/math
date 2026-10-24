# range_filter_isPrimePow_subset_union

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e586f4bec3fa69d76499efc20cd4350c0ea483e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 377,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:da5db1e2-5837-f8bc-bc17-57634149c4cf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6da45e74-7910-8d7d-a128-f7e15618cd6a",
  "kind": "theorem",
  "lexical_name": "range_filter_isPrimePow_subset_union",
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
  "slug": "range-filter-isprimepow-subset-union--a2620bb9be3b8448698265ba",
  "source": {
    "blob": "5e586f4bec3fa69d76499efc20cd4350c0ea483e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 399,
    "line": 377,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2620bb9be3b8448698265bae95ad1d6a44993ff8561f5e9e865e0b9ec8cfdc7",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6da45e74-7910-8d7d-a128-f7e15618cd6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 377–399.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem range_filter_isPrimePow_subset_union (N : ℕ) :
    ((Finset.range N).filter IsPrimePow) ⊆ (Finset.range N).filter Nat.Prime ∪
      ((Finset.Ico 1 (Nat.ceil (Real.sqrt N))) ×ˢ Finset.range (Nat.log 2 N + 1)).image
        (fun p ↦ p.1 ^ p.2) := by
  intro n
  simp only [Finset.mem_Ico, Finset.mem_filter, Finset.mem_range, Finset.mem_union,
    Finset.mem_image, Finset.mem_product, Prod.exists, and_imp]
  intro hnN hnprime
  rcases prime_or_pow N n hnN hnprime with hp | ⟨m, hm, k, hk, h⟩
  · left
    exact ⟨hnN, hp⟩
  · right
    refine ⟨m, k, ?_⟩
    by_cases hm : m = 0
    · rw [hm, zero_pow] at h
      · exact False.elim (hnprime.ne_zero h)
      · rintro rfl
        simp only [pow_zero] at h
        exact False.elim (hnprime.ne_one h)
    rw [Nat.lt_ceil, Nat.lt_succ_iff]
    have : 1 ≤ m := by omega
    aesop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean#L377).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e586f4bec3fa69d76499efc20cd4350c0ea483e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
