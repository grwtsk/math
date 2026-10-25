# mul_eq_max_of_aleph0_le_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "71ae43bb5b209b1ddb4d066ea1f0babd9b232379",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 623,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4d67836c369a236359fc7c95c493613c23c7ee0a23d4e8ccbef36c83c0c3adce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:19b8f230-8674-a0c8-e3bc-d6c31a527d6b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1b108c53-84ba-1599-9df0-7638c4f64f99",
  "kind": "theorem",
  "lexical_name": "mul_eq_max_of_aleph0_le_right",
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
  "slug": "mul-eq-max-of-aleph0-le-right--43e5ff2b5d8a85fdf85c6e7e",
  "source": {
    "blob": "71ae43bb5b209b1ddb4d066ea1f0babd9b232379",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 628,
    "line": 623,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant4d67836c369a236359fc7c95c493613c23c7ee0a23d4e8ccbef36c83c0c3adce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43e5ff2b5d8a85fdf85c6e7e7f2ae64639fadf62b8b733d5f28f6fa7429016c4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant4d67836c369a236359fc7c95c493613c23c7ee0a23d4e8ccbef36c83c0c3adce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b108c53-84ba-1599-9df0-7638c4f64f99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 623–628.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_eq_max_of_aleph0_le_right {a b : Cardinal} (h' : a ≠ 0) (h : ℵ₀ ≤ b) :
    a * b = max a b := by
  rw [mul_comm, max_comm]
  exact mul_eq_max_of_aleph0_le_left h h'
#align cardinal.mul_eq_max_of_aleph_0_le_right Cardinal.mul_eq_max_of_aleph0_le_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant4d67836c369a236359fc7c95c493613c23c7ee0a23d4e8ccbef36c83c0c3adce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant4d67836c369a236359fc7c95c493613c23c7ee0a23d4e8ccbef36c83c0c3adce.lean#L623).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71ae43bb5b209b1ddb4d066ea1f0babd9b232379` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
