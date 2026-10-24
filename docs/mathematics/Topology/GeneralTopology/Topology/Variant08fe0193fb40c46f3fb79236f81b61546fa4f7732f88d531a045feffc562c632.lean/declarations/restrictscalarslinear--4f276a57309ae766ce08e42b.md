# restrictScalarsLinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f3378496da7c55a0a9e0eb70ca737ab0dc25b5f9c3cef98b5d5671764d7f8446",
  "kind": "def",
  "lexical_name": "restrictScalarsLinear",
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
  "slug": "restrictscalarslinear--4f276a57309ae766ce08e42b",
  "source": {
    "blob": "8820927ec8132fc992ac591ea4a05149cd121503",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 251,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4f276a57309ae766ce08e42b22eb728dc24b51562ec585452553dee5263cb8c9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f3378496da7c55a0a9e0eb70ca737ab0dc25b5f9c3cef98b5d5671764d7f8446`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def restrictScalarsLinear [ContinuousConstSMul 𝕜' F] :
    ContinuousMultilinearMap 𝕜 E F →L[𝕜'] ContinuousMultilinearMap 𝕜' E F where
  toFun := restrictScalars 𝕜'
  map_add' _ _ := rfl
  map_smul' _ _ := rfl

end RestrictScalars

variable (𝕜 E F)

/-- The application of a multilinear map as a `ContinuousLinearMap`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8820927ec8132fc992ac591ea4a05149cd121503` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
