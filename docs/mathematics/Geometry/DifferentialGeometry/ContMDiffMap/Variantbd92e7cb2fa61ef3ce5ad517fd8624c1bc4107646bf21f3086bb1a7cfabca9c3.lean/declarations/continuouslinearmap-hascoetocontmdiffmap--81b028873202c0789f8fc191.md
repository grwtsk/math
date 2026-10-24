# ContinuousLinearMap.hasCoeToContMDiffMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4dda452e71b31167c66cd5506584b4af794a3d6c1cfd28935b08b363bf132918",
  "kind": "instance",
  "lexical_name": "ContinuousLinearMap.hasCoeToContMDiffMap",
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
  "slug": "continuouslinearmap-hascoetocontmdiffmap--81b028873202c0789f8fc191",
  "source": {
    "blob": "c5e198199f02fde5b8dd6c021cafba24b9ec4ba4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 115,
    "path": "GRWTSK/Geometry/DifferentialGeometry/ContMDiffMap/Variantbd92e7cb2fa61ef3ce5ad517fd8624c1bc4107646bf21f3086bb1a7cfabca9c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:81b028873202c0789f8fc191cebe3115d015e08c4be319586860556b683417f4",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/ContMDiffMap/Variantbd92e7cb2fa61ef3ce5ad517fd8624c1bc4107646bf21f3086bb1a7cfabca9c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4dda452e71b31167c66cd5506584b4af794a3d6c1cfd28935b08b363bf132918`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance ContinuousLinearMap.hasCoeToContMDiffMap :
    Coe (E →L[𝕜] E') C^n⟮𝓘(𝕜, E), E; 𝓘(𝕜, E'), E'⟯ :=
  ⟨fun f => ⟨f, f.contMDiff⟩⟩
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/ContMDiffMap/Variantbd92e7cb2fa61ef3ce5ad517fd8624c1bc4107646bf21f3086bb1a7cfabca9c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/ContMDiffMap/Variantbd92e7cb2fa61ef3ce5ad517fd8624c1bc4107646bf21f3086bb1a7cfabca9c3.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5e198199f02fde5b8dd6c021cafba24b9ec4ba4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
