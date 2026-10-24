# skyscraperSheafFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b2f632e1174f563ba3e75ea2fd3177d4319985257447e98666639d1eed0dfabe",
  "kind": "def",
  "lexical_name": "skyscraperSheafFunctor",
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
  "slug": "skyscrapersheaffunctor--f5feee389cf65acd89e5473a",
  "source": {
    "blob": "8a2dfdd3a736b51f40f6b456336d331620c95204",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 267,
    "path": "GRWTSK/Topology/Skyscraper/Variant92c38003913d1f84cdfa49d434abc22d3fc421d8639b7eb9386014bae4fe6bae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f5feee389cf65acd89e5473a6d88fec4cc2c683ef22d85a8312ee25b490de6a8",
  "verification": {
    "reference": "docs/verification/Topology/Skyscraper/Variant92c38003913d1f84cdfa49d434abc22d3fc421d8639b7eb9386014bae4fe6bae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b2f632e1174f563ba3e75ea2fd3177d4319985257447e98666639d1eed0dfabe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def skyscraperSheafFunctor : C ⥤ Sheaf C X where
  obj c := skyscraperSheaf p₀ c
  map f := ObjectProperty.homMk <| (skyscraperPresheafFunctor p₀).map f
  map_id _ := Sheaf.hom_ext <| (skyscraperPresheafFunctor p₀).map_id _
  map_comp _ _ := Sheaf.hom_ext <| (skyscraperPresheafFunctor p₀).map_comp _ _

namespace StalkSkyscraperPresheafAdjunctionAuxs

variable [HasColimits C]

set_option backward.defeqAttrib.useBackward true in
/-- If `f : 𝓕.stalk p₀ ⟶ c`, then a natural transformation `𝓕 ⟶ skyscraperPresheaf p₀ c` can be
defined by: `𝓕.germ p₀ ≫ f : 𝓕(U) ⟶ c` if `p₀ ∈ U` and the unique morphism to a terminal object
if `p₀ ∉ U`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Skyscraper/Variant92c38003913d1f84cdfa49d434abc22d3fc421d8639b7eb9386014bae4fe6bae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Skyscraper/Variant92c38003913d1f84cdfa49d434abc22d3fc421d8639b7eb9386014bae4fe6bae.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a2dfdd3a736b51f40f6b456336d331620c95204` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
