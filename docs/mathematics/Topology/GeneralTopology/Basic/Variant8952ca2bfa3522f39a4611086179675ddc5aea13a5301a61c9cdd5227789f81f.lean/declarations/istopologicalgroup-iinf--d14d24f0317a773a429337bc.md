# isTopologicalGroup_iInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "55242eda1288001b9e3432de645441a894c78412",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 437,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/8952ca2bfa3522f39a4611086179675ddc5aea13a5301a61c9cdd5227789f81f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e021349f-9d98-49af-8703-8626ac8b1f37",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9b70cbb9-05a4-9dea-b139-17b54f5a8c5a",
  "kind": "theorem",
  "lexical_name": "isTopologicalGroup_iInf",
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
  "slug": "istopologicalgroup-iinf--d14d24f0317a773a429337bc",
  "source": {
    "blob": "55242eda1288001b9e3432de645441a894c78412",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 445,
    "line": 437,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant8952ca2bfa3522f39a4611086179675ddc5aea13a5301a61c9cdd5227789f81f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d14d24f0317a773a429337bc77197780b07b8067c754385e45aa6b3b2eb94cb1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant8952ca2bfa3522f39a4611086179675ddc5aea13a5301a61c9cdd5227789f81f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b70cbb9-05a4-9dea-b139-17b54f5a8c5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 437–445.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isTopologicalGroup_iInf {ts' : ι → TopologicalSpace G}
    (h' : ∀ i, @IsTopologicalGroup G (ts' i) _) : @IsTopologicalGroup G (⨅ i, ts' i) _ := by
  rw [← sInf_range]
  exact isTopologicalGroup_sInf (Set.forall_mem_range.mpr h')

@[to_additive (attr := deprecated (since := "2026-08-21"))]
alias topologicalGroup_iInf := isTopologicalGroup_iInf

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant8952ca2bfa3522f39a4611086179675ddc5aea13a5301a61c9cdd5227789f81f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant8952ca2bfa3522f39a4611086179675ddc5aea13a5301a61c9cdd5227789f81f.lean#L437).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55242eda1288001b9e3432de645441a894c78412` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
