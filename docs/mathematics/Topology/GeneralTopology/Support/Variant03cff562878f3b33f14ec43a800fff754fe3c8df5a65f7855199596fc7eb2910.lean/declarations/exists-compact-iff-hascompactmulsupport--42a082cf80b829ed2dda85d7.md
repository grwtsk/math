# exists_compact_iff_hasCompactMulSupport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f48cf836ec24a68fecf934c50fbd911d75023df9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 156,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:345b5f77-f5fd-b5c8-d268-4d828f10ff4d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dae73d9b-d42d-7b6c-9a76-c8ecc8c2be82",
  "kind": "theorem",
  "lexical_name": "exists_compact_iff_hasCompactMulSupport",
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
  "slug": "exists-compact-iff-hascompactmulsupport--42a082cf80b829ed2dda85d7",
  "source": {
    "blob": "f48cf836ec24a68fecf934c50fbd911d75023df9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 156,
    "path": "GRWTSK/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42a082cf80b829ed2dda85d755373975c23bd1508f1292054effce68e8d12872",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dae73d9b-d42d-7b6c-9a76-c8ecc8c2be82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_compact_iff_hasCompactMulSupport [R1Space α] :
    (∃ K : Set α, IsCompact K ∧ ∀ x, x ∉ K → f x = 1) ↔ HasCompactMulSupport f := by
  simp_rw [← notMem_mulSupport, ← mem_compl_iff, ← subset_def, compl_subset_compl,
    hasCompactMulSupport_def, exists_isCompact_superset_iff]

namespace HasCompactMulSupport
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f48cf836ec24a68fecf934c50fbd911d75023df9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
