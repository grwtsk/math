# colimitCoconeIsColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4099c0bf8a3db5988913d921ce18d3d83742bf0f3f441f18457f1b45d1779e1c",
  "kind": "def",
  "lexical_name": "colimitCoconeIsColimit",
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
  "slug": "colimitcoconeiscolimit--7b1f6df37152ada0f87e55b7",
  "source": {
    "blob": "170d3801a16ab06d49d6646f009f5199e85b8cbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 329,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantffa6c286f225bfada5f405582b7536b3f01087b904de1b9b1b4ce702bd30a927.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b1f6df37152ada0f87e55b7fcaf8113e6e9e473b64f3dad7c3bed8bacdb7906",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantffa6c286f225bfada5f405582b7536b3f01087b904de1b9b1b4ce702bd30a927.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4099c0bf8a3db5988913d921ce18d3d83742bf0f3f441f18457f1b45d1779e1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def colimitCoconeIsColimit : IsColimit <| colimitCocone.{v, u} F where
  desc t := ofHom <|
    (RingCat.FilteredColimits.colimitCoconeIsColimit.{v, u}
          (F ⋙ forget₂ CommRingCat RingCat.{max v u})).desc
      ((forget₂ CommRingCat RingCat).mapCocone t) |>.hom
  fac t j := hom_ext <|
    RingHom.coe_inj <|
      (Types.TypeMax.colimitCoconeIsColimit.{v, u} (F ⋙ forget CommRingCat)).fac
        ((forget CommRingCat).mapCocone t) j
  uniq t _ h := hom_ext <|
    RingHom.coe_inj <|
      (Types.TypeMax.colimitCoconeIsColimit (F ⋙ forget CommRingCat)).uniq
        ((forget CommRingCat).mapCocone t) _ fun j => funext fun x =>
        RingHom.congr_fun (congrArg Hom.hom <| h j) x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantffa6c286f225bfada5f405582b7536b3f01087b904de1b9b1b4ce702bd30a927.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantffa6c286f225bfada5f405582b7536b3f01087b904de1b9b1b4ce702bd30a927.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `170d3801a16ab06d49d6646f009f5199e85b8cbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
