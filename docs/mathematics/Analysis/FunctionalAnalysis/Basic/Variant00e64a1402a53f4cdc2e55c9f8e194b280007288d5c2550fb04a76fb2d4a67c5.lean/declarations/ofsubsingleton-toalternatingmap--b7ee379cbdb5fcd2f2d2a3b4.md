# ofSubsingleton_toAlternatingMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "be2f6b9c756e13fdc6972589ab4780c3ce4426b3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 293,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/00e64a1402a53f4cdc2e55c9f8e194b280007288d5c2550fb04a76fb2d4a67c5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c1b8bd5-1deb-6388-ed69-154c573e87f2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c725a91f-a159-1a48-ec50-1bd5ba886ae7",
  "kind": "theorem",
  "lexical_name": "ofSubsingleton_toAlternatingMap",
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
  "slug": "ofsubsingleton-toalternatingmap--b7ee379cbdb5fcd2f2d2a3b4",
  "source": {
    "blob": "be2f6b9c756e13fdc6972589ab4780c3ce4426b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 293,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant00e64a1402a53f4cdc2e55c9f8e194b280007288d5c2550fb04a76fb2d4a67c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7ee379cbdb5fcd2f2d2a3b4e6294b3a693cce9488b451fe45e3717443ff861f",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Basic/Variant00e64a1402a53f4cdc2e55c9f8e194b280007288d5c2550fb04a76fb2d4a67c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c725a91f-a159-1a48-ec50-1bd5ba886ae7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofSubsingleton_toAlternatingMap [Subsingleton ι] (i : ι) (f : M →L[R] N) :
    (ofSubsingleton R M N i f).toAlternatingMap = AlternatingMap.ofSubsingleton R M N i f :=
  rfl

variable (ι) {N}

/-- The constant map is alternating when `ι` is empty. -/
@[simps! toContinuousMultilinearMap apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Basic/Variant00e64a1402a53f4cdc2e55c9f8e194b280007288d5c2550fb04a76fb2d4a67c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant00e64a1402a53f4cdc2e55c9f8e194b280007288d5c2550fb04a76fb2d4a67c5.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be2f6b9c756e13fdc6972589ab4780c3ce4426b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
