# prodComparisonBifunctorNatTrans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:96523abf917a1e5945f45e86010c87330e00cd1fffcd0bca5b1d69142154a0b0",
  "kind": "def",
  "lexical_name": "prodComparisonBifunctorNatTrans",
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
  "slug": "prodcomparisonbifunctornattrans--63f0175994c92773e552f989",
  "source": {
    "blob": "4685874b6eb674fb7b13dcbb8a0da7052d1be69c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 633,
    "line": 624,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf3611980477456f8018b08edb59ed5a4c3493652282094835cd42979787a81d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:63f0175994c92773e552f9899c618fcb8ab068c4eb0ac81ddaaf6681ce337075",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf3611980477456f8018b08edb59ed5a4c3493652282094835cd42979787a81d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:96523abf917a1e5945f45e86010c87330e00cd1fffcd0bca5b1d69142154a0b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 624–633.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def prodComparisonBifunctorNatTrans :
    curriedTensor C ⋙ (whiskeringRight _ _ _).obj F ⟶
      F ⋙ curriedTensor D ⋙ (whiskeringLeft _ _ _).obj F where
  app A := prodComparisonNatTrans F A
  naturality x y f := by
    ext z
    apply hom_ext <;> simp [← Functor.map_comp]

variable {E : Type u₂} [Category.{v₂} E] [CartesianMonoidalCategory E] (G : D ⥤ E)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf3611980477456f8018b08edb59ed5a4c3493652282094835cd42979787a81d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf3611980477456f8018b08edb59ed5a4c3493652282094835cd42979787a81d5.lean#L624).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4685874b6eb674fb7b13dcbb8a0da7052d1be69c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
