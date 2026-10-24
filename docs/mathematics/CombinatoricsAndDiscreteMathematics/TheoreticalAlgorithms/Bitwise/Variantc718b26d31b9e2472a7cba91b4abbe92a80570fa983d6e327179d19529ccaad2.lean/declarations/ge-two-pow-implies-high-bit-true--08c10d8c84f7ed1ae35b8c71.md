# ge_two_pow_implies_high_bit_true

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9a9fb8263bce655ea8fad97c5570443aa2a583c0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 145,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c718b26d31b9e2472a7cba91b4abbe92a80570fa983d6e327179d19529ccaad2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:08588406-9ad4-a1f2-7903-92302a93ecd1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f80e84cf-7053-42d1-0987-9e8236644f61",
  "kind": "theorem",
  "lexical_name": "ge_two_pow_implies_high_bit_true",
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
  "slug": "ge-two-pow-implies-high-bit-true--08c10d8c84f7ed1ae35b8c71",
  "source": {
    "blob": "9a9fb8263bce655ea8fad97c5570443aa2a583c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 145,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantc718b26d31b9e2472a7cba91b4abbe92a80570fa983d6e327179d19529ccaad2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08c10d8c84f7ed1ae35b8c71b20bab3db8c9c7d5b66e5c0d062c0673e1145847",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantc718b26d31b9e2472a7cba91b4abbe92a80570fa983d6e327179d19529ccaad2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f80e84cf-7053-42d1-0987-9e8236644f61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ge_two_pow_implies_high_bit_true {x : Nat} (p : x ≥ 2^n) : ∃ i, i ≥ n ∧ testBit x i := by
  induction x using div2Induction generalizing n with
  | ind x hyp =>
    have x_pos : x > 0 := Nat.lt_of_lt_of_le (Nat.pow_two_pos n) p
    have x_ne_zero : x ≠ 0 := Nat.ne_of_gt x_pos
    match n with
    | zero =>
      let ⟨j, jp⟩ := ne_zero_implies_bit_true x_ne_zero
      exact Exists.intro j (And.intro (Nat.zero_le _) jp)
    | succ n =>
      have x_ge_n : x / 2 ≥ 2 ^ n := by
          simp [le_div_iff_mul_le, ← Nat.pow_succ']
          exact p
      have ⟨j, jp⟩ := @hyp x_pos n x_ge_n
      apply Exists.intro (j+1)
      apply And.intro
      case left =>
        exact (Nat.succ_le_succ jp.left)
      case right =>
        simp [testBit_succ_div2 _ j]
        exact jp.right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantc718b26d31b9e2472a7cba91b4abbe92a80570fa983d6e327179d19529ccaad2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantc718b26d31b9e2472a7cba91b4abbe92a80570fa983d6e327179d19529ccaad2.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a9fb8263bce655ea8fad97c5570443aa2a583c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
