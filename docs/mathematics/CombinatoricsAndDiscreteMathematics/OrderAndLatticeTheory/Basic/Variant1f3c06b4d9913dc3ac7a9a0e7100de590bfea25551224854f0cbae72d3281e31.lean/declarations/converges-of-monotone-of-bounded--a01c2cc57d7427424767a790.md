# converges_of_monotone_of_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1accd520ff42418ef07f5e2015e2ee7129f58f58",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 719,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1f3c06b4d9913dc3ac7a9a0e7100de590bfea25551224854f0cbae72d3281e31.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:238432e3-63ab-f02d-ef7e-7c252e1c682c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b76ae35d-d557-6649-f03d-08016d208a01",
  "kind": "lemma",
  "lexical_name": "converges_of_monotone_of_bounded",
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
  "slug": "converges-of-monotone-of-bounded--a01c2cc57d7427424767a790",
  "source": {
    "blob": "1accd520ff42418ef07f5e2015e2ee7129f58f58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 735,
    "line": 719,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant1f3c06b4d9913dc3ac7a9a0e7100de590bfea25551224854f0cbae72d3281e31.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a01c2cc57d7427424767a79014c0acd1f8f26090bb3e0938d512ef14abcf1086",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant1f3c06b4d9913dc3ac7a9a0e7100de590bfea25551224854f0cbae72d3281e31.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b76ae35d-d557-6649-f03d-08016d208a01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 719–735.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma converges_of_monotone_of_bounded {f : ℕ → ℕ} (mono_f : Monotone f)
    {c : ℕ} (hc : ∀ n, f n ≤ c) : ∃ b N, ∀ n ≥ N, f n = b := by
  induction c with
  | zero => use 0, 0, fun n _ ↦ Nat.eq_zero_of_le_zero (hc n)
  | succ c ih =>
    by_cases h : ∀ n, f n ≤ c
    · exact ih h
    · push_neg at h; obtain ⟨N, hN⟩ := h
      replace hN : f N = c + 1 := by specialize hc N; omega
      use c + 1, N; intro n hn
      specialize mono_f hn; specialize hc n; omega

@[deprecated (since := "2024-11-27")]
alias Group.card_pow_eq_card_pow_card_univ_aux := Nat.stabilises_of_monotone

@[deprecated (since := "2024-11-27")]
alias Group.card_nsmul_eq_card_nsmulpow_card_univ_aux := Nat.stabilises_of_monotone
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant1f3c06b4d9913dc3ac7a9a0e7100de590bfea25551224854f0cbae72d3281e31.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant1f3c06b4d9913dc3ac7a9a0e7100de590bfea25551224854f0cbae72d3281e31.lean#L719).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1accd520ff42418ef07f5e2015e2ee7129f58f58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
