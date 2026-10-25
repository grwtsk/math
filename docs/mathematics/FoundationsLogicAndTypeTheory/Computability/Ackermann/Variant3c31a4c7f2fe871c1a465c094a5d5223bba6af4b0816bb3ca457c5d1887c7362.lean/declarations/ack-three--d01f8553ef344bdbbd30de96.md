# ack_three

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ecc1838c44e85d8778030b873fa1a37cb5473800",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 96,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e2039a34-3edf-7e1c-5e28-5ce177eca464",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:28b3c066-1a2d-63f9-ef8d-af441efdcc64",
  "kind": "theorem",
  "lexical_name": "ack_three",
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
  "slug": "ack-three--d01f8553ef344bdbbd30de96",
  "source": {
    "blob": "ecc1838c44e85d8778030b873fa1a37cb5473800",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 96,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d01f8553ef344bdbbd30de9684732985dbb313daa86a7c9670d00bc05c992c24",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28b3c066-1a2d-63f9-ef8d-af441efdcc64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ack_three (n : ℕ) : ack 3 n = 2 ^ (n + 3) - 3 := by
  induction' n with n IH
  · rfl
  · rw [ack_succ_succ, IH, ack_two, Nat.succ_add, Nat.pow_succ 2 (n + 3), mul_comm _ 2,
        Nat.mul_sub_left_distrib, ← Nat.sub_add_comm, two_mul 3, Nat.add_sub_add_right]
    have H : 2 * 3 ≤ 2 * 2 ^ 3 := by norm_num
    apply H.trans
    simp [pow_le_pow]
#align ack_three ack_three

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecc1838c44e85d8778030b873fa1a37cb5473800` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
