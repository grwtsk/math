# card_le_two_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2ed1b437e8624887b34c6da160ac829db0974990",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 133,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/95c827c8d895665c661795e6bff736eccafa01fbc21aafe9927db777440f1862.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:06c85552-70d3-8ba5-ae20-2a88bb966170",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:69f35446-e043-7e4f-9446-d906977ad0b4",
  "kind": "theorem",
  "lexical_name": "card_le_two_pow",
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
  "slug": "card-le-two-pow--fc55808a5b5afc59f7dc2537",
  "source": {
    "blob": "2ed1b437e8624887b34c6da160ac829db0974990",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 133,
    "path": "GRWTSK/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant95c827c8d895665c661795e6bff736eccafa01fbc21aafe9927db777440f1862.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc55808a5b5afc59f7dc2537187021bd9f4fc5b6b123d6f39c6126072b10b629",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant95c827c8d895665c661795e6bff736eccafa01fbc21aafe9927db777440f1862.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69f35446-e043-7e4f-9446-d906977ad0b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_le_two_pow {x k : ℕ} : #{e ∈ M x k | Squarefree (e + 1)} ≤ 2 ^ k := by
  let M₁ := {e ∈ M x k | Squarefree (e + 1)}
  let f s := (∏ a ∈ s, a) - 1
  let K := powerset (image Nat.succ (range k))
  -- Take `e` in `M x k`. If `e + 1` is squarefree, then it is the product of a subset of `[1, k]`.
  -- It follows that `e` is one less than such a product.
  have h : M₁ ⊆ image f K := by
    intro m hm
    simp only [f, K, M₁, M, mem_filter, mem_range, mem_powerset, mem_image] at hm ⊢
    obtain ⟨⟨-, hmp⟩, hms⟩ := hm
    use! (m + 1).primeFactorsList
    · rwa [Multiset.coe_nodup, ← Nat.squarefree_iff_nodup_primeFactorsList m.succ_ne_zero]
    refine ⟨fun p => ?_, ?_⟩
    · suffices p ∈ (m + 1).primeFactorsList → ∃ a : ℕ, a < k ∧ a.succ = p by simpa
      simp only [Nat.mem_primeFactorsList m.succ_ne_zero]
      intro hp
      exact
        ⟨p.pred, (Nat.pred_lt (Nat.Prime.ne_zero hp.1)).trans_le ((hmp p) hp),
          Nat.succ_pred_eq_of_pos (Nat.Prime.pos hp.1)⟩
    · simp [Nat.prod_primeFactorsList m.succ_ne_zero, m.add_one_sub_one]
  -- The number of elements of `M x k` with `e + 1` squarefree is bounded by the number of subsets
  -- of `[1, k]`.
  calc
    #M₁ ≤ #(image f K) := card_le_card h
    _ ≤ #K := card_image_le
    _ ≤ 2 ^ #(image Nat.succ (range k)) := by simp only [K, card_powerset]; rfl
    _ ≤ 2 ^ #(range k) := pow_right_mono₀ one_le_two card_image_le
    _ = 2 ^ k := by rw [card_range k]

/--
The number of `e < x` for which `e + 1` is a product of powers of primes smaller than or equal to
`k` is bounded by `2 ^ k * nat.sqrt x`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant95c827c8d895665c661795e6bff736eccafa01fbc21aafe9927db777440f1862.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant95c827c8d895665c661795e6bff736eccafa01fbc21aafe9927db777440f1862.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ed1b437e8624887b34c6da160ac829db0974990` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
