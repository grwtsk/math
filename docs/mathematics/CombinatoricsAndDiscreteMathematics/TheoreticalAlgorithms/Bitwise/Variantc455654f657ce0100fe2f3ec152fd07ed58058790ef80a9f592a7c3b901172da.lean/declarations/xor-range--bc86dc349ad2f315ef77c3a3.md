# xor_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c0ffaf087eb538b152576013f30684bab36efc1b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 333,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c455654f657ce0100fe2f3ec152fd07ed58058790ef80a9f592a7c3b901172da.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ae02e9ad-c1ec-e239-69d3-1103c03928d1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:39b5b038-8957-f990-5e3c-a219a7bb64e4",
  "kind": "theorem",
  "lexical_name": "xor_range",
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
  "slug": "xor-range--bc86dc349ad2f315ef77c3a3",
  "source": {
    "blob": "c0ffaf087eb538b152576013f30684bab36efc1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 354,
    "line": 333,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantc455654f657ce0100fe2f3ec152fd07ed58058790ef80a9f592a7c3b901172da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc86dc349ad2f315ef77c3a34aa9c56b2888dc448ca656513a89ccfe5115f6fd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantc455654f657ce0100fe2f3ec152fd07ed58058790ef80a9f592a7c3b901172da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39b5b038-8957-f990-5e3c-a219a7bb64e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–354.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xor_range (n : ℕ) : (List.range (n + 1)).foldl (· ^^^ ·) 0 =
    match Fin.ofNat 4 n with | 0 => n | 1 => 1 | 2 => n + 1 | 3 => 0 := by
  induction n with
  | zero => simp
  | succ n ih =>
    nth_rw 3 [← show Fin.ofNat 4 1 = (1 : ℕ) from Fin.val_ofNat ..]
    rw [List.range_succ, List.foldl_append, ih, ← Fin.ofNat_add, List.foldl_cons, List.foldl_nil]
    match h : Fin.ofNat 4 n with
    | 0 =>
      rw [Fin.zero_add, ← xor_one_of_even <| even_iff.mpr ?_, xor_xor_cancel_left]
      rw [← @mod_mod_of_dvd _ 4 _ <| by simp, ← Fin.val_ofNat 4, h]
      rfl
    | 1 =>
      rw [Nat.xor_comm]
      refine xor_one_of_even <| even_iff.mpr ?_
      rw [add_mod, ← @mod_mod_of_dvd _ 4 n <| by simp, ← Fin.val_ofNat 4, h]
      rfl
    | 2 =>
      apply Nat.xor_self
    | 3 =>
      apply zero_xor

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantc455654f657ce0100fe2f3ec152fd07ed58058790ef80a9f592a7c3b901172da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantc455654f657ce0100fe2f3ec152fd07ed58058790ef80a9f592a7c3b901172da.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0ffaf087eb538b152576013f30684bab36efc1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
