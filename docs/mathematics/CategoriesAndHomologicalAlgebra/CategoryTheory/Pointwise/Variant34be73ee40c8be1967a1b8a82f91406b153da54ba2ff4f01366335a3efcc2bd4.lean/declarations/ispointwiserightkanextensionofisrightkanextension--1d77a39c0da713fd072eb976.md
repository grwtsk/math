# isPointwiseRightKanExtensionOfIsRightKanExtension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0f6590363088a66e9daa5cf9c7b505acb9e96d437e951ca904e858b6533ce6e0",
  "kind": "def",
  "lexical_name": "isPointwiseRightKanExtensionOfIsRightKanExtension",
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
  "slug": "ispointwiserightkanextensionofisrightkanextension--1d77a39c0da713fd072eb976",
  "source": {
    "blob": "4c008922478951fc38fc92e8a36209f7b0c6640e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 539,
    "line": 527,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointwise/Variant34be73ee40c8be1967a1b8a82f91406b153da54ba2ff4f01366335a3efcc2bd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1d77a39c0da713fd072eb976673dbc6b36d30d4428b6430f63c987f81640debb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointwise/Variant34be73ee40c8be1967a1b8a82f91406b153da54ba2ff4f01366335a3efcc2bd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0f6590363088a66e9daa5cf9c7b505acb9e96d437e951ca904e858b6533ce6e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 527–539.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isPointwiseRightKanExtensionOfIsRightKanExtension (F' : D ⥤ H) (α : L ⋙ F' ⟶ F)
    [F'.IsRightKanExtension α] :
    (RightExtension.mk _ α).IsPointwiseRightKanExtension :=
  RightExtension.isPointwiseRightKanExtensionEquivOfIso
    (IsLimit.conePointUniqueUpToIso (pointwiseRightKanExtensionIsUniversal L F)
      (F'.isUniversalOfIsRightKanExtension α))
    (pointwiseRightKanExtensionIsPointwiseRightKanExtension L F)

end

end Functor

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointwise/Variant34be73ee40c8be1967a1b8a82f91406b153da54ba2ff4f01366335a3efcc2bd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointwise/Variant34be73ee40c8be1967a1b8a82f91406b153da54ba2ff4f01366335a3efcc2bd4.lean#L527).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c008922478951fc38fc92e8a36209f7b0c6640e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
