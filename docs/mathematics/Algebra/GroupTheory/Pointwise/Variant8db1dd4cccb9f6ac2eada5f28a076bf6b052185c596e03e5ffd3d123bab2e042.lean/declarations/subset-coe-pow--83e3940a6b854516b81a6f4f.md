# subset_coe_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3ce56d5b2f1fa1128a959c1f78c8c6cbba334608",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 127,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8db1dd4cccb9f6ac2eada5f28a076bf6b052185c596e03e5ffd3d123bab2e042.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2550ff15-6b33-dc3a-fab0-ba8bab4f0f79",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2f773251-77ac-6d0e-913d-3f573733e31a",
  "kind": "theorem",
  "lexical_name": "subset_coe_pow",
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
  "slug": "subset-coe-pow--83e3940a6b854516b81a6f4f",
  "source": {
    "blob": "3ce56d5b2f1fa1128a959c1f78c8c6cbba334608",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 127,
    "path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variant8db1dd4cccb9f6ac2eada5f28a076bf6b052185c596e03e5ffd3d123bab2e042.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83e3940a6b854516b81a6f4f9adcee766605e1111eb0083f0e7e8b1ef45057e5",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Pointwise/Variant8db1dd4cccb9f6ac2eada5f28a076bf6b052185c596e03e5ffd3d123bab2e042.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f773251-77ac-6d0e-913d-3f573733e31a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subset_coe_pow (p : SubMulAction R M) : ∀ {n : ℕ}, ((p : Set M) ^ n) ⊆ (p ^ n : Set M)
  | 0 => by
    rw [pow_zero, pow_zero]
    exact subset_coe_one
  | n + 1 => by rw [← Nat.succ_eq_add_one, coe_pow _ n.succ_ne_zero]
#align sub_mul_action.subset_coe_pow SubMulAction.subset_coe_pow

end Monoid

end SubMulAction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Pointwise/Variant8db1dd4cccb9f6ac2eada5f28a076bf6b052185c596e03e5ffd3d123bab2e042.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Pointwise/Variant8db1dd4cccb9f6ac2eada5f28a076bf6b052185c596e03e5ffd3d123bab2e042.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ce56d5b2f1fa1128a959c1f78c8c6cbba334608` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
