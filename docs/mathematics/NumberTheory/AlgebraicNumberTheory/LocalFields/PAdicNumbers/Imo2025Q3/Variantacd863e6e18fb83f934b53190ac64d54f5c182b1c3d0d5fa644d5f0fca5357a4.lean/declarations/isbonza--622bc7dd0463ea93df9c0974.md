# isBonza

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fa09bcc0c3fa865b9ef049fb56560c9cfd7ad0e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 154,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/acd863e6e18fb83f934b53190ac64d54f5c182b1c3d0d5fa644d5f0fca5357a4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:61022d58-3d6d-f3c8-a6c2-35d4bfa3bfb4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f1d60e8d-d9df-9caa-205e-98fadcba2e8c",
  "kind": "lemma",
  "lexical_name": "isBonza",
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
  "slug": "isbonza--622bc7dd0463ea93df9c0974",
  "source": {
    "blob": "fa09bcc0c3fa865b9ef049fb56560c9cfd7ad0e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 154,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Imo2025Q3/Variantacd863e6e18fb83f934b53190ac64d54f5c182b1c3d0d5fa644d5f0fca5357a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:622bc7dd0463ea93df9c0974f19a552045431c522dc6c5ce9b4a678143118649",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Imo2025Q3/Variantacd863e6e18fb83f934b53190ac64d54f5c182b1c3d0d5fa644d5f0fca5357a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1d60e8d-d9df-9caa-205e-98fadcba2e8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isBonza : IsBonza fExample := by
  constructor
  · intro a b ha hb
    by_cases ch1 : ¬ 2 ∣ a
    · simp [fExample, ch1]
    by_cases ch2 : a = 2
    · simp only [fExample, ch2, dvd_refl, not_true_eq_false, ↓reduceIte, Nat.cast_ofNat,
        Nat.two_dvd_ne_zero]
      push_cast
      split_ifs with hb1 hb2
      · grind [sq_emod_four_eq_one_of_odd]
      · simp [hb2]
      · refine dvd_sub ?_ ?_
        · have : 2 ∣ (b : ℤ) := by grind
          simpa using pow_dvd_pow_of_dvd this 2
        · exact Dvd.dvd.pow ⟨2 ^ padicValNat 2 b, by ring⟩ (zero_ne_add_one 3).symm
    · simp only [fExample, ch1, ↓reduceIte, ch2, Nat.cast_pow, Nat.cast_ofNat, Nat.two_dvd_ne_zero,
        Nat.cast_ite, Nat.cast_one, ite_pow, one_pow]
      split_ifs with hb1 hb2
      · by_cases lt : b = 1
        · simp [lt]
        have : (padicValNat 2 a + 2) ≤ padicValInt 2 (b ^ a - 1) := by
          rw [← Int.natCast_pow_pred b a hb]
          exact padicValNat.pow_two_sub_one_ge (by lia) (two_dvd_ne_zero.mpr hb1) (by lia)
            (even_iff.mpr (by simpa using ch1))
        exact Int.dvd_trans (pow_dvd_pow 2 this) (padicValInt_dvd ((b : ℤ) ^ a - 1))
      · grind [dvd_pow_sub]
      · grind [dvd_pow_sub]
  · grind [fExample, Nat.two_pow_pos]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Imo2025Q3/Variantacd863e6e18fb83f934b53190ac64d54f5c182b1c3d0d5fa644d5f0fca5357a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Imo2025Q3/Variantacd863e6e18fb83f934b53190ac64d54f5c182b1c3d0d5fa644d5f0fca5357a4.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa09bcc0c3fa865b9ef049fb56560c9cfd7ad0e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
