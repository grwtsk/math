# testBit_two_pow_sub_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a01e6a49-1a14-604f-46a4-ca205ab36eea",
  "kind": "theorem",
  "lexical_name": "testBit_two_pow_sub_one",
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
  "slug": "testbit-two-pow-sub-one--909a0d044289e4151ce1bbf2",
  "source": {
    "blob": "9a9fb8263bce655ea8fad97c5570443aa2a583c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 262,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantc718b26d31b9e2472a7cba91b4abbe92a80570fa983d6e327179d19529ccaad2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:909a0d044289e4151ce1bbf2ae7471fac92fa79d13011370da107a9684d7ce2b",
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

Occurrence: `result:a01e6a49-1a14-604f-46a4-ca205ab36eea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem testBit_two_pow_sub_one (n i : Nat) : testBit (2^n-1) i = decide (i < n) := by
  induction i generalizing n with
  | zero =>
    simp [testBit_zero_is_mod2]
    match n with
    | 0 =>
      simp
    | n+1 =>
      simp [Nat.pow_succ, Nat.mul_comm _ 2, two_mul_sub_one, Nat.pow_two_pos]
  | succ i hyp =>
    simp [testBit_succ_div2]
    match n with
    | 0 =>
      simp [pow_zero]
    | n+1 =>
      simp [two_pow_succ_sub_one_div, hyp, Nat.succ_lt_succ_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantc718b26d31b9e2472a7cba91b4abbe92a80570fa983d6e327179d19529ccaad2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantc718b26d31b9e2472a7cba91b4abbe92a80570fa983d6e327179d19529ccaad2.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a9fb8263bce655ea8fad97c5570443aa2a583c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
