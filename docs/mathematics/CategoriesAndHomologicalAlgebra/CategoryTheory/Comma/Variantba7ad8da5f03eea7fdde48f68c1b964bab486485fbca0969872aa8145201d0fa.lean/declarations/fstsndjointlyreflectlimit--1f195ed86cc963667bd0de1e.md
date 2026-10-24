# fstSndJointlyReflectLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f60cb45eb95a9e98835aa78a32f570cd22a569a21e94b30bce4fcf44946b4126",
  "kind": "def",
  "lexical_name": "fstSndJointlyReflectLimit",
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
  "slug": "fstsndjointlyreflectlimit--1f195ed86cc963667bd0de1e",
  "source": {
    "blob": "0e5ea46f8e7e568c08a2c20e064c95833700ae1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 88,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantba7ad8da5f03eea7fdde48f68c1b964bab486485fbca0969872aa8145201d0fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1f195ed86cc963667bd0de1e9ae06a8b72c683818820a69239d75e348abd9a75",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantba7ad8da5f03eea7fdde48f68c1b964bab486485fbca0969872aa8145201d0fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f60cb45eb95a9e98835aa78a32f570cd22a569a21e94b30bce4fcf44946b4126`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fstSndJointlyReflectLimit {F : J ⥤ Comma L R} {c : Cone F}
    [PreservesLimit (F ⋙ snd _ _) R]
    (h₁ : IsLimit ((fst _ _).mapCone c))
    (h₂ : IsLimit ((snd _ _).mapCone c)) :
    IsLimit c where
  lift s :=
    { left := h₁.lift ((fst _ _).mapCone s)
      right := h₂.lift ((snd _ _).mapCone s)
      w := (isLimitOfPreserves R h₂).hom_ext (fun j ↦ by
        simp [← Functor.map_comp, ← Functor.map_comp_assoc, ← CommaMorphism.w,
          dsimp% h₂.fac ((snd _ _).mapCone s) j,
          dsimp% h₁.fac ((fst _ _).mapCone s) j]) }
  fac s j := by
    ext
    · exact h₁.fac ((fst _ _).mapCone s) j
    · exact h₂.fac ((snd _ _).mapCone s) j
  uniq s _ hm := by
    ext
    · exact h₁.uniq ((fst _ _).mapCone s) _ (by simp [← hm])
    · exact h₂.uniq ((snd _ _).mapCone s) _ (by simp [← hm])

/-- Provided that `R` preserves the appropriate limit, then the cone in `coneOfPreserves` is a
limit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantba7ad8da5f03eea7fdde48f68c1b964bab486485fbca0969872aa8145201d0fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantba7ad8da5f03eea7fdde48f68c1b964bab486485fbca0969872aa8145201d0fa.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e5ea46f8e7e568c08a2c20e064c95833700ae1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
