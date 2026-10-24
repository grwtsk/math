# leftHomologyπNatTrans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eaf09eb8563e10f9dcb130ece4608a19369d9a873e918ab95a6ed2c0a65ac05b",
  "kind": "def",
  "lexical_name": "leftHomologyπNatTrans",
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
  "slug": "lefthomology-nattrans--ddfb2730eb0a31a0f7b9bde4",
  "source": {
    "blob": "23995da5752a72fc31e300df148afce6fc0bdd59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 795,
    "line": 790,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomology/Variant30cdd7e037d28525f21db86dddd3303d6fd58bb6b5f2daf04ba197dc58a4aa43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ddfb2730eb0a31a0f7b9bde44c9993d7fe7cd11bc23951b0eb66d7e0be80891e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomology/Variant30cdd7e037d28525f21db86dddd3303d6fd58bb6b5f2daf04ba197dc58a4aa43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eaf09eb8563e10f9dcb130ece4608a19369d9a873e918ab95a6ed2c0a65ac05b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 790–795.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def leftHomologyπNatTrans : cyclesFunctor C ⟶ leftHomologyFunctor C where
  app S := leftHomologyπ S
  naturality := fun _ _ φ => (leftHomologyπ_naturality φ).symm

/-- The natural transformation `S.cycles ⟶ S.X₂` for all short complexes `S`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomology/Variant30cdd7e037d28525f21db86dddd3303d6fd58bb6b5f2daf04ba197dc58a4aa43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomology/Variant30cdd7e037d28525f21db86dddd3303d6fd58bb6b5f2daf04ba197dc58a4aa43.lean#L790).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23995da5752a72fc31e300df148afce6fc0bdd59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
