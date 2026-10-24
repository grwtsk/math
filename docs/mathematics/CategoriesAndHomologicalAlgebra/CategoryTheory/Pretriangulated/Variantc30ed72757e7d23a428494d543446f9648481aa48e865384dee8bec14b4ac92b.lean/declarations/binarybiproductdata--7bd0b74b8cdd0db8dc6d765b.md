# binaryBiproductData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bc7799f845e000bf3cc4766c0cae8c37842a95522e2d53385c30432d3dd49689",
  "kind": "def",
  "lexical_name": "binaryBiproductData",
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
  "slug": "binarybiproductdata--7bd0b74b8cdd0db8dc6d765b",
  "source": {
    "blob": "2761fb222aa79c26ed3573e707f04ca2e0e97b02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 564,
    "line": 542,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variantc30ed72757e7d23a428494d543446f9648481aa48e865384dee8bec14b4ac92b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7bd0b74b8cdd0db8dc6d765b976cd75cfa6fec3d6c26b9f5610904c6119fbeb4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variantc30ed72757e7d23a428494d543446f9648481aa48e865384dee8bec14b4ac92b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bc7799f845e000bf3cc4766c0cae8c37842a95522e2d53385c30432d3dd49689`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 542–564.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def binaryBiproductData (T : Triangle C) (hT : T ∈ distTriang C) (hT₀ : T.mor₃ = 0)
    (inr : T.obj₃ ⟶ T.obj₂) (inr_snd : inr ≫ T.mor₂ = 𝟙 _) (fst : T.obj₂ ⟶ T.obj₁)
    (total : fst ≫ T.mor₁ + T.mor₂ ≫ inr = 𝟙 T.obj₂) :
    BinaryBiproductData T.obj₁ T.obj₃ := by
  have : Mono T.mor₁ := T.mono₁ hT hT₀
  have eq : fst ≫ T.mor₁ = 𝟙 T.obj₂ - T.mor₂ ≫ inr := by rw [← total, add_sub_cancel_right]
  exact
    { bicone :=
      { pt := T.obj₂
        fst := fst
        snd := T.mor₂
        inl := T.mor₁
        inr := inr
        inl_fst := by
          simp only [← cancel_mono T.mor₁, assoc, id_comp, eq, comp_sub, comp_id,
            comp_distTriang_mor_zero₁₂_assoc _ hT, zero_comp, sub_zero]
        inl_snd := comp_distTriang_mor_zero₁₂ _ hT
        inr_fst := by
          simp only [← cancel_mono T.mor₁, assoc, eq, comp_sub, reassoc_of% inr_snd,
            comp_id, sub_self, zero_comp]
        inr_snd := inr_snd }
      isBilimit := isBinaryBilimitOfTotal _ total }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variantc30ed72757e7d23a428494d543446f9648481aa48e865384dee8bec14b4ac92b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variantc30ed72757e7d23a428494d543446f9648481aa48e865384dee8bec14b4ac92b.lean#L542).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2761fb222aa79c26ed3573e707f04ca2e0e97b02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
