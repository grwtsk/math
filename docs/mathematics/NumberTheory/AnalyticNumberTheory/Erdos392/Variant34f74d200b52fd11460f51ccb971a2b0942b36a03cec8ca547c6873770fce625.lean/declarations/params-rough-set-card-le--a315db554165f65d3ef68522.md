# Params.rough_set_card_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f920001904e0a69cdcc5a1042bc956cb81fd55a8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1749,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d03dc920-505e-151a-9956-05f9423d2b08",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:caca97b8-417b-61bf-a0f8-f613f1dbb64b",
  "kind": "lemma",
  "lexical_name": "Params.rough_set_card_le",
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
  "slug": "params-rough-set-card-le--a315db554165f65d3ef68522",
  "source": {
    "blob": "f920001904e0a69cdcc5a1042bc956cb81fd55a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1777,
    "line": 1749,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a315db554165f65d3ef68522cab36a59e390555a9a28109c73b0091f678b6eb0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:caca97b8-417b-61bf-a0f8-f613f1dbb64b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1749–1777.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Params.rough_set_card_le (P : Params) :
    (rough_set P).card ≤ (Nat.primeCounting P.n) * P.L := by
  have h_struct : ∀ m ∈ rough_set P,
      ∃ q k, q.Prime ∧ q ≥ P.n / P.L ∧ k ≤ P.L ∧ m = q * k ∧ m.factorization q = 1 :=
    fun m hm => rough_set_structure P m hm
  have h_subset : rough_set P ⊆ Finset.image (fun p : ℕ × ℕ => p.1 * p.2)
      (Finset.product (Finset.filter Nat.Prime (Finset.Icc 1 P.n)) (Finset.Icc 1 P.L)) := by
    intro m hm
    obtain ⟨q, k, hq, hq', hk, rfl, _⟩ := h_struct m hm
    exact Finset.mem_image.mpr ⟨(q, k), Finset.mem_product.mpr
      ⟨Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr ⟨hq.pos, by
        have := Finset.mem_Ico.mp (Finset.mem_filter.mp hm |>.1)
        nlinarith [Nat.pos_of_ne_zero (show k ≠ 0 from by aesop)]⟩, hq⟩,
      Finset.mem_Icc.mpr ⟨Nat.pos_of_ne_zero (by aesop), hk⟩⟩, rfl⟩
  refine le_trans (Finset.card_le_card h_subset) (le_trans Finset.card_image_le ?_)
  erw [Finset.card_product, Nat.primeCounting, Nat.primeCounting', Nat.count_eq_card_filter_range]
  simp only [Finset.range_eq_Ico, Nat.card_Icc, add_tsub_cancel_right]
  have h1 : Finset.filter Nat.Prime (Finset.Icc 1 P.n) =
      Finset.filter Nat.Prime (Finset.Icc 0 P.n) := by
    ext p
    simp only [Finset.mem_filter, Finset.mem_Icc]
    constructor <;> intro ⟨⟨hl, hr⟩, hp⟩
    · exact ⟨⟨Nat.zero_le _, hr⟩, hp⟩
    · exact ⟨⟨hp.one_le, hr⟩, hp⟩
  have h2 : Finset.filter Nat.Prime (Finset.Ico 0 (P.n + 1)) =
      Finset.filter Nat.Prime (Finset.Icc 0 P.n) := by congr 1
  rw [h1, h2, mul_comm]

/-- For `m ∈ rough_set` and `p ≤ L`, `vₚ(m) = vₚ(k)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean#L1749).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f920001904e0a69cdcc5a1042bc956cb81fd55a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
