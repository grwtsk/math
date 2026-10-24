# ContinuousMultilinearMap.curryRight_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c9ea4c907ee19bb86bfb8a13880dbb434356eeee",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1607,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/db427d00cf1fc7ffe745da4777490871fe77a0c5112a86ecd97c31eefe64fd3b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5f4e8f75-44ab-82e7-6f2e-5ab3fb4ece73",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3948071f-31b9-3081-a7a3-23d138dc73b6",
  "kind": "theorem",
  "lexical_name": "ContinuousMultilinearMap.curryRight_norm",
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
  "slug": "continuousmultilinearmap-curryright-norm--e09ae9683a156a522dc555b0",
  "source": {
    "blob": "c9ea4c907ee19bb86bfb8a13880dbb434356eeee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1612,
    "line": 1607,
    "path": "GRWTSK/Topology/GeneralTopology/Multilinear/Variantdb427d00cf1fc7ffe745da4777490871fe77a0c5112a86ecd97c31eefe64fd3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e09ae9683a156a522dc555b01acbb665adedf5af0158f80c2fe343bc52301e60",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Multilinear/Variantdb427d00cf1fc7ffe745da4777490871fe77a0c5112a86ecd97c31eefe64fd3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3948071f-31b9-3081-a7a3-23d138dc73b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1607–1612.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousMultilinearMap.curryRight_norm (f : ContinuousMultilinearMap 𝕜 Ei G) :
    ‖f.curryRight‖ = ‖f‖ :=
  (continuousMultilinearCurryRightEquiv 𝕜 Ei G).symm.norm_map f
#align continuous_multilinear_map.curry_right_norm ContinuousMultilinearMap.curryRight_norm

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Multilinear/Variantdb427d00cf1fc7ffe745da4777490871fe77a0c5112a86ecd97c31eefe64fd3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Multilinear/Variantdb427d00cf1fc7ffe745da4777490871fe77a0c5112a86ecd97c31eefe64fd3b.lean#L1607).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9ea4c907ee19bb86bfb8a13880dbb434356eeee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
