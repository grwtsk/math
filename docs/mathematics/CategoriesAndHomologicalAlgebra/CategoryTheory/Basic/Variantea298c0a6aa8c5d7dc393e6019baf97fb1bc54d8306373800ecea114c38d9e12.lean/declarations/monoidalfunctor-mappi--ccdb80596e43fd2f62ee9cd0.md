# MonoidalFunctor.mapPi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:530ee498b2f5754f0443a88aa653ecafcd8bea556d355f14860996f271167de4",
  "kind": "def",
  "lexical_name": "MonoidalFunctor.mapPi",
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
  "slug": "monoidalfunctor-mappi--ccdb80596e43fd2f62ee9cd0",
  "source": {
    "blob": "a977b619d9da480fc241def32581b99abcc1fa7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 76,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantea298c0a6aa8c5d7dc393e6019baf97fb1bc54d8306373800ecea114c38d9e12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ccdb80596e43fd2f62ee9cd08f1d35c7b098fb8897f096fb7da0fb67da041d05",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantea298c0a6aa8c5d7dc393e6019baf97fb1bc54d8306373800ecea114c38d9e12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:530ee498b2f5754f0443a88aa653ecafcd8bea556d355f14860996f271167de4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def MonoidalFunctor.mapPi {C : Type*} [Category C] [MonoidalCategory C]
    (F : MonoidalFunctor (Type _) C) (n : ℕ) (β : Type*) :
    F.obj (Fin (n + 1) → β) ≅ F.obj β ⊗ F.obj (Fin n → β) :=
  Functor.mapIso _ (Equiv.piFinSucc n β).toIso ≪≫ (asIso (F.μ β (Fin n → β))).symm
#align category_theory.monoidal_functor.map_pi CategoryTheory.MonoidalFunctor.mapPi

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantea298c0a6aa8c5d7dc393e6019baf97fb1bc54d8306373800ecea114c38d9e12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantea298c0a6aa8c5d7dc393e6019baf97fb1bc54d8306373800ecea114c38d9e12.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a977b619d9da480fc241def32581b99abcc1fa7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
