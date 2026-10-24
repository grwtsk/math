# kraft_mcmillan_inequality_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f50b429f-cf4d-273b-16a0-71fd46b29cfc",
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
  "slug": "kraft-mcmillan-inequality-aux--654db9c9b9d668b649e7f523",
  "source": {
    "blob": "9278650f29163c61b2e9c413cfd18700e7c33bae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 107,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/KraftMcMillan/Variant3080295c54c5bb5526308b17cb79e12d01e4217a13ba60b119d4888297d5ed5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:654db9c9b9d668b649e7f52346dacba838621717c6fe315e132ea022fd05655a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/KraftMcMillan/Variant3080295c54c5bb5526308b17cb79e12d01e4217a13ba60b119d4888297d5ed5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f50b429f-cf4d-273b-16a0-71fd46b29cfc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–152.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/KraftMcMillan/Variant3080295c54c5bb5526308b17cb79e12d01e4217a13ba60b119d4888297d5ed5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/KraftMcMillan/Variant3080295c54c5bb5526308b17cb79e12d01e4217a13ba60b119d4888297d5ed5d.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9278650f29163c61b2e9c413cfd18700e7c33bae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
