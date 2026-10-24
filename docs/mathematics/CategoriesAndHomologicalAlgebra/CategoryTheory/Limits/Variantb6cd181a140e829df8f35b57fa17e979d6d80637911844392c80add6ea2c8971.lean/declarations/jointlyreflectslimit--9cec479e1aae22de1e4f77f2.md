# jointlyReflectsLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c15f3b3221b8bd256d72d655d69c4c7dbcad7af630def492bbcde26ad6f41b29",
  "kind": "def",
  "lexical_name": "jointlyReflectsLimit",
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
  "slug": "jointlyreflectslimit--9cec479e1aae22de1e4f77f2",
  "source": {
    "blob": "ecabd9af3b0829c16a9fdb00202491d6e6ed4e4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 36,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb6cd181a140e829df8f35b57fa17e979d6d80637911844392c80add6ea2c8971.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9cec479e1aae22de1e4f77f2792131bb0392ca13f2971c2faeb14d7a7958bc6f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb6cd181a140e829df8f35b57fa17e979d6d80637911844392c80add6ea2c8971.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c15f3b3221b8bd256d72d655d69c4c7dbcad7af630def492bbcde26ad6f41b29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def jointlyReflectsLimit
    {c : Cone G} (hc : ∀ i, IsLimit ((F i).mapCone c))
    [HasLimit G] [∀ i, PreservesLimit G (F i)] :
    IsLimit c := by
  suffices IsIso (limit.lift _ c) from
    IsLimit.ofIsoLimit (limit.isLimit _)
      (Cone.ext (asIso (limit.lift _ c) :)).symm
  rw [hF.isIso_iff]
  intro i
  let H := isLimitOfPreserves (F i) (limit.isLimit G)
  let e := IsLimit.conePointUniqueUpToIso (hc i) H
  have : e.hom = (F i).map (limit.lift G c) :=
    H.hom_ext (fun j ↦ by
      simpa [← Functor.map_comp] using
        IsLimit.conePointUniqueUpToIso_hom_comp (hc i) H j)
  rw [← this]
  infer_instance

set_option backward.defeqAttrib.useBackward true in
/-- If `Fᵢ : C ⥤ Dᵢ` is a conservative family of functors which also
preserve the (existing) colimit of a functor `G : J ⥤ C`, then a cocone
for `G` is a colimit if it is so after applying the functors `Fᵢ`
(see also `reflectsColimit_of_reflectsIsomorphisms` in the file
`Mathlib/CategoryTheory/Limits/Preserves/Basic.lean` for the corresponding
result for a single functor) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb6cd181a140e829df8f35b57fa17e979d6d80637911844392c80add6ea2c8971.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb6cd181a140e829df8f35b57fa17e979d6d80637911844392c80add6ea2c8971.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecabd9af3b0829c16a9fdb00202491d6e6ed4e4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
