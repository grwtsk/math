# mem_closure_iff_infEdist_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b49169fd396a3dbef5d377a7f36c1b858c8db1c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 150,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bc72ae77d59f85fd33c66aae4da67b144557a3ec0cf70f7a2b25e327b2a7b695.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:446e2e35-71a5-a4c2-f0ae-dee2953dd73a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:679cbf49-e39e-dbbe-f8e7-7d7f9c6991ac",
  "kind": "theorem",
  "lexical_name": "mem_closure_iff_infEdist_zero",
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
  "slug": "mem-closure-iff-infedist-zero--64307b769c8209926cb2eb8e",
  "source": {
    "blob": "b49169fd396a3dbef5d377a7f36c1b858c8db1c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 150,
    "path": "GRWTSK/Topology/GeneralTopology/HausdorffDistance/Variantbc72ae77d59f85fd33c66aae4da67b144557a3ec0cf70f7a2b25e327b2a7b695.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64307b769c8209926cb2eb8e3d257a67298f99e39fe9b281e140ecbd1c02bb24",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/HausdorffDistance/Variantbc72ae77d59f85fd33c66aae4da67b144557a3ec0cf70f7a2b25e327b2a7b695.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:679cbf49-e39e-dbbe-f8e7-7d7f9c6991ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_closure_iff_infEdist_zero : x ∈ closure s ↔ infEdist x s = 0 :=
  ⟨fun h => by
    rw [← infEdist_closure]
    exact infEdist_zero_of_mem h,
   fun h =>
    EMetric.mem_closure_iff.2 fun ε εpos => infEdist_lt_iff.mp <| by rwa [h]⟩
#align emetric.mem_closure_iff_inf_edist_zero EMetric.mem_closure_iff_infEdist_zero

/-- Given a closed set `s`, a point belongs to `s` iff its infimum edistance to this set vanishes -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/HausdorffDistance/Variantbc72ae77d59f85fd33c66aae4da67b144557a3ec0cf70f7a2b25e327b2a7b695.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/HausdorffDistance/Variantbc72ae77d59f85fd33c66aae4da67b144557a3ec0cf70f7a2b25e327b2a7b695.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b49169fd396a3dbef5d377a7f36c1b858c8db1c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
