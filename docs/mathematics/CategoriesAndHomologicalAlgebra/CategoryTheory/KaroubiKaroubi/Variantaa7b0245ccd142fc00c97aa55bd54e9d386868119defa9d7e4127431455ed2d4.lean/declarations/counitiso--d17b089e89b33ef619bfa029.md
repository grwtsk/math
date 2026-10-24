# counitIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bdc7a25d651791fc9fc63de686763d7eefe4a0114cc089f66bf0301366b60dbc",
  "kind": "def",
  "lexical_name": "counitIso",
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
  "slug": "counitiso--d17b089e89b33ef619bfa029",
  "source": {
    "blob": "2c13807067946f18ec7a877c234046380af7375f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 68,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KaroubiKaroubi/Variantaa7b0245ccd142fc00c97aa55bd54e9d386868119defa9d7e4127431455ed2d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d17b089e89b33ef619bfa02968977c62f22ea63b97b0b4d79e5333a4a0627967",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/KaroubiKaroubi/Variantaa7b0245ccd142fc00c97aa55bd54e9d386868119defa9d7e4127431455ed2d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bdc7a25d651791fc9fc63de686763d7eefe4a0114cc089f66bf0301366b60dbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def counitIso : inverse C ⋙ toKaroubi (Karoubi C) ≅ 𝟭 (Karoubi (Karoubi C)) where
  hom :=
    { app := fun P =>
        { f :=
            { f := P.p.1
              comm := by simp }
          comm := by simp } }
  inv :=
    { app := fun P =>
        { f :=
            { f := P.p.1
              comm := by simp }
          comm := by simp } }
#align category_theory.idempotents.karoubi_karoubi.counit_iso CategoryTheory.Idempotents.KaroubiKaroubi.counitIso

/-- The equivalence `Karoubi C ≌ Karoubi (Karoubi C)` -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/KaroubiKaroubi/Variantaa7b0245ccd142fc00c97aa55bd54e9d386868119defa9d7e4127431455ed2d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KaroubiKaroubi/Variantaa7b0245ccd142fc00c97aa55bd54e9d386868119defa9d7e4127431455ed2d4.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c13807067946f18ec7a877c234046380af7375f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
