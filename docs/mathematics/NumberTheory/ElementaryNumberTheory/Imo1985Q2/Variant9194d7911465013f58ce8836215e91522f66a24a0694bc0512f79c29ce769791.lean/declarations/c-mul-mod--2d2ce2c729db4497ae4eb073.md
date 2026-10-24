# C_mul_mod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "26f7109b3f95cc3f93208d1b44a10cd262676ba0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 49,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/91/9194d7911465013f58ce8836215e91522f66a24a0694bc0512f79c29ce769791.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8eda3289-c604-bb8e-26b6-046a5ead067d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:47845931-500a-40e0-b62f-f7b582055391",
  "kind": "lemma",
  "lexical_name": "C_mul_mod",
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
  "slug": "c-mul-mod--2d2ce2c729db4497ae4eb073",
  "source": {
    "blob": "26f7109b3f95cc3f93208d1b44a10cd262676ba0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 49,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Imo1985Q2/Variant9194d7911465013f58ce8836215e91522f66a24a0694bc0512f79c29ce769791.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d2ce2c729db4497ae4eb0739dd804e7f70b29c9b5d02fa7efd0e1b1c47d238e",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Imo1985Q2/Variant9194d7911465013f58ce8836215e91522f66a24a0694bc0512f79c29ce769791.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47845931-500a-40e0-b62f-f7b582055391`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma C_mul_mod {n j : ℕ} (hn : 3 ≤ n) (hj : j ∈ Set.Ico 1 n) (cpj : Nat.Coprime n j)
    {C : ℕ → Fin 2} (hC : Condition n j C) {k : ℕ} (hk : k ∈ Set.Ico 1 n) :
    C (k * j % n) = C j := by
  induction k, hk.1 using Nat.le_induction with
  | base => rw [one_mul, Nat.mod_eq_of_lt hj.2]
  | succ k hk₁ ih =>
    have nej : (k + 1) * j % n ≠ j := by
      by_contra! h; nth_rw 2 [← Nat.mod_eq_of_lt hj.2, ← one_mul j] at h
      replace h : (k + 1) % n = 1 % n := Nat.ModEq.cancel_right_of_coprime cpj h
      rw [Nat.mod_eq_of_lt hk.2, Nat.mod_eq_of_lt (by lia)] at h
      lia
    have b₁ : (k + 1) * j % n ∈ Set.Ico 1 n := by
      refine ⟨?_, Nat.mod_lt _ (by lia)⟩
      by_contra! h; rw [Nat.lt_one_iff, ← Nat.dvd_iff_mod_eq_zero] at h
      have ek := Nat.eq_zero_of_dvd_of_lt (cpj.dvd_of_dvd_mul_right h) hk.2
      lia
    rw [← ih ⟨hk₁, Nat.lt_of_succ_lt hk.2⟩, hC.2 _ b₁ nej]
    rcases nej.lt_or_gt with h | h
    · rw [Int.natAbs_natCast_sub_natCast_of_ge h.le]
      have b₂ : j - (k + 1) * j % n ∈ Set.Ico 1 n :=
        ⟨Nat.sub_pos_iff_lt.mpr h, (Nat.sub_le ..).trans_lt hj.2⟩
      have q : n - (j - (k + 1) * j % n) = (k + 1) * j % n + (n - j) % n := by
        rw [tsub_tsub_eq_add_tsub_of_le h.le, add_comm, Nat.add_sub_assoc hj.2.le,
          Nat.mod_eq_of_lt (show n - j < n by lia)]
      rw [hC.1 _ b₂, q, ← Nat.add_mod_of_add_mod_lt (by lia), ← Nat.add_sub_assoc hj.2.le,
        add_comm, Nat.add_sub_assoc (Nat.le_mul_of_pos_left _ hk.1), ← tsub_one_mul,
        Nat.add_mod_left, add_tsub_cancel_right]
    · rw [Int.natAbs_natCast_sub_natCast_of_le h.le, Nat.mod_sub_of_le h.le]
      rw [add_mul, one_mul, add_tsub_cancel_right]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Imo1985Q2/Variant9194d7911465013f58ce8836215e91522f66a24a0694bc0512f79c29ce769791.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Imo1985Q2/Variant9194d7911465013f58ce8836215e91522f66a24a0694bc0512f79c29ce769791.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26f7109b3f95cc3f93208d1b44a10cd262676ba0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
