# exists_normalWord_prod_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "caf84a812ad79352b5951af0d067db389bb80433",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 611,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/eea71b84d18b560d22c7907730a1e4c1160904760e650be1d5624d7d02344d3b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e55d5a9-a958-b4ff-cfcc-aad4813dfc8d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:798a5e34-0fdc-92cb-3936-38ef25d3313b",
  "kind": "theorem",
  "lexical_name": "exists_normalWord_prod_eq",
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
  "slug": "exists-normalword-prod-eq--5984a3ee3cc5ff13fc000c47",
  "source": {
    "blob": "caf84a812ad79352b5951af0d067db389bb80433",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 668,
    "line": 611,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Varianteea71b84d18b560d22c7907730a1e4c1160904760e650be1d5624d7d02344d3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5984a3ee3cc5ff13fc000c47cbb874e40dc73102cfb65fa6cb6ca0d7594b67cd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Varianteea71b84d18b560d22c7907730a1e4c1160904760e650be1d5624d7d02344d3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:798a5e34-0fdc-92cb-3936-38ef25d3313b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 611–668.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_normalWord_prod_eq
    (d : TransversalPair G A B) (w : ReducedWord G A B) :
    ∃ w' : NormalWord d, w'.prod φ = w.prod φ ∧
      w'.toList.map Prod.fst = w.toList.map Prod.fst ∧
      ∀ u ∈ w.toList.head?.map Prod.fst,
      w'.head⁻¹ * w.head ∈ toSubgroup A B (-u) := by
  suffices ∀ w : ReducedWord G A B,
      w.head = 1 → ∃ w' : NormalWord d, w'.prod φ = w.prod φ ∧
      w'.toList.map Prod.fst = w.toList.map Prod.fst ∧
      ∀ u ∈ w.toList.head?.map Prod.fst,
      w'.head ∈ toSubgroup A B (-u) by
    by_cases hw1 : w.head = 1
    · simp only [hw1, inv_mem_iff, mul_one]
      exact this w hw1
    · rcases this ⟨1, w.toList, w.chain⟩ rfl with ⟨w', hw'⟩
      exact ⟨w.head • w', by
        simpa [ReducedWord.prod, mul_assoc] using hw'⟩
  intro w hw1
  rcases w with ⟨g, l, chain⟩
  dsimp at hw1; subst hw1
  induction l with
  | nil =>
    exact
      ⟨{ head := 1
         toList := []
         mem_set := by simp
         chain := List.chain'_nil }, by simp [prod]⟩
  | cons a l ih =>
    rcases ih (List.chain'_cons'.1 chain).2 with ⟨w', hw'1, hw'2, hw'3⟩
    clear ih
    refine ⟨(t^(a.1 : ℤ) * of a.2 : HNNExtension G A B φ) • w', ?_, ?_⟩
    · rw [prod_smul, hw'1]
      simp [ReducedWord.prod]
    · have : ¬ Cancels a.1 (a.2 • w') := by
        simp only [Cancels, group_smul_head, group_smul_toList, Option.map_eq_some_iff,
          Prod.exists, exists_and_right, exists_eq_right, not_and, not_exists]
        intro hS x hx
        have hx' := congr_arg (Option.map Prod.fst) hx
        rw [← List.head?_map, hw'2, List.head?_map, Option.map_some] at hx'
        have : w'.head ∈ toSubgroup A B a.fst := by
          simpa using hw'3 _ hx'
        rw [mul_mem_cancel_right this] at hS
        have : a.fst = -a.fst := by
          have hl : l ≠ [] := by rintro rfl; simp_all
          have : a.fst = (l.head hl).fst := (List.chain'_cons'.1 chain).1 (l.head hl)
            (List.head?_eq_head _) hS
          rwa [List.head?_eq_head hl, Option.map_some, ← this, Option.some_inj] at hx'
        simp at this
      rw [List.map_cons, mul_smul, of_smul_eq_smul, NormalWord.group_smul_def,
        t_pow_smul_eq_unitsSMul, unitsSMul]
      erw [dif_neg this]
      rw [← hw'2]
      simp [mul_assoc, unitsSMulGroup, (d.compl _).coe_equiv_snd_eq_one_iff_mem]

/-- Two reduced words representing the same element of the `HNNExtension G A B φ` have the same
length corresponding list, with the same pattern of occurrences of `t^1` and `t^(-1)`,
and also the `head` is in the same left coset of `toSubgroup A B (-u)`, where `u : ℤˣ`
is the exponent of the first occurrence of `t` in the word. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Varianteea71b84d18b560d22c7907730a1e4c1160904760e650be1d5624d7d02344d3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Varianteea71b84d18b560d22c7907730a1e4c1160904760e650be1d5624d7d02344d3b.lean#L611).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `caf84a812ad79352b5951af0d067db389bb80433` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
