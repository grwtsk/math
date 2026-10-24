# mapHomologicalFunctorFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e8c76ef5c06d56d39c36e93309d33c2bfe5857826d56c3c28793a64f2aaa60a2",
  "kind": "def",
  "lexical_name": "mapHomologicalFunctorFunctor",
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
  "slug": "maphomologicalfunctorfunctor--24cbc1828a3e59aa78e1ce6b",
  "source": {
    "blob": "f71dff53ece6549db1c18e2e695a6063b79b463a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 287,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant211376bc060ac2f189358f527f9409105c1d3a056d61baf1fc8c471f10d579ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:24cbc1828a3e59aa78e1ce6b87f68a3b00b111bd6b50f1387a773b793f7adfae",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant211376bc060ac2f189358f527f9409105c1d3a056d61baf1fc8c471f10d579ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e8c76ef5c06d56d39c36e93309d33c2bfe5857826d56c3c28793a64f2aaa60a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mapHomologicalFunctorFunctor
    (F : C ⥤ A) [F.IsHomological] [F.ShiftSequence ℤ] (ι : Type*) [Category* ι] :
    SpectralObject C ι ⥤ Abelian.SpectralObject A ι where
  obj X := X.mapHomologicalFunctor F
  map φ :=
    { hom n := Functor.whiskerRight φ.hom _
      comm n₀ n₁ h _ _ _ f g :=
        (F.homologySequenceδ_naturality (triangleMap φ f g) n₀ n₁ h).symm }

end

end SpectralObject

end Triangulated

namespace Functor

variable {C}

set_option backward.defeqAttrib.useBackward true in
/-- The functor between categories of spectral objects that is induced by
a triangulated functor. -/
@[implicit_reducible, simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant211376bc060ac2f189358f527f9409105c1d3a056d61baf1fc8c471f10d579ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant211376bc060ac2f189358f527f9409105c1d3a056d61baf1fc8c471f10d579ff.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f71dff53ece6549db1c18e2e695a6063b79b463a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
