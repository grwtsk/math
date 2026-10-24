# isoOfComponents

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:abfc02324927caafd9ab341b4b83ebc66ca9737a61cdaa07387c39a60275d8f2",
  "kind": "def",
  "lexical_name": "isoOfComponents",
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
  "slug": "isoofcomponents--0baa7aa5bc0493f3f09175fa",
  "source": {
    "blob": "dd5377e8ee6c9f6ca3491e7c6eb5641090a44c68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 518,
    "line": 498,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variant041d873dc7a9e950bd33a0f47af49dad53327c8a7fa74829132f8fbbc891358c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0baa7aa5bc0493f3f09175fa5e3f90886c475c4b8269d746e2d56a14fadfe13f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variant041d873dc7a9e950bd33a0f47af49dad53327c8a7fa74829132f8fbbc891358c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:abfc02324927caafd9ab341b4b83ebc66ca9737a61cdaa07387c39a60275d8f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 498–518.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isoOfComponents (f : ∀ i, C₁.X i ≅ C₂.X i)
    (hf : ∀ i j, c.Rel i j → (f i).hom ≫ C₂.d i j = C₁.d i j ≫ (f j).hom := by aesop_cat) :
    C₁ ≅ C₂ where
  hom :=
    { f := fun i => (f i).hom
      comm' := hf }
  inv :=
    { f := fun i => (f i).inv
      comm' := fun i j hij =>
        calc
          (f i).inv ≫ C₁.d i j = (f i).inv ≫ (C₁.d i j ≫ (f j).hom) ≫ (f j).inv := by simp
          _ = (f i).inv ≫ ((f i).hom ≫ C₂.d i j) ≫ (f j).inv := by rw [hf i j hij]
          _ = C₂.d i j ≫ (f j).inv := by simp }
  hom_inv_id := by
    ext i
    exact (f i).hom_inv_id
  inv_hom_id := by
    ext i
    exact (f i).inv_hom_id

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variant041d873dc7a9e950bd33a0f47af49dad53327c8a7fa74829132f8fbbc891358c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variant041d873dc7a9e950bd33a0f47af49dad53327c8a7fa74829132f8fbbc891358c.lean#L498).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd5377e8ee6c9f6ca3491e7c6eb5641090a44c68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
