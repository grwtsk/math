# defaultConnesSpectralTripleImportSurface

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:471a7f7d20e09cd641f8cd4ef64fadeab5655caa5024ebd969aa0d0ef33ae577",
  "kind": "def",
  "lexical_name": "defaultConnesSpectralTripleImportSurface",
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
  "slug": "defaultconnesspectraltripleimportsurface--13c4e43ccb792342de879a6d",
  "source": {
    "blob": "f2f23e0fafda458ded151f0f44c3160de6ee094c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 52,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/ConnesTaoCheckedTheoremImports/Variantdad03915adf8fbcaf8795a2a37bfb47cfa5bcda70a000b55a69bac445dbd7271.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:13c4e43ccb792342de879a6dd1a0b67f3dab03b97d84e23aab10e6ad3456f4e6",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/ConnesTaoCheckedTheoremImports/Variantdad03915adf8fbcaf8795a2a37bfb47cfa5bcda70a000b55a69bac445dbd7271.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:471a7f7d20e09cd641f8cd4ef64fadeab5655caa5024ebd969aa0d0ef33ae577`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def defaultConnesSpectralTripleImportSurface : CheckedTheoremImportSurface :=
  { theoremId := "connes.spectral_triple_positive_boundary"
    sourceFamily := "Connes noncommutative geometry spectral triple package"
    importedStatementLabel := "faithful representation, self-adjoint Dirac, bounded commutators, compact resolvent or semifinite substitute"
    exactTargetMatched := true
    leanStatementTranslated := false
    checkedProofArtifactAttached := false
    importVerified := false
    status := ImportedTheoremStatus.referenceOnly
    statusText := "referenceOnly"
    theoremAuthority := false
    determinantBoundaryTransferAllowed := false
    rhTransferAllowed := false
    checkedTheorem_of_verified_import := by
      intro _hTarget hTranslated _hProof _hVerified
      cases hTranslated
    determinant_transfer_of_checked_theorem := by
      intro hStatus
      cases hStatus
    no_rh_transfer_from_import_alone := rfl }

/-- Completed Connes import surface.  This is the status that may be used by the
local determinant boundary as a checked positive-boundary input. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/ConnesTaoCheckedTheoremImports/Variantdad03915adf8fbcaf8795a2a37bfb47cfa5bcda70a000b55a69bac445dbd7271.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/ConnesTaoCheckedTheoremImports/Variantdad03915adf8fbcaf8795a2a37bfb47cfa5bcda70a000b55a69bac445dbd7271.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2f23e0fafda458ded151f0f44c3160de6ee094c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
