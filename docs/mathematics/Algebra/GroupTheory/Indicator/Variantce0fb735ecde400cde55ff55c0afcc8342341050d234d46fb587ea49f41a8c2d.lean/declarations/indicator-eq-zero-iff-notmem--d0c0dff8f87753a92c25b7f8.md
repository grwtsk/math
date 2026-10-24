# indicator_eq_zero_iff_notMem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d305d7ff2fba223692111d8f776cf16264d1431a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/ce0fb735ecde400cde55ff55c0afcc8342341050d234d46fb587ea49f41a8c2d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cd95f9b6-9b54-ae0e-79b4-0d4093cd0fda",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:324a8e0c-199f-67da-e407-5c0363bc7dc4",
  "kind": "lemma",
  "lexical_name": "indicator_eq_zero_iff_notMem",
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
  "slug": "indicator-eq-zero-iff-notmem--d0c0dff8f87753a92c25b7f8",
  "source": {
    "blob": "d305d7ff2fba223692111d8f776cf16264d1431a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 72,
    "path": "GRWTSK/Algebra/GroupTheory/Indicator/Variantce0fb735ecde400cde55ff55c0afcc8342341050d234d46fb587ea49f41a8c2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0c0dff8f87753a92c25b7f8301d6a3ff5656020a11c8f8605d3d14c03185cea",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Indicator/Variantce0fb735ecde400cde55ff55c0afcc8342341050d234d46fb587ea49f41a8c2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:324a8e0c-199f-67da-e407-5c0363bc7dc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma indicator_eq_zero_iff_notMem : indicator s 1 i = (0 : M₀) ↔ i ∉ s := by
  classical simp [indicator_apply, imp_false]

@[deprecated (since := "2025-05-23")]
alias indicator_eq_zero_iff_not_mem := indicator_eq_zero_iff_notMem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Indicator/Variantce0fb735ecde400cde55ff55c0afcc8342341050d234d46fb587ea49f41a8c2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Indicator/Variantce0fb735ecde400cde55ff55c0afcc8342341050d234d46fb587ea49f41a8c2d.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d305d7ff2fba223692111d8f776cf16264d1431a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
