# conesEquivUnitIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9de48287f2ee77669bcd6dc8c7e1174cf1bc873f787704660185c89d79ca3d29",
  "kind": "def",
  "lexical_name": "conesEquivUnitIso",
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
  "slug": "conesequivunitiso--ef463d0352cf2104a988485b",
  "source": {
    "blob": "d885d78b3c36a82ac81a54b4bf846e916288e12e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 108,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantfc62d43755986758acad113ae132bf8d31a136db9da24c0ef88d6d85e869908c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ef463d0352cf2104a988485bed5ba2fe432cc6222df9a741316bb61b25f78f24",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantfc62d43755986758acad113ae132bf8d31a136db9da24c0ef88d6d85e869908c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9de48287f2ee77669bcd6dc8c7e1174cf1bc873f787704660185c89d79ca3d29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def conesEquivUnitIso (B : C) (F : Discrete J ⥤ Over B) :
    𝟭 (Cone (widePullbackDiagramOfDiagramOver B F)) ≅
      conesEquivFunctor B F ⋙ conesEquivInverse B F :=
  NatIso.ofComponents fun _ => Cones.ext
    { hom := 𝟙 _
      inv := 𝟙 _ }
    (by rintro (j | j) <;> aesop_cat)
#align category_theory.over.construct_products.cones_equiv_unit_iso CategoryTheory.Over.ConstructProducts.conesEquivUnitIso

-- TODO: Can we add `:= by aesop` to the second arguments of `NatIso.ofComponents` and
--       `Cones.ext`?
/-- (Impl) A preliminary definition to avoid timeouts. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantfc62d43755986758acad113ae132bf8d31a136db9da24c0ef88d6d85e869908c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantfc62d43755986758acad113ae132bf8d31a136db9da24c0ef88d6d85e869908c.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d885d78b3c36a82ac81a54b4bf846e916288e12e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
