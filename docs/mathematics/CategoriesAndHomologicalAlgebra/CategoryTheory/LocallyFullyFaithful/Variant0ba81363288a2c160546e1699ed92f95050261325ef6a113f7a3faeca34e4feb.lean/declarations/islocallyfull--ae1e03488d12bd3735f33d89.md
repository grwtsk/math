# IsLocallyFull

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:97479dd464b10c5c846952a94c9f8a33414780ba4c58891bfb9ff215c7e9f3db",
  "kind": "class",
  "lexical_name": "IsLocallyFull",
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
  "slug": "islocallyfull--ae1e03488d12bd3735f33d89",
  "source": {
    "blob": "95b5c12e308f6b6520683c0bc66b0febb3f89417",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 92,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant0ba81363288a2c160546e1699ed92f95050261325ef6a113f7a3faeca34e4feb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ae1e03488d12bd3735f33d899a6eaee001e3c8a442525cdb304f967de7790633",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant0ba81363288a2c160546e1699ed92f95050261325ef6a113f7a3faeca34e4feb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:97479dd464b10c5c846952a94c9f8a33414780ba4c58891bfb9ff215c7e9f3db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsLocallyFull : Prop where
  functorPushforward_imageSieve_mem : ∀ {U V} (f : G.obj U ⟶ G.obj V),
    (G.imageSieve f).functorPushforward G ∈ K _

/--
A functor `G : C ⥤ D` is locally faithful w.r.t. a topology on `D` if for every `f₁ f₂ : U ⟶ V`
whose images in `D` are equal, the set of `G.map gᵢ : G.obj Wᵢ ⟶ G.obj U` such that
`gᵢ ≫ f₁ = gᵢ ≫ f₂` is a coverage of the topology on `D`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant0ba81363288a2c160546e1699ed92f95050261325ef6a113f7a3faeca34e4feb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant0ba81363288a2c160546e1699ed92f95050261325ef6a113f7a3faeca34e4feb.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95b5c12e308f6b6520683c0bc66b0febb3f89417` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
