# defaultTaoHeatflowNegativeBoundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:36a1af11e0ec20e0af58e8a9022d3ca45d9fadffd6a2f446a263fb9e22410b38",
  "kind": "def",
  "lexical_name": "defaultTaoHeatflowNegativeBoundary",
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
  "slug": "defaulttaoheatflownegativeboundary--4b97bdfe511a1e52983eb97c",
  "source": {
    "blob": "fa1eef2d66c0aaa05f51528967c0ace06752056e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 163,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/GNSDeterminantExactnessBoundary/Variant64131a4aea818e012ea81c1a04e65c40ee07a0aeb9bd57cd0d26bc0c591ecaea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4b97bdfe511a1e52983eb97c8c806af0b0e1f3874c3cae9c321a7f60dcd87aee",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/GNSDeterminantExactnessBoundary/Variant64131a4aea818e012ea81c1a04e65c40ee07a0aeb9bd57cd0d26bc0c591ecaea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:36a1af11e0ec20e0af58e8a9022d3ca45d9fadffd6a2f446a263fb9e22410b38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def defaultTaoHeatflowNegativeBoundary : TaoHeatflowNegativeBoundary :=
  { heatflowRegularizationDeclared := true
    monotoneDissipationDeclared := false
    smoothingBoundaryDeclared := false
    negativeSpectrumRoutedToBoundary := true
    spuriousModesDamped := false
    determinantClassDecayControlled := false
    admittedNegativeBoundary := false
    theoremAuthority := false
    admittedNegativeBoundary_of_heatflow_gates := by
      intro _hHeat hDiss _hSmooth _hNeg _hDamped _hDecay
      cases hDiss
    no_theorem_authority_from_negative_boundary := rfl }

/-- Completed Tao heatflow negative boundary witness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/GNSDeterminantExactnessBoundary/Variant64131a4aea818e012ea81c1a04e65c40ee07a0aeb9bd57cd0d26bc0c591ecaea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/GNSDeterminantExactnessBoundary/Variant64131a4aea818e012ea81c1a04e65c40ee07a0aeb9bd57cd0d26bc0c591ecaea.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa1eef2d66c0aaa05f51528967c0ace06752056e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
