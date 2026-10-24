# IsRightContinuous.inv₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d3f552481ca7c08013ce820c3ebc34d035d705e2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3d3a6f749b469d3b72f5cfe4b72731bb399d1de539fb697a946ae755d24f8cb9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:26fde9bf-d38a-ef24-8f76-76aed1bbaf48",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:833b5312-5889-f420-af1d-d695a7daa02b",
  "kind": "lemma",
  "lexical_name": "IsRightContinuous.inv₀",
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
  "slug": "isrightcontinuous-inv--f0c655f0f35294b2ea37c3c8",
  "source": {
    "blob": "d3f552481ca7c08013ce820c3ebc34d035d705e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 86,
    "path": "GRWTSK/Topology/GeneralTopology/Cadlag/Variant3d3a6f749b469d3b72f5cfe4b72731bb399d1de539fb697a946ae755d24f8cb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0c655f0f35294b2ea37c3c8ec4676723b7b4874586156be14d4883f6bc18fb5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Cadlag/Variant3d3a6f749b469d3b72f5cfe4b72731bb399d1de539fb697a946ae755d24f8cb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:833b5312-5889-f420-af1d-d695a7daa02b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsRightContinuous.inv₀ [Zero Y] [Inv Y] [ContinuousInv₀ Y]
    (hf : IsRightContinuous f) (h : ∀ x, f x ≠ 0) :
    IsRightContinuous (f⁻¹) :=
  fun x ↦ (hf x).inv₀ (h x)

@[to_fun (attr := to_dual (attr := to_additive))]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Cadlag/Variant3d3a6f749b469d3b72f5cfe4b72731bb399d1de539fb697a946ae755d24f8cb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Cadlag/Variant3d3a6f749b469d3b72f5cfe4b72731bb399d1de539fb697a946ae755d24f8cb9.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3f552481ca7c08013ce820c3ebc34d035d705e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
