# coeLM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:97a5422f9ed82008f4b95d356ae17aca4ffdebde044d62a304cd57e5ad484083",
  "kind": "def",
  "lexical_name": "coeLM",
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
  "slug": "coelm--0cb0706deb4def704d254e4b",
  "source": {
    "blob": "5fcb4432855e52781f08acce8e96afc667aa2f20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1002,
    "line": 994,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantd081051ca12363eeb95590a88decc17fd18f5bdc76c7fb30748f48ffc854d379.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0cb0706deb4def704d254e4bf04da88493949ff7e6b268b4ee7463c79badff02",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantd081051ca12363eeb95590a88decc17fd18f5bdc76c7fb30748f48ffc854d379.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:97a5422f9ed82008f4b95d356ae17aca4ffdebde044d62a304cd57e5ad484083`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 994–1002.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coeLM : (M →L[R] N₃) →ₗ[S] M →ₗ[R] N₃ where
  toFun := (↑)
  map_add' f g := toLinearMap_add f g
  map_smul' c f := toLinearMap_smul c f

variable {S} (σ₁₃)

/-- The coercion from `M →SL[σ] M₂` to `M →ₛₗ[σ] M₂`, as a linear map. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantd081051ca12363eeb95590a88decc17fd18f5bdc76c7fb30748f48ffc854d379.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantd081051ca12363eeb95590a88decc17fd18f5bdc76c7fb30748f48ffc854d379.lean#L994).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fcb4432855e52781f08acce8e96afc667aa2f20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
