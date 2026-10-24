# equivOfIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b71177a689c52bb0650f3282d6553abb3be57d14916a0e7ea282188c8477e755",
  "kind": "def",
  "lexical_name": "equivOfIso",
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
  "slug": "equivofiso--149fdbd930b7915463f92ef8",
  "source": {
    "blob": "49dcb65227f7c2ac2dff2951c7e4d9b49f20ec41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 188,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantd8ca408756328b686a0f736f6a40281b561d58efffc36f9cb7afe210139d5856.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:149fdbd930b7915463f92ef86de084342542367f3b96e325333d7c397eb310a2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantd8ca408756328b686a0f736f6a40281b561d58efffc36f9cb7afe210139d5856.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b71177a689c52bb0650f3282d6553abb3be57d14916a0e7ea282188c8477e755`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivOfIso {C D : Cat} (γ : C ≅ D) : C ≌ D where
  functor := γ.hom
  inverse := γ.inv
  unitIso := eqToIso <| Eq.symm γ.hom_inv_id
  counitIso := eqToIso γ.inv_hom_id

end

end Cat

/-- Embedding `Type` into `Cat` as discrete categories.

This ought to be modelled as a 2-functor!
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantd8ca408756328b686a0f736f6a40281b561d58efffc36f9cb7afe210139d5856.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantd8ca408756328b686a0f736f6a40281b561d58efffc36f9cb7afe210139d5856.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49dcb65227f7c2ac2dff2951c7e4d9b49f20ec41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
