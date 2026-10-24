# isCardinalFilteredGenerator'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00f1cad7-bf6c-07e2-a072-315c8ffc88b9",
  "kind": "lemma",
  "lexical_name": "isCardinalFilteredGenerator'",
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
  "slug": "iscardinalfilteredgenerator--89bdef8dad084419d9d20af4",
  "source": {
    "blob": "17b09ef7bfcebda13fd61fb4ce3f6cacd3d29878",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 535,
    "line": 507,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant90e4767b8e4504c4c4154d2c355b01b3f343ce93e5915bdcdaacff968b189293.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89bdef8dad084419d9d20af4607a1a932f2788cc9ea3e5ef0e2cc064cf34b091",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant90e4767b8e4504c4c4154d2c355b01b3f343ce93e5915bdcdaacff968b189293.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00f1cad7-bf6c-07e2-a072-315c8ffc88b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 507–535.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isCardinalFilteredGenerator'
    [IsCardinalAccessibleCategory C κ₁] :
    (generator κ₁ κ₂ C).IsCardinalFilteredGenerator κ₂ where
  le_isCardinalPresentable := generator_le_isCardinalPresentable hκ C
  exists_colimitsOfShape X := by
    have hκ₁ := isCardinalFilteredGenerator_isCardinalPresentable C κ₁
    obtain ⟨J, _, _, ⟨p⟩⟩ :
        ∃ (J : Type w) (_ : PartialOrder J) (_ : IsCardinalFiltered J κ₁),
      Nonempty ((isCardinalPresentable C κ₁).ColimitOfShape J X) := by
        obtain ⟨J₀, _, _, ⟨p₀⟩⟩ := hκ₁.exists_colimitsOfShape X
        obtain ⟨J, _, _, F, _⟩ := IsCardinalFiltered.exists_cardinal_directed J₀ κ₁
        exact ⟨_, _, inferInstance, ⟨p₀.reindex F⟩⟩
    refine ⟨Subtype (IsCardinalFilteredAndHasCardinalLT κ₁ κ₂ J), inferInstance,
      isCardinalFiltered_subtype hκ',
      ⟨{ diag := _, ι := _, isColimit := isColimit κ₁ κ₂ p, prop_diag_obj A := ?_ }⟩⟩
    have : (generator κ₁ κ₂ C).IsClosedUnderColimitsOfShape A.val := by
      apply ObjectProperty.isClosedUnderColimitsOfShape_colimitsCardinalClosure
      rw [hasCardinalLT_arrow_iff_of_isThin _ _ (IsRegular.aleph0_le Fact.out)]
      exact A.prop.2
    exact ObjectProperty.prop_colimit _ _
      (fun ⟨a, ha⟩ ↦ ObjectProperty.le_colimitsCardinalClosure _ _ _
        (p.prop_diag_obj a))

include hκ hκ' in
/-- This is the implication (iv) → (ii) in the characterizations
of `SharplyLT κ₁ κ₂` in the docstring of this file.
See the lemma `Cardinal.SharplyLT.isCardinalAccessibleCategory`
for the version of the lemma with the assumption `SharplyLT κ₁ κ₂`
instead of the condition (iv). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant90e4767b8e4504c4c4154d2c355b01b3f343ce93e5915bdcdaacff968b189293.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant90e4767b8e4504c4c4154d2c355b01b3f343ce93e5915bdcdaacff968b189293.lean#L507).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17b09ef7bfcebda13fd61fb4ce3f6cacd3d29878` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
