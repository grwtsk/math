# rtendsto'_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dc8096d8ae228696bfafe04c768a7463c8f996bc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 27,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bbf4a607a9c3addfd559c2becd99b468a61b57fce92d1d25e245b1ca197256e2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:914af3f4-1984-0bd9-403a-974eeb3e13ad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:850787ff-2d68-6e3a-00df-3546d9c1734b",
  "kind": "theorem",
  "lexical_name": "rtendsto'_nhds",
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
  "slug": "rtendsto-nhds--844d4718c758e9922c9e42fe",
  "source": {
    "blob": "dc8096d8ae228696bfafe04c768a7463c8f996bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 27,
    "path": "GRWTSK/Topology/GeneralTopology/Partial/Variantbbf4a607a9c3addfd559c2becd99b468a61b57fce92d1d25e245b1ca197256e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:844d4718c758e9922c9e42fef95ace67fbefe0ea9fa9c8a25e4997d4284645ac",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Partial/Variantbbf4a607a9c3addfd559c2becd99b468a61b57fce92d1d25e245b1ca197256e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:850787ff-2d68-6e3a-00df-3546d9c1734b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rtendsto'_nhds {r : Rel Y X} {l : Filter Y} {x : X} :
    RTendsto' r l (𝓝 x) ↔ ∀ s, IsOpen s → x ∈ s → r.preimage s ∈ l := by
  rw [rtendsto'_def]
  apply all_mem_nhds_filter
  apply Rel.preimage_mono

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Partial/Variantbbf4a607a9c3addfd559c2becd99b468a61b57fce92d1d25e245b1ca197256e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Partial/Variantbbf4a607a9c3addfd559c2becd99b468a61b57fce92d1d25e245b1ca197256e2.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc8096d8ae228696bfafe04c768a7463c8f996bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
