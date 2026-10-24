# RiemannDerivedMap.postcomp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ced6a125ff204c6a1f3ff91eb3b01127c797a3e1ae921915301029ac0a2ec675",
  "kind": "def",
  "lexical_name": "RiemannDerivedMap.postcomp",
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
  "slug": "riemannderivedmap-postcomp--0d9af611fa7b4d7c8cf396e3",
  "source": {
    "blob": "00e059276c68ef42b74f08996ee132ab545bbd77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 213,
    "path": "GRWTSK/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0d9af611fa7b4d7c8cf396e32b1ab84b1ac132ab0f242b38f1c533b8e6187796",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ced6a125ff204c6a1f3ff91eb3b01127c797a3e1ae921915301029ac0a2ec675`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def RiemannDerivedMap.postcomp
    {Middle Target : Type*}
    [TopologicalSpace Middle] [TopologicalSpace Target]
    (derived : RiemannDerivedMap Middle)
    (outer : Middle → Target) (continuous_outer : Continuous outer)
    (composedMapId : String) : RiemannDerivedMap Target where
  toFun := outer ∘ derived.toFun
  continuous_toFun := continuous_outer.comp derived.continuous_toFun
  mapId := composedMapId

/-- The identity map is the neutral explicitly derived map. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00e059276c68ef42b74f08996ee132ab545bbd77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
