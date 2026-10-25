# classify

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b40c4039ce77199e75156c8a9e31dd7ed9fee1f82a23d8ecc474b08a37c18d23",
  "kind": "def",
  "lexical_name": "classify",
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
  "slug": "classify--4ade66ebb4e521fbde019c28",
  "source": {
    "blob": "743b23ebc6042ecab12c135b533b1c749173c83c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 63,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant24cbd0f69d7e816ee4999ca14fc246ddfe65ec9f410ccdd16b287a24fb53be81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ade66ebb4e521fbde019c286000126e3a30d34f2730e89558ac6ae076cfcd5e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant24cbd0f69d7e816ee4999ca14fc246ddfe65ec9f410ccdd16b287a24fb53be81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b40c4039ce77199e75156c8a9e31dd7ed9fee1f82a23d8ecc474b08a37c18d23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def classify
    (reference point : RhetoricalCoordinate) : RhetoricalRegion :=
  let horizontal := point.structuralHierarchy - reference.structuralHierarchy
  let vertical := point.interpreterPrecision - reference.interpreterPrecision
  if horizontal = 0 ∧ vertical = 0 then .equilibrium
  else if horizontal = 0 ∧ 0 < vertical then .positivePrecisionAxis
  else if horizontal = 0 then .negativePrecisionAxis
  else if vertical = 0 ∧ 0 < horizontal then .positiveStructuralAxis
  else if vertical = 0 then .negativeStructuralAxis
  else if 0 < horizontal ∧ 0 < vertical then .formalHypotaxis
  else if horizontal < 0 ∧ 0 < vertical then .formalParataxis
  else if horizontal < 0 ∧ vertical < 0 then .pragmaticParataxis
  else .pragmaticHypotaxis

/-- An exposition carries rhetorical metadata and one semantic value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant24cbd0f69d7e816ee4999ca14fc246ddfe65ec9f410ccdd16b287a24fb53be81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant24cbd0f69d7e816ee4999ca14fc246ddfe65ec9f410ccdd16b287a24fb53be81.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `743b23ebc6042ecab12c135b533b1c749173c83c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
