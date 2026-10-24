# oscillationWithin_nhds_eq_oscillation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7a32aec3b3fa69ef0f35ce3f4af8e590d0cca858",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 42,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/cc66fa2d2cef9d5b1dbf459c5dfffb9a6286d45712246d6f50b7fc60c919c90e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9076615e-0480-16b7-f72f-62a64923ec34",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f4793f9d-12b9-b83c-32ea-e9451026e3f4",
  "kind": "theorem",
  "lexical_name": "oscillationWithin_nhds_eq_oscillation",
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
  "slug": "oscillationwithin-nhds-eq-oscillation--940009576ea4e3ad0377117b",
  "source": {
    "blob": "7a32aec3b3fa69ef0f35ce3f4af8e590d0cca858",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 42,
    "path": "GRWTSK/Topology/GeneralTopology/Oscillation/Variantcc66fa2d2cef9d5b1dbf459c5dfffb9a6286d45712246d6f50b7fc60c919c90e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:940009576ea4e3ad0377117b33654b6c4581e3b5a527eaeea655fae737d9a5ad",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Oscillation/Variantcc66fa2d2cef9d5b1dbf459c5dfffb9a6286d45712246d6f50b7fc60c919c90e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4793f9d-12b9-b83c-32ea-e9451026e3f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oscillationWithin_nhds_eq_oscillation [TopologicalSpace E] (f : E → F) (D : Set E) (x : E)
    (hD : D ∈ 𝓝 x) : oscillationWithin f D x = oscillation f x := by
  rw [oscillation, oscillationWithin, nhdsWithin_eq_nhds.2 hD]

@[deprecated (since := "2025-05-22")]
alias oscillationWithin_nhd_eq_oscillation := oscillationWithin_nhds_eq_oscillation

/-- The oscillation of `f` at `x` within `univ` is equal to `oscillation f x` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Oscillation/Variantcc66fa2d2cef9d5b1dbf459c5dfffb9a6286d45712246d6f50b7fc60c919c90e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Oscillation/Variantcc66fa2d2cef9d5b1dbf459c5dfffb9a6286d45712246d6f50b7fc60c919c90e.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a32aec3b3fa69ef0f35ce3f4af8e590d0cca858` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
