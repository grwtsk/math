# _root_.MeasurableSet.exists_lt_isCompact_of_ne_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7e8f98e4ffedbc2b95abc544b092b5ddb633ad1b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 518,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:02d4bdde-d8a4-dc8c-6b28-1f94b5e4a8e6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e2dfc668-5982-1273-21f3-0be12c77dcfc",
  "kind": "theorem",
  "lexical_name": "_root_.MeasurableSet.exists_lt_isCompact_of_ne_top",
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
  "slug": "root-measurableset-exists-lt-iscompact-of-ne-top--c701c3b45c6ab550c6bb4697",
  "source": {
    "blob": "7e8f98e4ffedbc2b95abc544b092b5ddb633ad1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 525,
    "line": 518,
    "path": "GRWTSK/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c701c3b45c6ab550c6bb469711f1093d6466dbc1092248acc80d158bd01fd58d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2dfc668-5982-1273-21f3-0be12c77dcfc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 518–525.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.MeasurableSet.exists_lt_isCompact_of_ne_top [Regular μ] ⦃A : Set α⦄
    (hA : MeasurableSet A) (h'A : μ A ≠ ∞) {r : ℝ≥0∞} (hr : r < μ A) :
    ∃ K, K ⊆ A ∧ IsCompact K ∧ r < μ K :=
  Regular.innerRegular_measurable ⟨hA, h'A⟩ _ hr
#align measurable_set.exists_lt_is_compact_of_ne_top MeasurableSet.exists_lt_isCompact_of_ne_top

/-- Given a regular measure, any measurable set of finite mass can be approximated from
inside by compact sets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean#L518).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e8f98e4ffedbc2b95abc544b092b5ddb633ad1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
