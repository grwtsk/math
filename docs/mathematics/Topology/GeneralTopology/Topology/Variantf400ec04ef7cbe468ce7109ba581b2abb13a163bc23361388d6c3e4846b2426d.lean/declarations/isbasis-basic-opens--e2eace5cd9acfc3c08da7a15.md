# isBasis_basic_opens

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8595a4eca910e154d0983fef668e2cc977aa1a0a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 576,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f400ec04ef7cbe468ce7109ba581b2abb13a163bc23361388d6c3e4846b2426d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:894cc6a4-e6c1-0d85-41ce-4924e5bd24cf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fcdd3350-387e-acc6-38b3-282d1907d890",
  "kind": "theorem",
  "lexical_name": "isBasis_basic_opens",
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
  "slug": "isbasis-basic-opens--e2eace5cd9acfc3c08da7a15",
  "source": {
    "blob": "8595a4eca910e154d0983fef668e2cc977aa1a0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 582,
    "line": 576,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variantf400ec04ef7cbe468ce7109ba581b2abb13a163bc23361388d6c3e4846b2426d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2eace5cd9acfc3c08da7a15ffa8989ac56f8b01fa93a90567fb2407de25ab68",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variantf400ec04ef7cbe468ce7109ba581b2abb13a163bc23361388d6c3e4846b2426d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fcdd3350-387e-acc6-38b3-282d1907d890`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 576–582.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isBasis_basic_opens : TopologicalSpace.Opens.IsBasis (Set.range (@basicOpen R _)) := by
  unfold TopologicalSpace.Opens.IsBasis
  convert! isTopologicalBasis_basic_opens (R := R)
  rw [← Set.range_comp]
  rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variantf400ec04ef7cbe468ce7109ba581b2abb13a163bc23361388d6c3e4846b2426d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variantf400ec04ef7cbe468ce7109ba581b2abb13a163bc23361388d6c3e4846b2426d.lean#L576).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8595a4eca910e154d0983fef668e2cc977aa1a0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
