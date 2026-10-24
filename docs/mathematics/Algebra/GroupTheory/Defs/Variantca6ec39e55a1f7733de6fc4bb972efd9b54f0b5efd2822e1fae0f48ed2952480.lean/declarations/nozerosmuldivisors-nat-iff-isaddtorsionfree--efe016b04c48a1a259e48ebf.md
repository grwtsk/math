# noZeroSMulDivisors_nat_iff_isAddTorsionFree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "edf4e68c70c2fb534da4d77b205d7e0a7d8500b1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 80,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/ca6ec39e55a1f7733de6fc4bb972efd9b54f0b5efd2822e1fae0f48ed2952480.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8bda2395-0623-6092-7654-478c891b7782",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9e151a03-d706-623f-bea3-72ad1c41b660",
  "kind": "lemma",
  "lexical_name": "noZeroSMulDivisors_nat_iff_isAddTorsionFree",
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
  "slug": "nozerosmuldivisors-nat-iff-isaddtorsionfree--efe016b04c48a1a259e48ebf",
  "source": {
    "blob": "edf4e68c70c2fb534da4d77b205d7e0a7d8500b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 80,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variantca6ec39e55a1f7733de6fc4bb972efd9b54f0b5efd2822e1fae0f48ed2952480.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:efe016b04c48a1a259e48ebff9d88260f53d453e3754ef0dcd3e78b2ebbf1cc9",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variantca6ec39e55a1f7733de6fc4bb972efd9b54f0b5efd2822e1fae0f48ed2952480.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e151a03-d706-623f-bea3-72ad1c41b660`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma noZeroSMulDivisors_nat_iff_isAddTorsionFree [AddCommGroup G] :
    NoZeroSMulDivisors ℕ G ↔ IsAddTorsionFree G where
  mp _ := by
    refine ⟨fun n hn a b hab ↦ ?_⟩
    simp only [← sub_eq_zero (a := n • a), ← nsmul_sub] at hab
    simpa [sub_eq_zero] using (smul_eq_zero_iff_right hn).1 hab
  mpr _ := inferInstance

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variantca6ec39e55a1f7733de6fc4bb972efd9b54f0b5efd2822e1fae0f48ed2952480.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variantca6ec39e55a1f7733de6fc4bb972efd9b54f0b5efd2822e1fae0f48ed2952480.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edf4e68c70c2fb534da4d77b205d7e0a7d8500b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
