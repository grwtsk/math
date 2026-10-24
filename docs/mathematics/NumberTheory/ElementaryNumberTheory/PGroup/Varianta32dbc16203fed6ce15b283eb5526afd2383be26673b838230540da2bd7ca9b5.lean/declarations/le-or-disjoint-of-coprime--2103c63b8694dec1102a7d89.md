# le_or_disjoint_of_coprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f9553a8a9e6494ed976482ce11813a26519cba29",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 312,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:58f48531-d95b-006f-fdff-c697c8d2d5c1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:30dc3229-5a54-7ea5-17d3-dd8db8cb4c78",
  "kind": "theorem",
  "lexical_name": "le_or_disjoint_of_coprime",
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
  "slug": "le-or-disjoint-of-coprime--2103c63b8694dec1102a7d89",
  "source": {
    "blob": "f9553a8a9e6494ed976482ce11813a26519cba29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 312,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2103c63b8694dec1102a7d8925906c53907b9494f17a80d702204ebd6530c1dd",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30dc3229-5a54-7ea5-17d3-dd8db8cb4c78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 312–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_or_disjoint_of_coprime [hp : Fact p.Prime] {P : Subgroup G} (hP : IsPGroup p P)
    {H : Subgroup G} [H.Normal] (h_cop : (Nat.card H).Coprime H.index) :
    P ≤ H ∨ Disjoint H P := by
  by_cases h1 : Nat.card H = 0
  · rw [h1, Nat.coprime_zero_left, Subgroup.index_eq_one] at h_cop
    rw [h_cop]
    exact Or.inl le_top
  by_cases h2 : H.index = 0
  · rw [h2, Nat.coprime_zero_right, Subgroup.card_eq_one] at h_cop
    rw [h_cop]
    exact Or.inr disjoint_bot_left
  have : Finite G := by
    apply Nat.finite_of_card_ne_zero
    rw [← H.card_mul_index]
    exact mul_ne_zero h1 h2
  have h3 : (Nat.card H).Coprime (Nat.card P) ∨ H.index.Coprime (Nat.card P) := by
    obtain ⟨k, hk⟩ := hP.exists_card_eq
    refine hk ▸ Or.imp hp.out.coprime_pow_of_not_dvd hp.out.coprime_pow_of_not_dvd ?_
    contrapose! h_cop
    exact Nat.Prime.not_coprime_iff_dvd.mpr ⟨p, hp.out, h_cop⟩
  refine h3.symm.imp (fun h4 ↦ ?_) (fun h4 ↦ ?_)
  · rw [← Subgroup.relindex_eq_one]
    exact Nat.eq_one_of_dvd_coprimes h4 (H.relindex_dvd_index_of_normal P)
      (Subgroup.relindex_dvd_card H P)
  · exact disjoint_iff.mpr (Subgroup.inf_eq_bot_of_coprime h4)

section P2comm

variable [Fact p.Prime] {n : ℕ}

open Subgroup

/-- The cardinality of the `center` of a `p`-group is `p ^ k` where `k` is positive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PGroup/Varianta32dbc16203fed6ce15b283eb5526afd2383be26673b838230540da2bd7ca9b5.lean#L312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9553a8a9e6494ed976482ce11813a26519cba29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
