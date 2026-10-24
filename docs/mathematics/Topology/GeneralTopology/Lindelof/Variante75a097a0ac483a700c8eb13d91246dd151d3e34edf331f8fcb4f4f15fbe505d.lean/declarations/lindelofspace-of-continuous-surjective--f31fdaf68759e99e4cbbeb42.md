# LindelofSpace.of_continuous_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cf1dc92979e8bceb698d5d862049056ec9b51779",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 688,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e75a097a0ac483a700c8eb13d91246dd151d3e34edf331f8fcb4f4f15fbe505d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c74d43b1-dae9-c702-5969-76bbc99483c4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:074d915b-c6d2-e359-6864-f96ed73f424a",
  "kind": "theorem",
  "lexical_name": "LindelofSpace.of_continuous_surjective",
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
  "slug": "lindelofspace-of-continuous-surjective--f31fdaf68759e99e4cbbeb42",
  "source": {
    "blob": "cf1dc92979e8bceb698d5d862049056ec9b51779",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 695,
    "line": 688,
    "path": "GRWTSK/Topology/GeneralTopology/Lindelof/Variante75a097a0ac483a700c8eb13d91246dd151d3e34edf331f8fcb4f4f15fbe505d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f31fdaf68759e99e4cbbeb42ce86c69912544ddb2e37f7daf2aaf5553e8b7e43",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lindelof/Variante75a097a0ac483a700c8eb13d91246dd151d3e34edf331f8fcb4f4f15fbe505d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:074d915b-c6d2-e359-6864-f96ed73f424a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 688–695.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LindelofSpace.of_continuous_surjective {f : X → Y} [LindelofSpace X] (hf : Continuous f)
    (hsur : Function.Surjective f) : LindelofSpace Y where
  isLindelof_univ := by
    rw [← Set.image_univ_of_surjective hsur]
    exact IsLindelof.image (isLindelof_univ_iff.mpr ‹_›) hf

/-- A set `s` is Hereditarily Lindelöf if every subset is a Lindelof set. We require this only
for open sets in the definition, and then conclude that this holds for all sets by ADD. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lindelof/Variante75a097a0ac483a700c8eb13d91246dd151d3e34edf331f8fcb4f4f15fbe505d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lindelof/Variante75a097a0ac483a700c8eb13d91246dd151d3e34edf331f8fcb4f4f15fbe505d.lean#L688).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf1dc92979e8bceb698d5d862049056ec9b51779` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
