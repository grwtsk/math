# two_mul_sq_add_one_le_two_pow_two_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "be9a842dfed55f3d81bae1bb0ca2a39e82862f0b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 158,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3acde740ae618c93431f89b06d0b00904e9d6565330667085bb713536e409295.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4c7f970e-c08f-5ce1-8412-2aa06fde3119",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bf417682-6029-cb9d-485a-c80516f06d07",
  "kind": "lemma",
  "lexical_name": "two_mul_sq_add_one_le_two_pow_two_mul",
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
  "slug": "two-mul-sq-add-one-le-two-pow-two-mul--8f042598a23104ade4ecc58b",
  "source": {
    "blob": "be9a842dfed55f3d81bae1bb0ca2a39e82862f0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 158,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant3acde740ae618c93431f89b06d0b00904e9d6565330667085bb713536e409295.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f042598a23104ade4ecc58b912d55d1adb6dcc02c292a8208ecd02dbb9c0cf9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant3acde740ae618c93431f89b06d0b00904e9d6565330667085bb713536e409295.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf417682-6029-cb9d-485a-c80516f06d07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma two_mul_sq_add_one_le_two_pow_two_mul (k : ℕ) : 2 * k ^ 2 + 1 ≤ 2 ^ (2 * k) := by
  obtain rfl | hk : k = 0 ∨ k > 0 := k.eq_zero_or_pos
  · decide
  · have hk0 : 0 < 2 * k ^ 2 := Nat.mul_pos Nat.two_pos (Nat.pow_pos hk)
    calc 2 * k ^ 2
      _ < 2 * k ^ 2 + 2 * k ^ 2 := Nat.lt_add_of_pos_left hk0
      _ = (2 * k) ^ 2 := by rw [Nat.mul_pow, ← Nat.add_mul]
      _ ≤ (2 ^ k) ^ 2 := Nat.pow_le_pow_left (Nat.mul_le_pow (by decide : 2 ≠ 1) _) 2
      _ = 2 ^ (2 * k) := (Nat.pow_mul' _ _ _).symm

end Nat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant3acde740ae618c93431f89b06d0b00904e9d6565330667085bb713536e409295.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant3acde740ae618c93431f89b06d0b00904e9d6565330667085bb713536e409295.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be9a842dfed55f3d81bae1bb0ca2a39e82862f0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
