# isoOfQuivIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1184a8e5d8296463050f32462f33f90b432d14986b71ca0645e81d573ffa9356",
  "kind": "def",
  "lexical_name": "isoOfQuivIso",
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
  "slug": "isoofquiviso--9a7c667649632e4fbf21af64",
  "source": {
    "blob": "5d351d895bf6bb19d3a1c724b999348eada8de10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 80,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variantc7733ad596b6571fa51bfbf18cd4e93da7d45285f4acbfce6cb2a759798de88b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9a7c667649632e4fbf21af64ec423c1f2712f17fbd1fabf284f9f6fc12f7aa81",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variantc7733ad596b6571fa51bfbf18cd4e93da7d45285f4acbfce6cb2a759798de88b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1184a8e5d8296463050f32462f33f90b432d14986b71ca0645e81d573ffa9356`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isoOfQuivIso {V W : Type u} [ReflQuiver V] [ReflQuiver W]
    (e : Quiv.of V ≅ Quiv.of W)
    (h_id : ∀ (X : V), e.hom.map (𝟙rq X) = ReflQuiver.id (obj := W) (e.hom.obj X)) :
    ReflQuiv.of V ≅ ReflQuiv.of W where
  hom := ReflPrefunctor.mk e.hom h_id
  inv := ReflPrefunctor.mk e.inv
    (fun Y => (Quiv.homEquivOfIso e).injective (by simp [Quiv.hom_map_inv_map_of_iso, h_id]))
  hom_inv_id := by
    apply forgetToQuiv.map_injective
    exact e.hom_inv_id
  inv_hom_id := by
    apply forgetToQuiv.map_injective
    exact e.inv_hom_id

/-- Compatible equivalences of types and hom-types induce an isomorphism of reflexive quivers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variantc7733ad596b6571fa51bfbf18cd4e93da7d45285f4acbfce6cb2a759798de88b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variantc7733ad596b6571fa51bfbf18cd4e93da7d45285f4acbfce6cb2a759798de88b.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d351d895bf6bb19d3a1c724b999348eada8de10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
