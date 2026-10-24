# toInt_ushiftRight_of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "05610358a70a3b8d66b81c396a7fc44a13f11d3e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2137,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5d476ba64c34585da5ebe265d507f880f256e64cdfb596ff67e404585cf29495.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:072391f6-7ec9-1ed2-8bb6-bf266a6ebeab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ccea6881-617a-d0b3-6000-102b5a3bea7e",
  "kind": "theorem",
  "lexical_name": "toInt_ushiftRight_of_lt",
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
  "slug": "toint-ushiftright-of-lt--9d2ddc7474686433ca6f29e6",
  "source": {
    "blob": "05610358a70a3b8d66b81c396a7fc44a13f11d3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2160,
    "line": 2137,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5d476ba64c34585da5ebe265d507f880f256e64cdfb596ff67e404585cf29495.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d2ddc7474686433ca6f29e6660c8995306b937e055816ea90ce50c43dae6dc3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5d476ba64c34585da5ebe265d507f880f256e64cdfb596ff67e404585cf29495.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ccea6881-617a-d0b3-6000-102b5a3bea7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2137–2160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toInt_ushiftRight_of_lt {x : BitVec w} {n : Nat} (hn : 0 < n) :
    (x >>> n).toInt = x.toNat >>> n := by
  rw [toInt_eq_toNat_cond]
  simp only [toNat_ushiftRight, ite_eq_left_iff, Nat.not_lt]
  intro h
  by_cases hn : n ≤ w
  · have h1 := Nat.mul_lt_mul_of_pos_left (toNat_ushiftRight_lt x n hn) Nat.two_pos
    simp only [toNat_ushiftRight, Nat.zero_lt_succ, Nat.mul_lt_mul_left] at h1
    have : 2 ^ (w - n).succ ≤ 2^ w := Nat.pow_le_pow_of_le (by decide) (by omega)
    have := show 2 * x.toNat >>> n < 2 ^ w by
      omega
    omega
  · have : x.toNat >>> n = 0 := by
      apply Nat.shiftRight_eq_zero
      have : 2^w ≤ 2^n := Nat.pow_le_pow_of_le (by decide) (by omega)
      omega
    simp [this] at h

/--
Unsigned shift right by at least one bit makes the interpretations of the bitvector as an `Int` or `Nat` agree,
because it makes the value of the bitvector less than or equal to `2^(w-1)`.
In the case when `n = 0`, then the shift right value equals the integer interpretation.
-/
@[simp, grind =]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5d476ba64c34585da5ebe265d507f880f256e64cdfb596ff67e404585cf29495.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5d476ba64c34585da5ebe265d507f880f256e64cdfb596ff67e404585cf29495.lean#L2137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05610358a70a3b8d66b81c396a7fc44a13f11d3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
