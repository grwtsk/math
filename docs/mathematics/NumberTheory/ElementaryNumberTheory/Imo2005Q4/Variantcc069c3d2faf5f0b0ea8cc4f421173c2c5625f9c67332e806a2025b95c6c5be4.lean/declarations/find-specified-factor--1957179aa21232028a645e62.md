# find_specified_factor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9d02a2c9437af5e3fc832ef4710e06046f53e268",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 26,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/cc069c3d2faf5f0b0ea8cc4f421173c2c5625f9c67332e806a2025b95c6c5be4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:31adac75-dcfd-11c1-21d8-9282ee1b4b9a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:14ad8f41-5fb7-d69a-d491-c6ded5806bc4",
  "kind": "theorem",
  "lexical_name": "find_specified_factor",
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
  "slug": "find-specified-factor--1957179aa21232028a645e62",
  "source": {
    "blob": "9d02a2c9437af5e3fc832ef4710e06046f53e268",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 26,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Imo2005Q4/Variantcc069c3d2faf5f0b0ea8cc4f421173c2c5625f9c67332e806a2025b95c6c5be4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1957179aa21232028a645e62257330fe0f5b7f9d01f5046fc22313c03d432555",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Imo2005Q4/Variantcc069c3d2faf5f0b0ea8cc4f421173c2c5625f9c67332e806a2025b95c6c5be4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14ad8f41-5fb7-d69a-d491-c6ded5806bc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem find_specified_factor {p : ℕ} (hp : Nat.Prime p) (hp2 : p ≠ 2) (hp3 : p ≠ 3) :
    ↑p ∣ a (p - 2) := by
  -- Since `p` is neither `2` nor `3`, it is coprime with `2`, `3`, and `6`
  rw [Ne, ← Nat.prime_dvd_prime_iff_eq hp (by decide), ← Nat.Prime.coprime_iff_not_dvd hp]
    at hp2 hp3
  have : Int.gcd p 6 = 1 := Nat.coprime_mul_iff_right.2 ⟨hp2, hp3⟩
  -- Nat arithmetic needed to deal with powers
  have hp' : p - 1 = p - 2 + 1 := Eq.symm <| Nat.succ_pred <| (tsub_pos_of_lt hp.one_lt).ne'
  -- Thus it suffices to show that `6 * a (p - 2) ≡ 0 [ZMOD p]`
  rw [← Int.modEq_zero_iff_dvd, ← Int.ediv_one p, ← Nat.cast_one, ← this]
  refine Int.ModEq.cancel_left_div_gcd (Nat.cast_pos.2 hp.pos) ?_
  calc
    6 * a (p - 2) = 3 * 2 ^ (p - 1) + 2 * 3 ^ (p - 1) + (2 * 3) ^ (p - 1) - 6 := by
      simp only [a, hp', pow_succ']; ring
    _ ≡ 3 * 1 + 2 * 1 + 1 - 6 [ZMOD p] := by
      gcongr <;> apply Int.ModEq.pow_card_sub_one_eq_one hp <;>
        rwa [Int.isCoprime_iff_gcd_eq_one, Int.gcd_comm]
    _ = 0 := rfl

end IMO2005Q4

open IMO2005Q4

/-- Main statement:  The only positive integer coprime to all terms of the sequence `a` is `1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Imo2005Q4/Variantcc069c3d2faf5f0b0ea8cc4f421173c2c5625f9c67332e806a2025b95c6c5be4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Imo2005Q4/Variantcc069c3d2faf5f0b0ea8cc4f421173c2c5625f9c67332e806a2025b95c6c5be4.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d02a2c9437af5e3fc832ef4710e06046f53e268` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
