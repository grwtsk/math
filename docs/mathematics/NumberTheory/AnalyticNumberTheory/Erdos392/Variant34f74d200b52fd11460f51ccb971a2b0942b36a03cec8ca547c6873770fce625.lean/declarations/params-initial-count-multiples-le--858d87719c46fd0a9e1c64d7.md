# Params.initial.count_multiples_le

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
      "line": 1090,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f756317c-419d-a096-a157-b9631a366901",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d6f24f67-5284-b05f-bd4a-09a1f373dec1",
  "kind": "lemma",
  "lexical_name": "Params.initial.count_multiples_le",
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
  "slug": "params-initial-count-multiples-le--858d87719c46fd0a9e1c64d7",
  "source": {
    "blob": "f920001904e0a69cdcc5a1042bc956cb81fd55a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1111,
    "line": 1090,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:858d87719c46fd0a9e1c64d726917423d00550e9a6da281bd5fc91aebb8c07dd",
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

Occurrence: `result:d6f24f67-5284-b05f-bd4a-09a1f373dec1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1090–1111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Params.initial.count_multiples_le (A B p : ℕ) (hp : p > 0) :
    (Finset.filter (p ∣ ·) (Finset.Ico A B)).card ≤ (B - A + p - 1) / p := by
  have hsub : Finset.filter (p ∣ ·) (.Ico A B) ⊆ image (p * ·) (.Ico ((A + p - 1) / p)
      ((B + p - 1) / p)) := fun m hm ↦ by
    obtain ⟨k, hk⟩ : ∃ k, m = p * k := by aesop
    simp only [gt_iff_lt, Finset.mem_filter, Finset.mem_Ico, mem_image] at *
    exact ⟨k, ⟨le_of_lt_succ <| Nat.div_lt_of_lt_mul <|
      by rw [tsub_lt_iff_left] <;> grind,
      lt_of_succ_le <| le_div_iff_mul_le hp |>.2 <|
        by rw [Nat.le_sub_iff_add_le] <;> grind⟩, hk.symm⟩
  refine (card_le_card hsub).trans ?_
  norm_num [card_image_of_injective _ fun x y hxy ↦ mul_left_cancel₀ hp.ne' hxy, card_Ico]
  rcases le_total B A with h | h <;> simp_all only [div_le_iff_le_mul_add_pred, tsub_le_iff_right]
  · rcases p with _ | _ | p <;> simp_all +arith [Nat.div_eq_of_lt]
    linarith [Nat.div_add_mod (A + p + 1) (p + 2), Nat.mod_lt (A + p + 1) (by grind : p + 2 > 0)]
  · linarith [div_add_mod (B - A + p - 1) p, mod_lt (B - A + p - 1) hp,
      div_add_mod (A + p - 1) p, mod_lt (A + p - 1) hp, Nat.sub_add_cancel h,
      Nat.sub_add_cancel (by grind : 1 ≤ p), Nat.sub_add_cancel (by grind : 1 ≤ B - A + p),
      Nat.sub_add_cancel (by grind : 1 ≤ A + p)]

/-- An auxiliary bound `M · ⌈(n/M)/p⌉ ≤ ⌊n/p⌋ + M`, where the ceiling is computed as
`(n/M + p - 1) / p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean#L1090).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f920001904e0a69cdcc5a1042bc956cb81fd55a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
