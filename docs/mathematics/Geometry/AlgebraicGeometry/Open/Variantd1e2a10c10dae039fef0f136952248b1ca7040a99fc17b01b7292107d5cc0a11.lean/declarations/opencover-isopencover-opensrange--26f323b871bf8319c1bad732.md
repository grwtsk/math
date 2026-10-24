# OpenCover.isOpenCover_opensRange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f7c43421-da5a-7dff-1c47-77b1cb05f46a",
  "kind": "lemma",
  "lexical_name": "OpenCover.isOpenCover_opensRange",
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
  "slug": "opencover-isopencover-opensrange--26f323b871bf8319c1bad732",
  "source": {
    "blob": "8f8aa5beeeef1ef909f1abbd57e480dea0eacee0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 76,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Open/Variantd1e2a10c10dae039fef0f136952248b1ca7040a99fc17b01b7292107d5cc0a11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26f323b871bf8319c1bad732a28d6b06127f835b02bb1fb9a2a8b2e2f441fa9d",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Open/Variantd1e2a10c10dae039fef0f136952248b1ca7040a99fc17b01b7292107d5cc0a11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7c43421-da5a-7dff-1c47-77b1cb05f46a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma OpenCover.isOpenCover_opensRange {X : Scheme.{u}} (𝒰 : X.OpenCover) :
    IsOpenCover fun i ↦ (𝒰.map i).opensRange :=
  .mk 𝒰.iSup_opensRange

/-- Every open cover of a quasi-compact scheme can be refined into a finite subcover.
-/
@[simps! obj map]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Open/Variantd1e2a10c10dae039fef0f136952248b1ca7040a99fc17b01b7292107d5cc0a11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Open/Variantd1e2a10c10dae039fef0f136952248b1ca7040a99fc17b01b7292107d5cc0a11.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f8aa5beeeef1ef909f1abbd57e480dea0eacee0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
