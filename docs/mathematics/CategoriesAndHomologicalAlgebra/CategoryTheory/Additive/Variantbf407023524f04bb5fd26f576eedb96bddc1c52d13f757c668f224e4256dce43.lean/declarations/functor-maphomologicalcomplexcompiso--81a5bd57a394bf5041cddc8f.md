# Functor.mapHomologicalComplexCompIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:146a1223913d590906ec15b5cab56d69c287d727b0a494d6d11b91b4264f61fc",
  "kind": "def",
  "lexical_name": "Functor.mapHomologicalComplexCompIso",
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
  "slug": "functor-maphomologicalcomplexcompiso--81a5bd57a394bf5041cddc8f",
  "source": {
    "blob": "6e261a4044d3200b4f707c61dde9453f81a0690d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 209,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantbf407023524f04bb5fd26f576eedb96bddc1c52d13f757c668f224e4256dce43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:81a5bd57a394bf5041cddc8fc0c9c042f141c3104cd923630cb8ef8400fa77ad",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantbf407023524f04bb5fd26f576eedb96bddc1c52d13f757c668f224e4256dce43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:146a1223913d590906ec15b5cab56d69c287d727b0a494d6d11b91b4264f61fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Functor.mapHomologicalComplexCompIso
    {F : W₁ ⥤ W₂} {G : W₂ ⥤ W₃} {H : W₁ ⥤ W₃} (e : F ⋙ G ≅ H)
    [F.PreservesZeroMorphisms] [G.PreservesZeroMorphisms] [H.PreservesZeroMorphisms]
    (c : ComplexShape ι) :
    F.mapHomologicalComplex c ⋙ G.mapHomologicalComplex c ≅ H.mapHomologicalComplex c :=
  NatIso.mapHomologicalComplex e c

/-- An equivalence of categories induces an equivalences between the respective categories
of homological complex.
-/
@[implicit_reducible, simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantbf407023524f04bb5fd26f576eedb96bddc1c52d13f757c668f224e4256dce43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantbf407023524f04bb5fd26f576eedb96bddc1c52d13f757c668f224e4256dce43.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e261a4044d3200b4f707c61dde9453f81a0690d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
