# grahamConjecture_of_squarefree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bdbe10e46a529ce76c646f25caab8bac891e5edf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 34,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6e3150e91e4a259068817b5a05177ec984b3a8fbe11e3d8621aba44e1d1fea60.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:44204537-4068-b2fd-bc83-df99eafae5b8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4662b31c-c879-c974-dbd9-37e17426bbe4",
  "kind": "lemma",
  "lexical_name": "grahamConjecture_of_squarefree",
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
  "slug": "grahamconjecture-of-squarefree--01f240942685b2616c04d2c2",
  "source": {
    "blob": "bdbe10e46a529ce76c646f25caab8bac891e5edf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 34,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MaricaSchoenheim/Variant6e3150e91e4a259068817b5a05177ec984b3a8fbe11e3d8621aba44e1d1fea60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01f240942685b2616c04d2c2e55c8b0a917251acff69ce2cb730173b19447591",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/MaricaSchoenheim/Variant6e3150e91e4a259068817b5a05177ec984b3a8fbe11e3d8621aba44e1d1fea60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4662b31c-c879-c974-dbd9-37e17426bbe4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma grahamConjecture_of_squarefree {n : ℕ} (f : ℕ → ℕ) (hf' : ∀ k < n, Squarefree (f k)) :
    GrahamConjecture n f := by
  rintro hn hf
  by_contra!
  set 𝒜 := (Iio n).image fun n ↦ primeFactors (f n)
  have hf'' : ∀ i < n, ∀ j, Squarefree (f i / (f i).gcd (f j)) :=
    fun i hi j ↦ (hf' _ hi).squarefree_of_dvd <| div_dvd_of_dvd <| gcd_dvd_left _ _
  refine lt_irrefl n ?_
  calc
    n = #𝒜 := ?_
    _ ≤ #(𝒜 \\ 𝒜) := 𝒜.card_le_card_diffs
    _ ≤ #(Ioo 0 n) := card_le_card_of_injOn (fun s ↦ ∏ p ∈ s, p) ?_ ?_
    _ = n - 1 := by rw [card_Ioo, tsub_zero]
    _ < n := tsub_lt_self hn.bot_lt zero_lt_one
  · rw [Finset.card_image_of_injOn, card_Iio]
    simpa using prod_primeFactors_invOn_squarefree.2.injOn.comp hf.injOn hf'
  · simp only [𝒜, forall_mem_diffs, forall_mem_image, mem_Ioo, mem_Iio]
    rintro i hi j hj
    rw [← primeFactors_div_gcd (hf' _ hi) (hf' _ hj).ne_zero,
      prod_primeFactors_of_squarefree <| hf'' _ hi _]
    exact ⟨Nat.div_pos (gcd_le_left _ (hf' _ hi).ne_zero.bot_lt) <|
      Nat.gcd_pos_of_pos_left _ (hf' _ hi).ne_zero.bot_lt, Nat.div_lt_of_lt_mul <| this _ hi _ hj⟩
  · simp only [𝒜, Set.InjOn, mem_coe, forall_mem_diffs, forall_mem_image, mem_Ioo, mem_Iio]
    rintro a ha b hb c hc d hd
    rw [← primeFactors_div_gcd (hf' _ ha) (hf' _ hb).ne_zero, ← primeFactors_div_gcd
      (hf' _ hc) (hf' _ hd).ne_zero, prod_primeFactors_of_squarefree (hf'' _ ha _),
      prod_primeFactors_of_squarefree (hf'' _ hc _)]
    rintro h
    rw [h]

end Nat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/MaricaSchoenheim/Variant6e3150e91e4a259068817b5a05177ec984b3a8fbe11e3d8621aba44e1d1fea60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/MaricaSchoenheim/Variant6e3150e91e4a259068817b5a05177ec984b3a8fbe11e3d8621aba44e1d1fea60.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdbe10e46a529ce76c646f25caab8bac891e5edf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
