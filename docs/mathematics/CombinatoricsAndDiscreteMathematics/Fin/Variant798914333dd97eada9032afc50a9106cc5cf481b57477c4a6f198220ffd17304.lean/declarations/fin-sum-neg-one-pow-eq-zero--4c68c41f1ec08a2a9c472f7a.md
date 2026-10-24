# Fin.sum_neg_one_pow_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0925d3fd11f19650de9a7f095870f5d1382ff44a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 786,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/79/798914333dd97eada9032afc50a9106cc5cf481b57477c4a6f198220ffd17304.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:914685a8-efb6-7512-683e-8c45d6e04770",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:96ef7f27-cb38-7388-5ce1-19e3597b0fac",
  "kind": "lemma",
  "lexical_name": "Fin.sum_neg_one_pow_eq_zero",
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
  "slug": "fin-sum-neg-one-pow-eq-zero--4c68c41f1ec08a2a9c472f7a",
  "source": {
    "blob": "0925d3fd11f19650de9a7f095870f5d1382ff44a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 804,
    "line": 786,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Fin/Variant798914333dd97eada9032afc50a9106cc5cf481b57477c4a6f198220ffd17304.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c68c41f1ec08a2a9c472f7ad553df44e9ecd9fd4895552036b9ce022ba76b24",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Fin/Variant798914333dd97eada9032afc50a9106cc5cf481b57477c4a6f198220ffd17304.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96ef7f27-cb38-7388-5ce1-19e3597b0fac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 786–804.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Fin.sum_neg_one_pow_eq_zero {α : Type*} [AddCommGroup α]
    {n : ℕ} (d : Fin (n + 2) → α) (r : Fin (n + 1) → α)
    (h_first : d 0 = r 0)
    (h_mid : ∀ i : Fin n, d i.succ.castSucc = r i.castSucc + r i.succ)
    (h_last : d (Fin.last _) = r (Fin.last _)) :
    ∑ i, (-1) ^ i.val • d i = 0 := by
  have h₁ : ∑ i : Fin (n + 2), (-1 : ℤ) ^ i.val • d i =
      d 0 +
      ∑ i : Fin n, (-1 : ℤ) ^ (i.val + 1) • (d (Fin.castSucc i).succ) +
      (-1 : ℤ) ^ (n + 1) • d (Fin.last (n + 1)) := by
    rw [Fin.sum_univ_succ, Fin.sum_univ_castSucc]
    simp [add_assoc]
  have h₂ : ∑ i : Fin n, (-1 : ℤ) ^ (i.val + 1) • (r (Fin.castSucc i) + r (Fin.succ i)) =
      ∑ i : Fin n, (-1 : ℤ) ^ (i.val + 1) • r (Fin.castSucc i) +
      ∑ i : Fin n, (-1 : ℤ) ^ (i.val + 1) • r (Fin.succ i) := by
    simp_rw [zsmul_add, Finset.sum_add_distrib]
  have h₃ := Fin.sum_univ_castSucc fun i ↦ (-1 : ℤ) ^ i.val • r i
  simp_all [Fin.sum_univ_succ, pow_succ']
  grind
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Fin/Variant798914333dd97eada9032afc50a9106cc5cf481b57477c4a6f198220ffd17304.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Fin/Variant798914333dd97eada9032afc50a9106cc5cf481b57477c4a6f198220ffd17304.lean#L786).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0925d3fd11f19650de9a7f095870f5d1382ff44a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
