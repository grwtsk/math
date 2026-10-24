# exists_minimal_nat_zero_lt_and_lt_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5ca0a5243c86339ac96f9edfd475b31a417e8d71",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 134,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/beef9d8488d76b97e1a65997f7a76782c6871f7d18622f79058d02a3941d6ca9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6fbc5a62-307d-a672-e254-d486424fe3df",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6b735bf7-85b7-4cd2-b086-9e9bce869c3c",
  "kind": "lemma",
  "lexical_name": "exists_minimal_nat_zero_lt_and_lt_one",
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
  "slug": "exists-minimal-nat-zero-lt-and-lt-one--04189e4f05792009cd4b5f36",
  "source": {
    "blob": "5ca0a5243c86339ac96f9edfd475b31a417e8d71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 134,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variantbeef9d8488d76b97e1a65997f7a76782c6871f7d18622f79058d02a3941d6ca9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04189e4f05792009cd4b5f36829a516aecda23ba06098f205fed8de84f3b9dff",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variantbeef9d8488d76b97e1a65997f7a76782c6871f7d18622f79058d02a3941d6ca9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b735bf7-85b7-4cd2-b086-9e9bce869c3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_minimal_nat_zero_lt_and_lt_one :
    ∃ p : ℕ, (0 < f p ∧ f p < 1) ∧ ∀ m : ℕ, 0 < f m ∧ f m < 1 → p ≤ m := by
  -- There is a positive integer with absolute value different from one.
  obtain ⟨n, hn1, hn2⟩ : ∃ n : ℕ, n ≠ 0 ∧ f n ≠ 1 := by
    contrapose! hf_nontriv
    refine (isNontrivial_iff_ne_trivial f).not_left.mpr <| eq_on_nat_iff_eq.mp fun n ↦ ?_
    rcases eq_or_ne n 0 with rfl | hn
    · simp
    · simp [hf_nontriv, hn]
  set P := {m : ℕ | 0 < f ↑m ∧ f ↑m < 1} -- p is going to be the minimum of this set.
  have hP : P.Nonempty :=
    ⟨n, map_pos_of_ne_zero f (Nat.cast_ne_zero.mpr hn1), lt_of_le_of_ne (bdd n) hn2⟩
  exact ⟨sInf P, Nat.sInf_mem hP, fun _ hm ↦ Nat.sInf_le hm⟩

-- ## Step 2: p is prime

variable {p : ℕ} (hp0 : 0 < f p) (hp1 : f p < 1) (hmin : ∀ m : ℕ, 0 < f m ∧ f m < 1 → p ≤ m)

include hp0 hp1 hmin in
/-- The minimal positive integer with absolute value smaller than 1 is a prime number. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variantbeef9d8488d76b97e1a65997f7a76782c6871f7d18622f79058d02a3941d6ca9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variantbeef9d8488d76b97e1a65997f7a76782c6871f7d18622f79058d02a3941d6ca9.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ca0a5243c86339ac96f9edfd475b31a417e8d71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
