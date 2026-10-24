# equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6c22c24cf93c782c6fb473bd02dca265fb1b6313550bd0b252cc1ae2885b66c6",
  "kind": "def",
  "lexical_name": "equiv",
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
  "slug": "equiv--c6b7ec34c1f72b08ddcf9146",
  "source": {
    "blob": "4f4f446197a455f01cf0f2b98301d65a7f064991",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 82,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DayFunctor/Variantdf584f46171e0274092cbf2fc365cb35dc169c3bfbcdab1dc609703211880929.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c6b7ec34c1f72b08ddcf914605a4fb0aef13a7e3cd6e38c2dac6178a6e0eaccb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DayFunctor/Variantdf584f46171e0274092cbf2fc365cb35dc169c3bfbcdab1dc609703211880929.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6c22c24cf93c782c6fb473bd02dca265fb1b6313550bd0b252cc1ae2885b66c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equiv : (C ⊛⥤ V) ≌ (C ⥤ V) where
  functor :=
    { obj F := F.functor
      map α := α.natTrans }
  inverse :=
    { obj F := .mk F
      map α := .mk α }
  unitIso := .refl _
  counitIso := .refl _

variable
    [hasDayConvolution : ∀ (F G : C ⥤ V),
      (tensor C).HasPointwiseLeftKanExtension (F ⊠ G)]
    [hasDayConvolutionUnit :
      (Functor.fromPUnit.{0} <| 𝟙_ C).HasPointwiseLeftKanExtension
        (Functor.fromPUnit.{0} <| 𝟙_ V)]
    [∀ (v : V) (d : C), Limits.PreservesColimitsOfShape
      (CostructuredArrow (tensor C) d) (tensorLeft v)]
    [∀ (v : V) (d : C), Limits.PreservesColimitsOfShape
      (CostructuredArrow (tensor C) d) (tensorRight v)]
    [∀ (v : V) (d : C), Limits.PreservesColimitsOfShape
      (CostructuredArrow (Functor.fromPUnit.{0} <| 𝟙_ C) d) (tensorLeft v)]
    [∀ (v : V) (d : C), Limits.PreservesColimitsOfShape
      (CostructuredArrow (Functor.fromPUnit.{0} <| 𝟙_ C) d) (tensorRight v)]
    [∀ (v : V) (d : C × C),
      Limits.PreservesColimitsOfShape
        (CostructuredArrow ((𝟭 C).prod <| Functor.fromPUnit.{0} <| 𝟙_ C) d)
        (tensorRight v)]
    [∀ (v : V) (d : C × C),
      Limits.PreservesColimitsOfShape
        (CostructuredArrow ((tensor C).prod (𝟭 C)) d) (tensorRight v)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DayFunctor/Variantdf584f46171e0274092cbf2fc365cb35dc169c3bfbcdab1dc609703211880929.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DayFunctor/Variantdf584f46171e0274092cbf2fc365cb35dc169c3bfbcdab1dc609703211880929.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f4f446197a455f01cf0f2b98301d65a7f064991` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
