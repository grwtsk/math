# equiv_chgUniv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:40ac4e32-ec8e-e53e-b44e-ed232695324b",
  "kind": "lemma",
  "lexical_name": "equiv_chgUniv",
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
  "slug": "equiv-chguniv--1fcafd93bf6075862ad6194f",
  "source": {
    "blob": "10b608049de74002e3ce4683a3b38f5f5b465e22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 260,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant9ae84989110567452a60902f65a92fb9215e2796e69bf98f1cb797e137636e06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1fcafd93bf6075862ad6194fe0f8492151a598f5d5be5ec6bf767e4b863f2529",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant9ae84989110567452a60902f65a92fb9215e2796e69bf98f1cb797e137636e06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40ac4e32-ec8e-e53e-b44e-ed232695324b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma equiv_chgUniv (L : C ⥤ D) [L.IsLocalization W] [L.CommShift M] {X Y : C} {m : M}
    [HasSmallLocalizedShiftedHom.{w} W M X Y]
    [HasSmallLocalizedShiftedHom.{w''} W M X Y]
    (e : SmallShiftedHom.{w} W X Y m) :
    equiv W L (chgUniv.{w''} e) = equiv W L e := by
  dsimp [equiv]
  congr
  apply SmallHom.equiv_chgUniv

end ChangeOfUniverse

end SmallShiftedHom

end Localization

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant9ae84989110567452a60902f65a92fb9215e2796e69bf98f1cb797e137636e06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant9ae84989110567452a60902f65a92fb9215e2796e69bf98f1cb797e137636e06.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10b608049de74002e3ce4683a3b38f5f5b465e22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
