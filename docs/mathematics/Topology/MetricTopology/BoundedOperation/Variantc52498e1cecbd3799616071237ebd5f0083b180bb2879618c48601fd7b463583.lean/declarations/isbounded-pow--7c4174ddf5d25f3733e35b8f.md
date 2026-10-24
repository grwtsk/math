# isBounded_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "80c7f008e3460207e09f6b051ddb1bae27de4ffa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 106,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c52498e1cecbd3799616071237ebd5f0083b180bb2879618c48601fd7b463583.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:010809ba-11e5-2b0b-c432-d7b4b8f971af",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:59c16a2f-23f5-3874-8f8c-170079d95d82",
  "kind": "lemma",
  "lexical_name": "isBounded_pow",
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
  "slug": "isbounded-pow--7c4174ddf5d25f3733e35b8f",
  "source": {
    "blob": "80c7f008e3460207e09f6b051ddb1bae27de4ffa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 106,
    "path": "GRWTSK/Topology/MetricTopology/BoundedOperation/Variantc52498e1cecbd3799616071237ebd5f0083b180bb2879618c48601fd7b463583.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c4174ddf5d25f3733e35b8f3e38fb4e49f4ed383564e415e94ef8c4d98c5650",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/BoundedOperation/Variantc52498e1cecbd3799616071237ebd5f0083b180bb2879618c48601fd7b463583.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59c16a2f-23f5-3874-8f8c-170079d95d82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isBounded_pow {R : Type*} [Bornology R] [Monoid R] [BoundedMul R] {s : Set R}
    (s_bdd : Bornology.IsBounded s) (n : ℕ) :
    Bornology.IsBounded ((fun x ↦ x ^ n) '' s) := by
  induction n with
  | zero =>
    by_cases s_empty : s = ∅
    · simp [s_empty]
    simp_rw [← nonempty_iff_ne_empty] at s_empty
    simp [s_empty]
  | succ n hn =>
    have obs : ((fun x ↦ x ^ (n + 1)) '' s) ⊆ ((fun x ↦ x ^ n) '' s) * s := by
      intro x hx
      simp only [mem_image] at hx
      obtain ⟨y, y_in_s, ypow_eq_x⟩ := hx
      rw [← ypow_eq_x, pow_succ y n]
      apply Set.mul_mem_mul _ y_in_s
      use y
    exact (isBounded_mul hn s_bdd).subset obs

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/BoundedOperation/Variantc52498e1cecbd3799616071237ebd5f0083b180bb2879618c48601fd7b463583.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/BoundedOperation/Variantc52498e1cecbd3799616071237ebd5f0083b180bb2879618c48601fd7b463583.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80c7f008e3460207e09f6b051ddb1bae27de4ffa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
