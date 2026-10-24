# uniformity_eq_comap_inv_mul_nhds_one_swapped

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "41088304a01c153a6b2f5d068d2c01d06921887b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 302,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7b6baeed-28ce-9c4a-762f-0fb2b81d6322",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:76369615-c673-f48b-2120-f5ec7cb2b687",
  "kind": "theorem",
  "lexical_name": "uniformity_eq_comap_inv_mul_nhds_one_swapped",
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
  "slug": "uniformity-eq-comap-inv-mul-nhds-one-swapped--c6359cee31f4101b0a5adb14",
  "source": {
    "blob": "41088304a01c153a6b2f5d068d2c01d06921887b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 302,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6359cee31f4101b0a5adb14d846261c00b95b27f233e6432fb9af61a9475b4d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76369615-c673-f48b-2120-f5ec7cb2b687`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniformity_eq_comap_inv_mul_nhds_one_swapped :
    𝓤 α = comap (fun x : α × α => x.2⁻¹ * x.1) (𝓝 (1 : α)) := by
  rw [← comap_swap_uniformity, uniformity_eq_comap_inv_mul_nhds_one, comap_comap]
  rfl

end

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41088304a01c153a6b2f5d068d2c01d06921887b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
