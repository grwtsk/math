# pow_mem_of_pow_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "32a392ff7bf92ad7c68a9301d9dc5d6961d531b1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/65/656d5aabba0ca74ab1fc906dc9cdf93b9fc6c6b25f0f155b58f261ec461e80d1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:03d5661a-1033-2dcb-0207-4acf4b182e78",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:92bd6199-b27f-3b47-a7f7-5ac822183ca5",
  "kind": "theorem",
  "lexical_name": "pow_mem_of_pow_mem",
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
  "slug": "pow-mem-of-pow-mem--81cd5c9a82cff3d93c12b49f",
  "source": {
    "blob": "32a392ff7bf92ad7c68a9301d9dc5d6961d531b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 85,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant656d5aabba0ca74ab1fc906dc9cdf93b9fc6c6b25f0f155b58f261ec461e80d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81cd5c9a82cff3d93c12b49fa4c8a96ec7f9eaa5fca9eee5b7666cbb37ccf886",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variant656d5aabba0ca74ab1fc906dc9cdf93b9fc6c6b25f0f155b58f261ec461e80d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92bd6199-b27f-3b47-a7f7-5ac822183ca5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pow_mem_of_pow_mem {m n : ℕ} (ha : a ^ m ∈ I) (h : m ≤ n) : a ^ n ∈ I := by
  rw [← Nat.add_sub_of_le h, add_comm, pow_add]
  exact I.mul_mem_left _ ha

end Ideal

/-- For two elements `m` and `m'` in an `R`-module `M`, the set of elements `r : R` with
equal scalar product with `m` and `m'` is an ideal of `R`. If `M` is a group, this coincides
with the kernel of `LinearMap.toSpanSingleton R M (m - m')`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variant656d5aabba0ca74ab1fc906dc9cdf93b9fc6c6b25f0f155b58f261ec461e80d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variant656d5aabba0ca74ab1fc906dc9cdf93b9fc6c6b25f0f155b58f261ec461e80d1.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32a392ff7bf92ad7c68a9301d9dc5d6961d531b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
