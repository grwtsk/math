# IsLimit.pullbackConeEquivBinaryFanFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e64dbf56aa6794aaa58f89eec18f65bccb853163f056f31c30f824d2d2c41b93",
  "kind": "def",
  "lexical_name": "IsLimit.pullbackConeEquivBinaryFanFunctor",
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
  "slug": "islimit-pullbackconeequivbinaryfanfunctor--16c96f31d3afe11e48a28a34",
  "source": {
    "blob": "d15f72b2b4ef22b60603e0b9f122ffc8f07bbca4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 75,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6bbb8b26355f69a22b8af6a77f79e5f82400c7c8695f7cad8b1f0dd35d2083d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:16c96f31d3afe11e48a28a34de78d717a10bbc5cded9ea8cfbee6364f4f9f652",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6bbb8b26355f69a22b8af6a77f79e5f82400c7c8695f7cad8b1f0dd35d2083d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e64dbf56aa6794aaa58f89eec18f65bccb853163f056f31c30f824d2d2c41b93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsLimit.pullbackConeEquivBinaryFanFunctor {c : PullbackCone f g} (hc : IsLimit c) :
    IsLimit <| pullbackConeEquivBinaryFan.functor.obj c :=
  BinaryFan.isLimitMk
    -- TODO: Drop `BinaryFan.IsLimit.lift'`. Instead provide the lemmas it bundles separately.
    -- TODO: Define `abbrev BinaryFan.IsLimit (c : BinaryFan X Y) := IsLimit c` for dot notation?
    (fun s ↦ Over.homMk (hc.lift <| pullbackConeEquivBinaryFan.inverse.obj s) <| by
      simpa using s.fst.w)
    (fun s ↦ Over.OverMorphism.ext (hc.fac _ _)) (fun s ↦ Over.OverMorphism.ext (hc.fac _ _))
    fun s m e₁ e₂ ↦ by
      ext1
      apply PullbackCone.IsLimit.hom_ext hc
      · simpa using congr(($e₁).left)
      · simpa using congr(($e₂).left)

/-- A pullback cone to `X` is a limit if its corresponding binary fan in `Over X` is a limit. -/
-- This could also be `(IsLimit.ofConeEquiv pullbackConeEquivBinaryFan.symm).symm hc`, but possibly
-- bad defeqs?
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6bbb8b26355f69a22b8af6a77f79e5f82400c7c8695f7cad8b1f0dd35d2083d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6bbb8b26355f69a22b8af6a77f79e5f82400c7c8695f7cad8b1f0dd35d2083d8.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d15f72b2b4ef22b60603e0b9f122ffc8f07bbca4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
