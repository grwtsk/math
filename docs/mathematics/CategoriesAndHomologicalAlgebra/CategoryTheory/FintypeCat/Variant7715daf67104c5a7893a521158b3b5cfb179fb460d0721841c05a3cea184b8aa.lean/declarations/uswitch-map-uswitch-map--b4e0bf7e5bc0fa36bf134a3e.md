# uSwitch_map_uSwitch_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b447e05e-5fd3-1e07-4eeb-fbca24c2609c",
  "kind": "lemma",
  "lexical_name": "uSwitch_map_uSwitch_map",
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
  "slug": "uswitch-map-uswitch-map--b4e0bf7e5bc0fa36bf134a3e",
  "source": {
    "blob": "0061e6375d56a071b3428312ccfd9abab07213ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 295,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant7715daf67104c5a7893a521158b3b5cfb179fb460d0721841c05a3cea184b8aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4e0bf7e5bc0fa36bf134a3ec52a90e6007e5d2d5e1217cab7499bbaa25576d1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant7715daf67104c5a7893a521158b3b5cfb179fb460d0721841c05a3cea184b8aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b447e05e-5fd3-1e07-4eeb-fbca24c2609c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma uSwitch_map_uSwitch_map {X Y : FintypeCat.{u}} (f : X ⟶ Y) :
    uSwitch.map (uSwitch.map f) =
    (equivEquivIso ((uSwitch.obj X).uSwitchEquiv.trans X.uSwitchEquiv)).hom ≫
      f ≫ (equivEquivIso ((uSwitch.obj Y).uSwitchEquiv.trans
      Y.uSwitchEquiv)).inv := rfl

set_option backward.defeqAttrib.useBackward true in
attribute [local simp] uSwitch_map_uSwitch_map in
/-- `uSwitch.{u, v}` is an equivalence of categories with quasi-inverse `uSwitch.{v, u}`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant7715daf67104c5a7893a521158b3b5cfb179fb460d0721841c05a3cea184b8aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant7715daf67104c5a7893a521158b3b5cfb179fb460d0721841c05a3cea184b8aa.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0061e6375d56a071b3428312ccfd9abab07213ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
