# tendsto_normSq_cocompact_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "706e8d34ac3d40b14fcf7246d953fd6964408261",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 145,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/36/36c55b3cf65b410972ed631abef1cb74c397327c8ccb30952dc5941c59c0d930.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:22f42557-bdef-6ca7-2781-137c79b039c6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c1f13487-f7ae-1a22-ffa2-bca7d75a590b",
  "kind": "theorem",
  "lexical_name": "tendsto_normSq_cocompact_atTop",
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
  "slug": "tendsto-normsq-cocompact-attop--114d846c87a538c2375e4196",
  "source": {
    "blob": "706e8d34ac3d40b14fcf7246d953fd6964408261",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 145,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant36c55b3cf65b410972ed631abef1cb74c397327c8ccb30952dc5941c59c0d930.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:114d846c87a538c2375e4196dc44f00aa5df2fd2446b895e48d7073a35cf2115",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant36c55b3cf65b410972ed631abef1cb74c397327c8ccb30952dc5941c59c0d930.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1f13487-f7ae-1a22-ffa2-bca7d75a590b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_normSq_cocompact_atTop : Tendsto normSq (cocompact ℂ) atTop := by
  simpa [norm_mul_self_eq_normSq]
    using tendsto_norm_cocompact_atTop.atTop_mul_atTop₀ (tendsto_norm_cocompact_atTop (E := ℂ))

open ContinuousLinearMap

/-- Continuous linear map version of the real part function, from `ℂ` to `ℝ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant36c55b3cf65b410972ed631abef1cb74c397327c8ccb30952dc5941c59c0d930.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant36c55b3cf65b410972ed631abef1cb74c397327c8ccb30952dc5941c59c0d930.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `706e8d34ac3d40b14fcf7246d953fd6964408261` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
