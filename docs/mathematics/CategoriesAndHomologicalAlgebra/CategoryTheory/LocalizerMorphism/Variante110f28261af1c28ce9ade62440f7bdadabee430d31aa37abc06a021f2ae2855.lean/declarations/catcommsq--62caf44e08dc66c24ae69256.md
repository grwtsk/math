# catCommSq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ccfaa302d44b22d4f9a20c0cae958eba08231280be2682837c24ab49d9884804",
  "kind": "instance",
  "lexical_name": "catCommSq",
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
  "slug": "catcommsq--62caf44e08dc66c24ae69256",
  "source": {
    "blob": "11aa924d38f52a11b8e544a894bfab31333145f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 89,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizerMorphism/Variante110f28261af1c28ce9ade62440f7bdadabee430d31aa37abc06a021f2ae2855.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:62caf44e08dc66c24ae69256f9497dba0e7c6ff411978e7ee7ffcf315446382c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizerMorphism/Variante110f28261af1c28ce9ade62440f7bdadabee430d31aa37abc06a021f2ae2855.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ccfaa302d44b22d4f9a20c0cae958eba08231280be2682837c24ab49d9884804`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance catCommSq : CatCommSq Φ.functor L₁ L₂ (Φ.localizedFunctor L₁ L₂) :=
  CatCommSq.mk (Lifting.iso _ W₁ _ _).symm

variable (G : D₁ ⥤ D₂)

section

variable [CatCommSq Φ.functor L₁ L₂ G]
  {D₁' : Type u₄'} {D₂' : Type u₅'}
  [Category.{v₄'} D₁'] [Category.{v₅'} D₂']
  (L₁' : C₁ ⥤ D₁') (L₂' : C₂ ⥤ D₂') [L₁'.IsLocalization W₁] [L₂'.IsLocalization W₂]
  (G' : D₁' ⥤ D₂') [CatCommSq Φ.functor L₁' L₂' G']
include W₁ W₂ Φ L₁ L₂ L₁' L₂'

/-- If a localizer morphism induces an equivalence on some choice of localized categories,
it will be so for any choice of localized categoriees. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizerMorphism/Variante110f28261af1c28ce9ade62440f7bdadabee430d31aa37abc06a021f2ae2855.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizerMorphism/Variante110f28261af1c28ce9ade62440f7bdadabee430d31aa37abc06a021f2ae2855.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11aa924d38f52a11b8e544a894bfab31333145f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
