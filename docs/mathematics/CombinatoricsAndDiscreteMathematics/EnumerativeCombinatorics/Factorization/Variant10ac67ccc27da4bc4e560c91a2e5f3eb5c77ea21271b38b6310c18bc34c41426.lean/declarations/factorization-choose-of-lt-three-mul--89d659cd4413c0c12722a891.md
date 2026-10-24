# factorization_choose_of_lt_three_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "346759f9b68c8214d7d6a21d878489524bfa6e2f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/10ac67ccc27da4bc4e560c91a2e5f3eb5c77ea21271b38b6310c18bc34c41426.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3204b6ad-db36-3309-070e-a6a8c5d1092f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bcabfc17-cf7c-2579-609d-43389f823acf",
  "kind": "theorem",
  "lexical_name": "factorization_choose_of_lt_three_mul",
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
  "slug": "factorization-choose-of-lt-three-mul--89d659cd4413c0c12722a891",
  "source": {
    "blob": "346759f9b68c8214d7d6a21d878489524bfa6e2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 58,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Factorization/Variant10ac67ccc27da4bc4e560c91a2e5f3eb5c77ea21271b38b6310c18bc34c41426.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89d659cd4413c0c12722a8914a489ed7c065d7a71222c8ecd0b2aded2e6251e1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Factorization/Variant10ac67ccc27da4bc4e560c91a2e5f3eb5c77ea21271b38b6310c18bc34c41426.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bcabfc17-cf7c-2579-609d-43389f823acf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factorization_choose_of_lt_three_mul (hp' : p ≠ 2) (hk : p ≤ k) (hk' : p ≤ n - k)
    (hn : n < 3 * p) : (choose n k).factorization p = 0 := by
  rcases em' p.Prime with hp | hp
  · exact factorization_eq_zero_of_non_prime (choose n k) hp
  rcases lt_or_le n k with hnk | hkn
  · simp [choose_eq_zero_of_lt hnk]
  rw [factorization_def _ hp, @padicValNat_def _ ⟨hp⟩ _ (choose_pos hkn),
    ← emultiplicity_eq_zero_iff_multiplicity_eq_zero]
  simp only [hp.emultiplicity_choose hkn (lt_add_one _), cast_eq_zero, Finset.card_eq_zero,
    Finset.filter_eq_empty_iff, not_le]
  intro i hi
  rcases eq_or_lt_of_le (Finset.mem_Ico.mp hi).1 with (rfl | hi)
  · rw [pow_one, ← add_lt_add_iff_left (2 * p), ← succ_mul, two_mul, add_add_add_comm]
    exact
      lt_of_le_of_lt
        (add_le_add
          (add_le_add_right (le_mul_of_one_le_right' ((one_le_div_iff hp.pos).mpr hk)) (k % p))
          (add_le_add_right (le_mul_of_one_le_right' ((one_le_div_iff hp.pos).mpr hk'))
            ((n - k) % p)))
        (by rwa [div_add_mod, div_add_mod, add_tsub_cancel_of_le hkn])
  · replace hn : n < p ^ i := by
      have : 3 ≤ p := lt_of_le_of_ne hp.two_le hp'.symm
      calc
        n < 3 * p := hn
        _ ≤ p * p := mul_le_mul_right' this p
        _ = p ^ 2 := (sq p).symm
        _ ≤ p ^ i := pow_right_mono₀ hp.one_lt.le hi
    rwa [mod_eq_of_lt (lt_of_le_of_lt hkn hn), mod_eq_of_lt (lt_of_le_of_lt tsub_le_self hn),
      add_tsub_cancel_of_le hkn]

/-- Primes greater than about `2 * n / 3` and less than `n` do not appear in the factorization of
`centralBinom n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Factorization/Variant10ac67ccc27da4bc4e560c91a2e5f3eb5c77ea21271b38b6310c18bc34c41426.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Factorization/Variant10ac67ccc27da4bc4e560c91a2e5f3eb5c77ea21271b38b6310c18bc34c41426.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `346759f9b68c8214d7d6a21d878489524bfa6e2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
