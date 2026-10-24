# pullback_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a385d895-3fe1-3d40-743c-f4c9ec9b6065",
  "kind": "theorem",
  "lexical_name": "pullback_map",
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
  "slug": "pullback-map--8dfbf4bb757483cd9ef9e072",
  "source": {
    "blob": "ae98efbe715d7f1c5839b32c72e2903ec63d7702",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 225,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb0de574cef32fec1276b9668c18b337376fa08cb95bdbb5eb9c5a60035d23017.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8dfbf4bb757483cd9ef9e0724579709c27b3318b38c22a873c5d708c9a2f7cac",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb0de574cef32fec1276b9668c18b337376fa08cb95bdbb5eb9c5a60035d23017.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a385d895-3fe1-3d40-743c-f4c9ec9b6065`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pullback_map [HasPullbacks C]
    [IsStableUnderBaseChange P] [P.IsStableUnderComposition] {S X X' Y Y' : C} {f : X ⟶ S}
    {g : Y ⟶ S} {f' : X' ⟶ S} {g' : Y' ⟶ S} {i₁ : X ⟶ X'} {i₂ : Y ⟶ Y'} (h₁ : P i₁) (h₂ : P i₂)
    (e₁ : f = i₁ ≫ f') (e₂ : g = i₂ ≫ g') :
    P (pullback.map f g f' g' i₁ i₂ (𝟙 _) ((Category.comp_id _).trans e₁)
        ((Category.comp_id _).trans e₂)) := by
  have :
    pullback.map f g f' g' i₁ i₂ (𝟙 _) ((Category.comp_id _).trans e₁)
        ((Category.comp_id _).trans e₂) =
      ((pullbackSymmetry _ _).hom ≫
          ((Over.pullback _).map (Over.homMk _ e₂.symm : Over.mk g ⟶ Over.mk g')).left) ≫
        (pullbackSymmetry _ _).hom ≫
          ((Over.pullback g').map (Over.homMk _ e₁.symm : Over.mk f ⟶ Over.mk f')).left := by
    ext <;> dsimp <;> simp
  rw [this]
  apply P.comp_mem <;> rw [P.cancel_left_of_respectsIso]
  exacts [baseChange_map _ (Over.homMk _ e₂.symm : Over.mk g ⟶ Over.mk g') h₂,
    baseChange_map _ (Over.homMk _ e₁.symm : Over.mk f ⟶ Over.mk f') h₁]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb0de574cef32fec1276b9668c18b337376fa08cb95bdbb5eb9c5a60035d23017.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb0de574cef32fec1276b9668c18b337376fa08cb95bdbb5eb9c5a60035d23017.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae98efbe715d7f1c5839b32c72e2903ec63d7702` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
