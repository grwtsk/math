# _root_.Set.smul_mem_center

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c10a318b8acb608f70b04e159e10bc19963c28a9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1059,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3eb6e0a44735c3075462d05389b4c63fe8da58e95f49e511043f3b7f8869fddd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c540f1b7-2841-7b57-718b-7f2ede755895",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:33729735-2683-d4be-7e1a-97cad960faf6",
  "kind": "theorem",
  "lexical_name": "_root_.Set.smul_mem_center",
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
  "slug": "root-set-smul-mem-center--2cd95793072546712a75cdbe",
  "source": {
    "blob": "c10a318b8acb608f70b04e159e10bc19963c28a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1070,
    "line": 1059,
    "path": "GRWTSK/Algebra/LinearAlgebra/NonUnitalSubalgebra/Variant3eb6e0a44735c3075462d05389b4c63fe8da58e95f49e511043f3b7f8869fddd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2cd95793072546712a75cdbe8197d66094edc6bfd02e81a9b922d9f7e81a2e78",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/NonUnitalSubalgebra/Variant3eb6e0a44735c3075462d05389b4c63fe8da58e95f49e511043f3b7f8869fddd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33729735-2683-d4be-7e1a-97cad960faf6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1059–1070.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Set.smul_mem_center (r : R) {a : A} (ha : a ∈ Set.center A) :
    r • a ∈ Set.center A where
  comm b := by rw [mul_smul_comm, smul_mul_assoc, ha.comm]
  left_assoc b c := by rw [smul_mul_assoc, smul_mul_assoc, smul_mul_assoc, ha.left_assoc]
  mid_assoc b c := by
    rw [mul_smul_comm, smul_mul_assoc, smul_mul_assoc, mul_smul_comm, ha.mid_assoc]
  right_assoc b c := by
    rw [mul_smul_comm, mul_smul_comm, mul_smul_comm, ha.right_assoc]

variable (R A) in
/-- The center of a non-unital algebra is the set of elements which commute with every element.
They form a non-unital subalgebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/NonUnitalSubalgebra/Variant3eb6e0a44735c3075462d05389b4c63fe8da58e95f49e511043f3b7f8869fddd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/NonUnitalSubalgebra/Variant3eb6e0a44735c3075462d05389b4c63fe8da58e95f49e511043f3b7f8869fddd.lean#L1059).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c10a318b8acb608f70b04e159e10bc19963c28a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
