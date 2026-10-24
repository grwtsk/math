# succ_dvd_centralBinom

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
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7a0bae97975a3c7580f0b5626a3a9c9edcf04f5fc3b6b98b328e2d836cd29416.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:742adff0-b0c8-9600-dc12-79a4de8d8076",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:74eeab6a-954d-d627-fa61-2bde50e907f4",
  "kind": "theorem",
  "lexical_name": "succ_dvd_centralBinom",
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
  "slug": "succ-dvd-centralbinom--ee71a2f4c933b7e787ac835b",
  "source": {
    "blob": "7b2bb2653d13ebb62b009ace3a7dcd91fd6942b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 129,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant7a0bae97975a3c7580f0b5626a3a9c9edcf04f5fc3b6b98b328e2d836cd29416.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee71a2f4c933b7e787ac835bf209320a8662fb48d2104d773ad3ae0fb84c3d43",
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

Occurrence: `result:74eeab6a-954d-d627-fa61-2bde50e907f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem succ_dvd_centralBinom (n : ℕ) : n + 1 ∣ n.centralBinom := by
  have h_s : (n + 1).coprime (2 * n + 1) := by
    rw [two_mul, add_assoc, coprime_add_self_right, coprime_self_add_left]
    exact coprime_one_left n
  apply h_s.dvd_of_dvd_mul_left
  apply Nat.dvd_of_mul_dvd_mul_left zero_lt_two
  rw [← mul_assoc, ← succ_mul_centralBinom_succ, mul_comm]
  exact mul_dvd_mul_left _ (two_dvd_centralBinom_succ n)
#align nat.succ_dvd_central_binom Nat.succ_dvd_centralBinom

end Nat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant7a0bae97975a3c7580f0b5626a3a9c9edcf04f5fc3b6b98b328e2d836cd29416.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant7a0bae97975a3c7580f0b5626a3a9c9edcf04f5fc3b6b98b328e2d836cd29416.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b2bb2653d13ebb62b009ace3a7dcd91fd6942b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
