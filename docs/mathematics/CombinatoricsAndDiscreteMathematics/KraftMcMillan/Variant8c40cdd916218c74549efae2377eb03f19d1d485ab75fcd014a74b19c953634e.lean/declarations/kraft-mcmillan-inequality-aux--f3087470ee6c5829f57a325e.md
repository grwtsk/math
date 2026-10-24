# kraft_mcmillan_inequality_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c005ff7070f8b06ded36f1c228e46ce7b43698f2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8c40cdd916218c74549efae2377eb03f19d1d485ab75fcd014a74b19c953634e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7e0be71f-855b-9f08-e34f-637a5a318c87",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:96ac153d-d156-1d4f-50b4-4dd84745f92b",
  "kind": "lemma",
  "lexical_name": "kraft_mcmillan_inequality_aux",
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
  "slug": "kraft-mcmillan-inequality-aux--f3087470ee6c5829f57a325e",
  "source": {
    "blob": "c005ff7070f8b06ded36f1c228e46ce7b43698f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 99,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/KraftMcMillan/Variant8c40cdd916218c74549efae2377eb03f19d1d485ab75fcd014a74b19c953634e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3087470ee6c5829f57a325ee7371bc68b5169e954e1c63be329975ecc29ef84",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/KraftMcMillan/Variant8c40cdd916218c74549efae2377eb03f19d1d485ab75fcd014a74b19c953634e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96ac153d-d156-1d4f-50b4-4dd84745f92b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma kraft_mcmillan_inequality_aux {S : Finset (List α)} [Fintype α] [Nonempty α]
    (h : IsUniquelyDecodable (S : Set (List α))) (r : ℕ) (hr : r ≥ 1) :
    (∑ w ∈ S, (1 / (Fintype.card α) : ℝ) ^ w.length) ^ r ≤ r * (Finset.sup S List.length) := by
  classical
  -- We use maxLen to bound lengths of `r`-fold concatenations.
  set maxLen := S.sup List.length
  -- Let `T` be the set of all concatenations of `r` codewords from `S`.
  let T : Finset (List α) := Finset.image concatFn (Finset.univ : Finset (Fin r → S))
  -- Any `x ∈ T` is a concatenation of `r` nonempty codewords, hence `r ≤ |x| ≤ r*maxLen`.
  have hlen_maps (x : List α) (hx : x ∈ T) : x.length ∈ Finset.Icc r (r * maxLen) := by
    rcases Finset.mem_image.mp hx with ⟨_, _, rfl⟩
    exact concatFn_length_mem_Icc
      (fun c hnil => h.epsilon_not_mem (by simpa [hnil] using c.prop))
  let D := (Fintype.card α : ℝ)
  -- Expand the `r`-th power as a sum over `r`-tuples of codewords;
  -- each tuple contributes the weight `(1/D)^{|concatFn w|}`.
  calc (∑ w ∈ S, (1 / (Fintype.card α) : ℝ) ^ w.length) ^ r
    _ = ∑ w : Fin r → S, ∏ i : Fin r, (1 / D) ^ (w i).val.length := by
      simpa [(Finset.sum_coe_sort S _).symm] using
        Fintype.sum_pow (f := fun c : S => (1 / D) ^ c.val.length) r
    -- Each tuple contributes the weight `(1/D)^{|concatFn w|}`.
    _ = ∑ w, (1 / D) ^ (concatFn w).length := by
      apply Fintype.sum_congr
      intro w
      simpa [concatFn_length] using Finset.prod_pow_eq_pow_sum Finset.univ _ _
    -- Unique decodability makes `concatFn` injective, so these concatenations are distinct;
    -- we can reindex the sum by the set `T` of words.
    _ = ∑ x ∈ T, (1 / D) ^ x.length :=
      (Finset.sum_image (f := fun x => (1 / D) ^ x.length)
        (fun _ _ _ _ hEq => concatFn_injective_of_isUniquelyDecodable h r hEq)).symm
    -- Group the sum over `T` by the length `s`.
    -- The admissible lengths lie in `[r, r*maxLen]` by `hlen_maps`.
    _ = ∑ s ∈ Finset.Icc r (r * maxLen), ∑ x ∈ T with x.length = s, (1 / D) ^ x.length :=
      (Finset.sum_fiberwise_of_maps_to hlen_maps _).symm
  -- For each length `s`, the `s`-fiber contributes at most `D^s * (1/D)^s`:
  -- there are ≤ `D^s` words of length `s`, and each has weight `(1/D)^s`.
  apply le_trans (Finset.sum_le_sum (fun _ _ => sum_pow_length_filter_eq_le_card_mul))
  -- Summing these bounds over the interval s ∈ [r, r * maxLen] multiplies the term
  -- by the number of lengths. Since r ≥ 1, this count is at most r * maxLen.
  rcases r with (_ | _ | r) <;> rcases maxLen with (_ | _ | maxLen)
    <;> simp at * <;> norm_cast <;> simp

open Filter

/-- **Kraft-McMillan Inequality**: If `S` is a finite uniquely decodable code,
then `Σ D^{-|w|} ≤ 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/KraftMcMillan/Variant8c40cdd916218c74549efae2377eb03f19d1d485ab75fcd014a74b19c953634e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/KraftMcMillan/Variant8c40cdd916218c74549efae2377eb03f19d1d485ab75fcd014a74b19c953634e.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c005ff7070f8b06ded36f1c228e46ce7b43698f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
