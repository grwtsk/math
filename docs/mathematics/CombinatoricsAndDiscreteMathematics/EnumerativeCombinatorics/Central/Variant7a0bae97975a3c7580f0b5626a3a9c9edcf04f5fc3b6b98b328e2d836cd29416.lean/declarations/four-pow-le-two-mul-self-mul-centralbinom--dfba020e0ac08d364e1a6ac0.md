# four_pow_le_two_mul_self_mul_centralBinom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b2bb2653d13ebb62b009ace3a7dcd91fd6942b1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 103,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7a0bae97975a3c7580f0b5626a3a9c9edcf04f5fc3b6b98b328e2d836cd29416.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e78b7425-7853-3e0a-764b-9aa35bae6aeb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fb0b7222-1133-e438-aeb3-e3c4606fdb82",
  "kind": "theorem",
  "lexical_name": "four_pow_le_two_mul_self_mul_centralBinom",
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
  "slug": "four-pow-le-two-mul-self-mul-centralbinom--dfba020e0ac08d364e1a6ac0",
  "source": {
    "blob": "7b2bb2653d13ebb62b009ace3a7dcd91fd6942b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 103,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant7a0bae97975a3c7580f0b5626a3a9c9edcf04f5fc3b6b98b328e2d836cd29416.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfba020e0ac08d364e1a6ac0529efb4ffe0bfd89343f061e535bdcc9744185b9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant7a0bae97975a3c7580f0b5626a3a9c9edcf04f5fc3b6b98b328e2d836cd29416.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb0b7222-1133-e438-aeb3-e3c4606fdb82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem four_pow_le_two_mul_self_mul_centralBinom :
    ∀ (n : ℕ) (_ : 0 < n), 4 ^ n ≤ 2 * n * centralBinom n
  | 0, pr => (Nat.not_lt_zero _ pr).elim
  | 1, _ => by norm_num [centralBinom, choose]
  | 2, _ => by norm_num [centralBinom, choose]
  | 3, _ => by norm_num [centralBinom, choose]
  | n + 4, _ =>
    calc
      4 ^ (n+4) ≤ (n+4) * centralBinom (n+4) := (four_pow_lt_mul_centralBinom _ le_add_self).le
      _ ≤ 2 * (n+4) * centralBinom (n+4) := by
        rw [mul_assoc]; refine' le_mul_of_pos_left zero_lt_two
#align nat.four_pow_le_two_mul_self_mul_central_binom Nat.four_pow_le_two_mul_self_mul_centralBinom

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant7a0bae97975a3c7580f0b5626a3a9c9edcf04f5fc3b6b98b328e2d836cd29416.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant7a0bae97975a3c7580f0b5626a3a9c9edcf04f5fc3b6b98b328e2d836cd29416.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b2bb2653d13ebb62b009ace3a7dcd91fd6942b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
