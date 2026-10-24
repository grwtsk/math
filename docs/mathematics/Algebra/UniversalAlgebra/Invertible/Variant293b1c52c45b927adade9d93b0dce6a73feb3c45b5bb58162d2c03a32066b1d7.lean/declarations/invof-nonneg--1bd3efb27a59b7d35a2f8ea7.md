# invOf_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "516e20eb221c59e53ce66c47901bbd84a6b68dca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 31,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/293b1c52c45b927adade9d93b0dce6a73feb3c45b5bb58162d2c03a32066b1d7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c814e332-0f3d-2de9-13ba-e30fb3c8c0d2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3614dc24-8d6d-a750-1e75-bac948b9de5a",
  "kind": "theorem",
  "lexical_name": "invOf_nonneg",
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
  "slug": "invof-nonneg--1bd3efb27a59b7d35a2f8ea7",
  "source": {
    "blob": "516e20eb221c59e53ce66c47901bbd84a6b68dca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 31,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Invertible/Variant293b1c52c45b927adade9d93b0dce6a73feb3c45b5bb58162d2c03a32066b1d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1bd3efb27a59b7d35a2f8ea7bb0c830f94339d8a8849e705a6580c6bc6b8cf7b",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Invertible/Variant293b1c52c45b927adade9d93b0dce6a73feb3c45b5bb58162d2c03a32066b1d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3614dc24-8d6d-a750-1e75-bac948b9de5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem invOf_nonneg [Invertible a] : 0 ≤ ⅟ a ↔ 0 ≤ a :=
  haveI : 0 < a * ⅟ a := by simp only [mul_invOf_self, zero_lt_one]
  ⟨fun h => (pos_of_mul_pos_left this h).le, fun h => (pos_of_mul_pos_right this h).le⟩
#align inv_of_nonneg invOf_nonneg

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Invertible/Variant293b1c52c45b927adade9d93b0dce6a73feb3c45b5bb58162d2c03a32066b1d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Invertible/Variant293b1c52c45b927adade9d93b0dce6a73feb3c45b5bb58162d2c03a32066b1d7.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `516e20eb221c59e53ce66c47901bbd84a6b68dca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
