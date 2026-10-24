# externalProductBifunctorCurried

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:60e75fc5aae78780e899818aac23aa67204b7fc0633bfbca5b4971172417526b",
  "kind": "def",
  "lexical_name": "externalProductBifunctorCurried",
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
  "slug": "externalproductbifunctorcurried--6305fdabde612b239ab87478",
  "source": {
    "blob": "02f5e3c72b25a8e4efec520a33e89330499a8c01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 40,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1f75c06125bcb353aa23091abf7c6b3568232ada3f14a2e60f3bb14d71c2fca4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6305fdabde612b239ab874783ebb6f90e4d8a19b43b7c561473de45b8b1d8ef6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1f75c06125bcb353aa23091abf7c6b3568232ada3f14a2e60f3bb14d71c2fca4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:60e75fc5aae78780e899818aac23aa67204b7fc0633bfbca5b4971172417526b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def externalProductBifunctorCurried : (J₁ ⥤ C) ⥤ (J₂ ⥤ C) ⥤ J₁ ⥤ J₂ ⥤ C :=
  (Functor.postcompose₂.obj <| (evaluation _ _).obj <| curriedTensor C).obj <| whiskeringLeft₂ C

/-- The external product bifunctor: given diagrams
`K₁ : J₁ ⥤ C` and `K₂ : J₂ ⥤ C`, this is the bifunctor `(j₁, j₂) ↦ K₁ j₁ ⊗ K₂ j₂`. -/
@[simps!, implicit_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1f75c06125bcb353aa23091abf7c6b3568232ada3f14a2e60f3bb14d71c2fca4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1f75c06125bcb353aa23091abf7c6b3568232ada3f14a2e60f3bb14d71c2fca4.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02f5e3c72b25a8e4efec520a33e89330499a8c01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
