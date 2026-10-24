# widePullbackι_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2b82f6d546929eebe9ad73744170e1e5ece1b50da4d77894d91281aaf7b3fdcf",
  "kind": "instance",
  "lexical_name": "widePullbackι_mono",
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
  "slug": "widepullback-mono--738810ca92d1489ae540b30b",
  "source": {
    "blob": "d0da1420c6857c7df321c9a49f74738c6a073bd4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 640,
    "line": 628,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variantc1ac0b53ef655adeb65c15c932dd4c7583f89345c0affa5b08d19806223f3c62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:738810ca92d1489ae540b30b77cfe670e808ac499aa2acfb032bf14ff6a2730e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variantc1ac0b53ef655adeb65c15c932dd4c7583f89345c0affa5b08d19806223f3c62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2b82f6d546929eebe9ad73744170e1e5ece1b50da4d77894d91281aaf7b3fdcf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 628–640.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance widePullbackι_mono {A : C} (s : Set (Subobject A)) : Mono (widePullbackι s) :=
  ⟨fun u v h =>
    limit.hom_ext fun j => by
      cases j
      · exact h
      · apply (cancel_mono ((equivShrink (Subobject A)).symm _).arrow).1
        rw [assoc, assoc]
        erw [limit.w (wideCospan s) (WidePullbackShape.Hom.term _)]
        exact h⟩
#align category_theory.subobject.wide_pullback_ι_mono CategoryTheory.Subobject.widePullbackι_mono

/-- When `[WellPowered C]` and `[HasWidePullbacks C]`, `Subobject A` has arbitrary infimums.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variantc1ac0b53ef655adeb65c15c932dd4c7583f89345c0affa5b08d19806223f3c62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variantc1ac0b53ef655adeb65c15c932dd4c7583f89345c0affa5b08d19806223f3c62.lean#L628).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0da1420c6857c7df321c9a49f74738c6a073bd4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
