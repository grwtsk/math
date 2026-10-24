# fstSndJointlyReflectColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:acd6d75e27fd41d7f86b2d04b70a6b371e24ab02e8b530c6acac36d6deaa1b23",
  "kind": "def",
  "lexical_name": "fstSndJointlyReflectColimit",
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
  "slug": "fstsndjointlyreflectcolimit--0466fffeb1a10c6309ee3e0e",
  "source": {
    "blob": "0e5ea46f8e7e568c08a2c20e064c95833700ae1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 151,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantba7ad8da5f03eea7fdde48f68c1b964bab486485fbca0969872aa8145201d0fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0466fffeb1a10c6309ee3e0e154a976bd1403938d75efca68f98175657af6759",
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

Occurrence: `declaration:acd6d75e27fd41d7f86b2d04b70a6b371e24ab02e8b530c6acac36d6deaa1b23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fstSndJointlyReflectColimit {F : J ⥤ Comma L R} {c : Cocone F}
    [PreservesColimit (F ⋙ fst _ _) L]
    (h₁ : IsColimit ((fst _ _).mapCocone c))
    (h₂ : IsColimit ((snd _ _).mapCocone c)) :
    IsColimit c where
  desc s :=
    { left := h₁.desc ((fst _ _).mapCocone s)
      right := h₂.desc ((snd _ _).mapCocone s)
      w := (isColimitOfPreserves L h₁).hom_ext (fun j ↦ by
        simp [← Functor.map_comp_assoc, ← Functor.map_comp,
          dsimp% h₁.fac ((fst _ _).mapCocone s) j,
          dsimp% h₂.fac ((snd _ _).mapCocone s) j]) }
  fac s j := by
    ext
    · exact h₁.fac ((fst _ _).mapCocone s) j
    · exact h₂.fac ((snd _ _).mapCocone s) j
  uniq s _ hm := by
    ext
    · exact h₁.uniq ((fst _ _).mapCocone s) _ (by simp [← hm])
    · exact h₂.uniq ((snd _ _).mapCocone s) _ (by simp [← hm])

/-- Provided that `L` preserves the appropriate colimit, then the cocone in `coconeOfPreserves` is
a colimit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantba7ad8da5f03eea7fdde48f68c1b964bab486485fbca0969872aa8145201d0fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantba7ad8da5f03eea7fdde48f68c1b964bab486485fbca0969872aa8145201d0fa.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e5ea46f8e7e568c08a2c20e064c95833700ae1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
