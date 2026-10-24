# find_specified_factor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "56be75dd551a76fd35204765f7ea98496de9ac5c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 29,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6fba315e0931e12aa49730574080f4d2d610a5c42620b5c3878b7e2d8dd7da5d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7a1ce55a-aa80-0f05-2962-ee51d57433b2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1058f2b6-1ede-59b5-ad9d-3eee9483888e",
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
  "slug": "find-specified-factor--6e3ad610a5fa3cdbf380f37a",
  "source": {
    "blob": "56be75dd551a76fd35204765f7ea98496de9ac5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 29,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Imo2005Q4/Variant6fba315e0931e12aa49730574080f4d2d610a5c42620b5c3878b7e2d8dd7da5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e3ad610a5fa3cdbf380f37a1d0bff3687c708961d1058763c69ea530716bb9c",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Imo2005Q4/Variant6fba315e0931e12aa49730574080f4d2d610a5c42620b5c3878b7e2d8dd7da5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1058f2b6-1ede-59b5-ad9d-3eee9483888e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem find_specified_factor {p : ℕ} (hp : Nat.Prime p) (hp2 : p ≠ 2) (hp3 : p ≠ 3) :
    ↑p ∣ a (p - 2) := by
  -- Since `p` is neither `2` nor `3`, it is coprime with `2`, `3`, and `6`
  rw [Ne.def, ← Nat.prime_dvd_prime_iff_eq hp (by norm_num), ← Nat.Prime.coprime_iff_not_dvd hp]
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
#align imo2005_q4.find_specified_factor IMO2005Q4.find_specified_factorₓ

end IMO2005Q4

open IMO2005Q4

/-- Main statement:  The only positive integer coprime to all terms of the sequence `a` is `1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Imo2005Q4/Variant6fba315e0931e12aa49730574080f4d2d610a5c42620b5c3878b7e2d8dd7da5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Imo2005Q4/Variant6fba315e0931e12aa49730574080f4d2d610a5c42620b5c3878b7e2d8dd7da5d.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56be75dd551a76fd35204765f7ea98496de9ac5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
