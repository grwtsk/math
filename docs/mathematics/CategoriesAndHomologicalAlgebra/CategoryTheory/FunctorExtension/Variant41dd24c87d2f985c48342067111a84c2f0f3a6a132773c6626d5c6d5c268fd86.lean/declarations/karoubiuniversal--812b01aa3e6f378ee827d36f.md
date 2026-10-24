# karoubiUniversal₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bf7b83a6770ab57e045b12bf6846060bbcb009f88cedcbe08fc6b928c76124f7",
  "kind": "def",
  "lexical_name": "karoubiUniversal₁",
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
  "slug": "karoubiuniversal--812b01aa3e6f378ee827d36f",
  "source": {
    "blob": "89e549022abb3156c12b4a53b1ae74939ad65071",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 161,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant41dd24c87d2f985c48342067111a84c2f0f3a6a132773c6626d5c6d5c268fd86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:812b01aa3e6f378ee827d36fcddeedbd4ceefd391589613dc67cb835efab9011",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant41dd24c87d2f985c48342067111a84c2f0f3a6a132773c6626d5c6d5c268fd86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bf7b83a6770ab57e045b12bf6846060bbcb009f88cedcbe08fc6b928c76124f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def karoubiUniversal₁ : C ⥤ Karoubi D ≌ Karoubi C ⥤ Karoubi D where
  functor := functorExtension₁ C D
  inverse := (whiskeringLeft C (Karoubi C) (Karoubi D)).obj (toKaroubi C)
  unitIso := (functorExtension₁CompWhiskeringLeftToKaroubiIso C D).symm
  counitIso := KaroubiUniversal₁.counitIso C D
  functor_unitIso_comp F := by
    ext P
    dsimp
    rw [comp_p, ← comp_f, ← F.map_comp, P.idem]

/-- Compatibility isomorphisms of `functorExtension₁` with respect to the
composition of functors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant41dd24c87d2f985c48342067111a84c2f0f3a6a132773c6626d5c6d5c268fd86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant41dd24c87d2f985c48342067111a84c2f0f3a6a132773c6626d5c6d5c268fd86.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89e549022abb3156c12b4a53b1ae74939ad65071` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
