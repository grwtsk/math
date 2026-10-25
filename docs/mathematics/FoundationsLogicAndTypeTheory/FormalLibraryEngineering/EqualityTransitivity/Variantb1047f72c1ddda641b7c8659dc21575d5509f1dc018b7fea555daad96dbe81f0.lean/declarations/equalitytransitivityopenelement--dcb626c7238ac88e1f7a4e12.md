# equalityTransitivityOpenElement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:060300d0dabf6ee9bd80b3d4ecee3260708be6e14645df5aa7aa18b8cd6a214f",
  "kind": "def",
  "lexical_name": "equalityTransitivityOpenElement",
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
  "slug": "equalitytransitivityopenelement--dcb626c7238ac88e1f7a4e12",
  "source": {
    "blob": "1cd408c09e0ae70f4450ec5976ca23d0b3135057",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 20,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqualityTransitivity/Variantb1047f72c1ddda641b7c8659dc21575d5509f1dc018b7fea555daad96dbe81f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dcb626c7238ac88e1f7a4e124efd9ca13ead50c1ce9c8b23f58ac1b3cbea2a28",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqualityTransitivity/Variantb1047f72c1ddda641b7c8659dc21575d5509f1dc018b7fea555daad96dbe81f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:060300d0dabf6ee9bd80b3d4ecee3260708be6e14645df5aa7aa18b8cd6a214f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equalityTransitivityOpenElement :
    OpenConjectureElement EqualityTransitivityStatement where
  elementId := {
    id := { value := "open:geometry:common-notion:equality-transitivity" }
  }
  elementId_valid := by
    simp [StableId.Valid]
  name := "Equality is transitive"
  name_nonempty := by
    decide
  leanDeclarationName :=
    "Mathematics.Geometry.CommonNotions.EqualityTransitivityStatement"
  leanDeclarationName_nonempty := by
    decide

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqualityTransitivity/Variantb1047f72c1ddda641b7c8659dc21575d5509f1dc018b7fea555daad96dbe81f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqualityTransitivity/Variantb1047f72c1ddda641b7c8659dc21575d5509f1dc018b7fea555daad96dbe81f0.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1cd408c09e0ae70f4450ec5976ca23d0b3135057` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
