# splitting

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c99b308f3147cb9b1ac1ff1d0c94ca0d87c5757b59afc8e0ee9752523832434",
  "kind": "def",
  "lexical_name": "splitting",
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
  "slug": "splitting--7dbcadd4fc252c74f99a1ff5",
  "source": {
    "blob": "9c97a363cb05fb590c5bebbe6516853faab1bf17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 217,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variantfb964dde8d5b72630b2c0af1425c52d496fed764c9da36539048cf1d7d82276c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7dbcadd4fc252c74f99a1ff5e4b74f8a7b968cff7ee175643b4d43c2c95b9bb7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variantfb964dde8d5b72630b2c0af1425c52d496fed764c9da36539048cf1d7d82276c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c99b308f3147cb9b1ac1ff1d0c94ca0d87c5757b59afc8e0ee9752523832434`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def splitting (K : ChainComplex C ℕ) : SimplicialObject.Splitting (Γ₀.obj K) where
  N n := K.X n
  ι n := Sigma.ι (Γ₀.Obj.summand K (op ⦋n⦌)) (Splitting.IndexSet.id (op ⦋n⦌))
  isColimit' Δ := IsColimit.ofIsoColimit (colimit.isColimit _) (Cofan.ext (Iso.refl _) (by
      intro A
      dsimp [Splitting.cofan']
      rw [comp_id, Γ₀.Obj.map_on_summand₀ K (SimplicialObject.Splitting.IndexSet.id A.1)
        (show A.e ≫ 𝟙 _ = A.e.op.unop ≫ 𝟙 _ by rfl), Γ₀.Obj.Termwise.mapMono_id]
      dsimp
      rw [id_comp]
      rfl))

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variantfb964dde8d5b72630b2c0af1425c52d496fed764c9da36539048cf1d7d82276c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variantfb964dde8d5b72630b2c0af1425c52d496fed764c9da36539048cf1d7d82276c.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c97a363cb05fb590c5bebbe6516853faab1bf17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
