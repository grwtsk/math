# card_pow_eq_card_pow_card_univ_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3070c4fa56b62827aaca2efb156bd01c1465e143",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1347,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0e/0e307376d34b48c19c1b970bfcb9f23ebde0c27500d52583148533856718ed52.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2173130f-f752-8606-befd-45baffcf3eb9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d6d90f86-9999-a19c-8861-e2265021ec45",
  "kind": "theorem",
  "lexical_name": "card_pow_eq_card_pow_card_univ_aux",
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
  "slug": "card-pow-eq-card-pow-card-univ-aux--4059d90a74ed1599da39d741",
  "source": {
    "blob": "3070c4fa56b62827aaca2efb156bd01c1465e143",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1367,
    "line": 1347,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant0e307376d34b48c19c1b970bfcb9f23ebde0c27500d52583148533856718ed52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4059d90a74ed1599da39d741f44e2d0f34c5836748eb8eadd5cc46a236166761",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant0e307376d34b48c19c1b970bfcb9f23ebde0c27500d52583148533856718ed52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6d90f86-9999-a19c-8861-e2265021ec45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1347–1367.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_pow_eq_card_pow_card_univ_aux {f : ℕ → ℕ} (h1 : Monotone f) {B : ℕ} (h2 : ∀ n, f n ≤ B)
    (h3 : ∀ n, f n = f (n + 1) → f (n + 1) = f (n + 2)) : ∀ k, B ≤ k → f k = f B := by
  have key : ∃ n : ℕ, n ≤ B ∧ f n = f (n + 1) := by
    contrapose! h2
    suffices ∀ n : ℕ, n ≤ B + 1 → n ≤ f n by exact ⟨B + 1, this (B + 1) (le_refl (B + 1))⟩
    exact fun n =>
      Nat.rec (fun _ => Nat.zero_le (f 0))
        (fun n ih h =>
          lt_of_le_of_lt (ih (n.le_succ.trans h))
            (lt_of_le_of_ne (h1 n.le_succ) (h2 n (Nat.succ_le_succ_iff.mp h))))
        n
  · obtain ⟨n, hn1, hn2⟩ := key
    replace key : ∀ k : ℕ, f (n + k) = f (n + k + 1) ∧ f (n + k) = f n := fun k =>
      Nat.rec ⟨hn2, rfl⟩ (fun k ih => ⟨h3 _ ih.1, ih.1.symm.trans ih.2⟩) k
    replace key : ∀ k : ℕ, n ≤ k → f k = f n := fun k hk =>
      (congr_arg f (add_tsub_cancel_of_le hk)).symm.trans (key (k - n)).2
    exact fun k hk => (key k (hn1.trans hk)).trans (key B hn1).symm
#align group.card_pow_eq_card_pow_card_univ_aux Group.card_pow_eq_card_pow_card_univ_aux
#align add_group.card_nsmul_eq_card_nsmul_card_univ_aux AddGroup.card_nsmul_eq_card_nsmul_card_univ_aux

end Group
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant0e307376d34b48c19c1b970bfcb9f23ebde0c27500d52583148533856718ed52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant0e307376d34b48c19c1b970bfcb9f23ebde0c27500d52583148533856718ed52.lean#L1347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3070c4fa56b62827aaca2efb156bd01c1465e143` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
