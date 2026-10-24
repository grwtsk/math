# add_mem_Ico_iff_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e19245466941052ddaf1c5ba5bf677f864db6283",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 65,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2eccdada1929ab785b8803c1ee2651faf64289edf4fabe6830127ad1c25982ba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:94f287fa-a559-e720-fd6c-fa8dde055467",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2449c4b4-e38a-8994-61e3-165c42a0be2c",
  "kind": "theorem",
  "lexical_name": "add_mem_Ico_iff_left",
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
  "slug": "add-mem-ico-iff-left--a0474c9275900b2c0bf44035",
  "source": {
    "blob": "e19245466941052ddaf1c5ba5bf677f864db6283",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 65,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Group/Variant2eccdada1929ab785b8803c1ee2651faf64289edf4fabe6830127ad1c25982ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0474c9275900b2c0bf440359cdf3b3a55c9d3cd72bf5600ada302514cc8c86e",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Group/Variant2eccdada1929ab785b8803c1ee2651faf64289edf4fabe6830127ad1c25982ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2449c4b4-e38a-8994-61e3-165c42a0be2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem add_mem_Ico_iff_left : a + b ∈ Set.Ico c d ↔ a ∈ Set.Ico (c - b) (d - b) :=
  (and_congr (sub_le_iff_le_add (α := α)) (lt_sub_iff_add_lt (α := α))).symm
#align set.add_mem_Ico_iff_left Set.add_mem_Ico_iff_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Group/Variant2eccdada1929ab785b8803c1ee2651faf64289edf4fabe6830127ad1c25982ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Group/Variant2eccdada1929ab785b8803c1ee2651faf64289edf4fabe6830127ad1c25982ba.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e19245466941052ddaf1c5ba5bf677f864db6283` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
