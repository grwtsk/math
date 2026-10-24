# even_to_odd_goldbach

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5774db98691e2cfa0ecdb528c7e9b8ef13175c63",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 106,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b56f95aa95049ec5a86fd4e7ea7cbed0f8e8601619924d96d816f646eeb8629e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8ad62219-ccce-f6e5-ad53-d77e2d7295c5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4b82cd10-9f6c-394a-923b-899fba8603f3",
  "kind": "theorem",
  "lexical_name": "even_to_odd_goldbach",
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
  "slug": "even-to-odd-goldbach--ff6eee0f33614a300780527e",
  "source": {
    "blob": "5774db98691e2cfa0ecdb528c7e9b8ef13175c63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 106,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Goldbach/Variantb56f95aa95049ec5a86fd4e7ea7cbed0f8e8601619924d96d816f646eeb8629e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff6eee0f33614a300780527e26cdca6409a0399c845c0b7419df546689ca1ac2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Goldbach/Variantb56f95aa95049ec5a86fd4e7ea7cbed0f8e8601619924d96d816f646eeb8629e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b82cd10-9f6c-394a-923b-899fba8603f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem even_to_odd_goldbach (x₀ H Δ : ℕ)
    (hprime : ∀ x ≥ x₀, HasPrimeInInterval (x * (1 - 1 / Δ)) (x / Δ))
    (heven : even_conjecture H) (hodd : odd_conjecture (x₀ + 4)) :
    odd_conjecture ((H - 4) * Δ + 4) := by
  by_cases! hH : H < 4
  · simp_all [tsub_eq_zero_of_le hH.le, odd_conjecture]
  by_cases! Δ ≤ 1
  · interval_cases Δ
    · simp_all [odd_conjecture]
    · simp_all [odd_conjecture_mono (H + 3) H (even_to_odd_goldbach_triv H heven) (by linarith)]
  · intro n h ho
    by_cases! hn33 : n ≤ 8
    · exact odd_goldbach_test n (by grind : n ∈ Finset.Icc 7 33) ho
    by_cases! hn : n ≤ x₀ + 4
    · exact hodd n (by grind : n ∈ Finset.Icc 7 (x₀ + 4)) ho
    · obtain ⟨p, hp⟩ := hprime (n - 4) (by grind : n - 4 ≥ x₀)
      have hnpe : Even (n - p) :=
        have h2p : 2 < p := by
          rw [← Nat.cast_lt (α := ℝ)]
          calc
          _ = (8 - 4) * (1 - 1 / 2 : ℝ) := by norm_num
          _ < (n - 4) * (1 -  1 / 2 : ℝ) := by gcongr; norm_cast
          _ ≤ ↑(n - 4) * (1 -  1 / Δ : ℝ) := by gcongr <;> norm_cast; grind
          _ < p := hp.2.1
        ho.tsub_odd (hp.1.odd_of_ne_two h2p.ne')
      have hnp : (n - p) ∈ Finset.Icc 4 H := by
        have hpn4 : p ≤ n - 4 := by simpa [field] using hp.2.2
        have hpn : p ≤ n := hpn4.trans tsub_le_self
        refine Finset.mem_Icc.2 ⟨?_, ?_⟩
        · exact (le_tsub_iff_le_tsub (by grind) hpn).2 hpn4
        · have := hp.2.1
          rw [← Nat.cast_le (α := ℝ), Nat.cast_sub hpn]
          rw [Nat.cast_sub (by grind), mul_sub, mul_one, ← sub_add_eq_sub_sub,
            sub_lt_comm] at this
          refine this.le.trans ?_
          calc
          _ ≤ 4 + ((↑(H - 4) * Δ + 4) - 4) * (1 / Δ : ℝ) := by gcongr <;> norm_cast; grind
          _ ≤ _ := by simp [field, Nat.cast_sub hH]
      obtain ⟨q, r, hqr⟩ := heven (n - p) hnp hnpe
      refine ⟨p, q, r, hp.1, hqr.1, hqr.2.1, ?_⟩
      grind

@[blueprint
  "richstein-even-goldbach"
  (title := "Richstein's verification of even Goldbach")
  (statement := /-- \cite{richstein}
  The even Goldbach conjecture is verified up to $4 \times 10^{14}$. -/)
  (proof := /-- Numerical verification. -/)
  (latexEnv := "proposition")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Goldbach/Variantb56f95aa95049ec5a86fd4e7ea7cbed0f8e8601619924d96d816f646eeb8629e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Goldbach/Variantb56f95aa95049ec5a86fd4e7ea7cbed0f8e8601619924d96d816f646eeb8629e.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5774db98691e2cfa0ecdb528c7e9b8ef13175c63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
