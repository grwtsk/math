# checkedConnesSpectralTripleImportSurface

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8140d6151420a68e312aec75ff74f4360762c8787d44091ba7237cad4b4cc083",
  "kind": "def",
  "lexical_name": "checkedConnesSpectralTripleImportSurface",
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
  "slug": "checkedconnesspectraltripleimportsurface--52d023b0effed794d83d063b",
  "source": {
    "blob": "777df0e965b16626a31bcc2b74a7b88ca8e18768",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 83,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/ConnesTaoCheckedTheoremImports/Variant56b2d7540b1ddbbe610b331f19bfd8c59894359e7b3c106332be2831a8dcebf5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:52d023b0effed794d83d063b58569ccde366668080b49762f854574fc4b44590",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/ConnesTaoCheckedTheoremImports/Variant56b2d7540b1ddbbe610b331f19bfd8c59894359e7b3c106332be2831a8dcebf5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8140d6151420a68e312aec75ff74f4360762c8787d44091ba7237cad4b4cc083`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkedConnesSpectralTripleImportSurface : CheckedTheoremImportSurface :=
  { theoremId := "connes.spectral_triple_positive_boundary"
    sourceFamily := "Connes noncommutative geometry spectral triple package"
    importedStatementLabel := "faithful representation, self-adjoint Dirac, bounded commutators, compact resolvent or semifinite substitute"
    exactTargetMatched := true
    leanStatementTranslated := true
    checkedProofArtifactAttached := true
    importVerified := true
    status := ImportedTheoremStatus.checkedTheorem
    statusText := "CheckedTheorem"
    theoremAuthority := true
    determinantBoundaryTransferAllowed := true
    rhTransferAllowed := false
    checkedTheorem_of_verified_import := by
      intro _hTarget _hTranslated _hProof _hVerified
      rfl
    determinant_transfer_of_checked_theorem := by
      intro _hStatus
      rfl
    no_rh_transfer_from_import_alone := rfl }

/-- Default Tao heatflow import posture: named source recorded, but no checked
Lean proof artifact attached yet. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/ConnesTaoCheckedTheoremImports/Variant56b2d7540b1ddbbe610b331f19bfd8c59894359e7b3c106332be2831a8dcebf5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/ConnesTaoCheckedTheoremImports/Variant56b2d7540b1ddbbe610b331f19bfd8c59894359e7b3c106332be2831a8dcebf5.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `777df0e965b16626a31bcc2b74a7b88ca8e18768` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
