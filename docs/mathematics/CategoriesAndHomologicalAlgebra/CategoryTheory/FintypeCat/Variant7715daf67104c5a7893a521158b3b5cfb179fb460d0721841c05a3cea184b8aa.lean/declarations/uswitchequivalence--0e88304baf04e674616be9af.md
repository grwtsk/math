# uSwitchEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:22190c1d52142dc68452e5fbab691768fd17a41ef93f3107198339eb15ebc598",
  "kind": "def",
  "lexical_name": "uSwitchEquivalence",
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
  "slug": "uswitchequivalence--0e88304baf04e674616be9af",
  "source": {
    "blob": "0061e6375d56a071b3428312ccfd9abab07213ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 304,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant7715daf67104c5a7893a521158b3b5cfb179fb460d0721841c05a3cea184b8aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0e88304baf04e674616be9af3d2b143fddc99ccaa234aef50f9b86a60ae4c34f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant7715daf67104c5a7893a521158b3b5cfb179fb460d0721841c05a3cea184b8aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:22190c1d52142dc68452e5fbab691768fd17a41ef93f3107198339eb15ebc598`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def uSwitchEquivalence : FintypeCat.{u} ≌ FintypeCat.{v} where
  functor := uSwitch
  inverse := uSwitch
  unitIso := NatIso.ofComponents (fun X ↦ (equivEquivIso <|
    (uSwitch.obj X).uSwitchEquiv.trans X.uSwitchEquiv).symm)
  counitIso := NatIso.ofComponents (fun X ↦ equivEquivIso <|
    (uSwitch.obj X).uSwitchEquiv.trans X.uSwitchEquiv)
  functor_unitIso_comp X := by
    ext x
    simp [← uSwitchEquiv_naturality]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant7715daf67104c5a7893a521158b3b5cfb179fb460d0721841c05a3cea184b8aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant7715daf67104c5a7893a521158b3b5cfb179fb460d0721841c05a3cea184b8aa.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0061e6375d56a071b3428312ccfd9abab07213ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
