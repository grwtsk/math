# wholeExceedsPartOpenElement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b1ae3713f82c8909c6797772e2caff97ae804ef67a3f8c6c0dd9fe8b55102bad",
  "kind": "def",
  "lexical_name": "wholeExceedsPartOpenElement",
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
  "slug": "wholeexceedspartopenelement--6dbefd087c76456334a2d680",
  "source": {
    "blob": "55e261e1fb1a3741cff914631d3c34e083bd51f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 19,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WholeExceedsPart/Variantcfd7dad38a3e586e2f8828062a2637a617d8f6d21ff5efee62c8e86ba8b4ef0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6dbefd087c76456334a2d680937c80a7d47983d12b451016be28cd448695a99c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WholeExceedsPart/Variantcfd7dad38a3e586e2f8828062a2637a617d8f6d21ff5efee62c8e86ba8b4ef0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b1ae3713f82c8909c6797772e2caff97ae804ef67a3f8c6c0dd9fe8b55102bad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def wholeExceedsPartOpenElement :
    OpenConjectureElement WholeExceedsPartStatement where
  elementId := {
    id := { value := "open:geometry:common-notion:whole-exceeds-part" }
  }
  elementId_valid := by
    simp [StableId.Valid]
  name := "A natural magnitude is smaller than a positive extension"
  name_nonempty := by
    decide
  leanDeclarationName :=
    "Mathematics.Geometry.CommonNotions.WholeExceedsPartStatement"
  leanDeclarationName_nonempty := by
    decide

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WholeExceedsPart/Variantcfd7dad38a3e586e2f8828062a2637a617d8f6d21ff5efee62c8e86ba8b4ef0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WholeExceedsPart/Variantcfd7dad38a3e586e2f8828062a2637a617d8f6d21ff5efee62c8e86ba8b4ef0f.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55e261e1fb1a3741cff914631d3c34e083bd51f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
