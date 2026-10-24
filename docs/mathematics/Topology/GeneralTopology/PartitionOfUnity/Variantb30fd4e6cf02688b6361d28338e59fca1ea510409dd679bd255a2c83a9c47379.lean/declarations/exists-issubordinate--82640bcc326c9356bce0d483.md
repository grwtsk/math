# exists_isSubordinate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d6478a5dbdcf985154971ed17fcde575a9536db1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 627,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b30fd4e6cf02688b6361d28338e59fca1ea510409dd679bd255a2c83a9c47379.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:70bf61d6-9743-b1dd-b48c-fd3ab39755b9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8c4917a2-40e2-068f-db0c-8af4157fecaf",
  "kind": "theorem",
  "lexical_name": "exists_isSubordinate",
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
  "slug": "exists-issubordinate--82640bcc326c9356bce0d483",
  "source": {
    "blob": "d6478a5dbdcf985154971ed17fcde575a9536db1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 634,
    "line": 627,
    "path": "GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Variantb30fd4e6cf02688b6361d28338e59fca1ea510409dd679bd255a2c83a9c47379.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82640bcc326c9356bce0d4838f7a4985037f156564c2be5e6904377d73a59113",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PartitionOfUnity/Variantb30fd4e6cf02688b6361d28338e59fca1ea510409dd679bd255a2c83a9c47379.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c4917a2-40e2-068f-db0c-8af4157fecaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 627–634.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_isSubordinate [NormalSpace X] [ParacompactSpace X] (hs : IsClosed s) (U : ι → Set X)
    (ho : ∀ i, IsOpen (U i)) (hU : s ⊆ ⋃ i, U i) :
    ∃ f : PartitionOfUnity ι X s, f.IsSubordinate U :=
  let ⟨f, hf⟩ := BumpCovering.exists_isSubordinate hs U ho hU
  ⟨f.toPartitionOfUnity, hf.toPartitionOfUnity⟩

/-- If `X` is a locally compact T2 topological space and `U` is a locally finite open covering of a
compact set `s`, then there exists a `PartitionOfUnity ι X s` that is subordinate to `U`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PartitionOfUnity/Variantb30fd4e6cf02688b6361d28338e59fca1ea510409dd679bd255a2c83a9c47379.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Variantb30fd4e6cf02688b6361d28338e59fca1ea510409dd679bd255a2c83a9c47379.lean#L627).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6478a5dbdcf985154971ed17fcde575a9536db1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
