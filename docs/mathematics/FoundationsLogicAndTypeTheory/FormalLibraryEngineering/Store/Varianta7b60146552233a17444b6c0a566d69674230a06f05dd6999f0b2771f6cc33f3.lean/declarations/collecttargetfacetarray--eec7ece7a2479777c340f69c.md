# collectTargetFacetArray

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:850e9934345817b760d9a0f765bcfbbf4ba923f252da9b304f1321de44d16ec1",
  "kind": "def",
  "lexical_name": "collectTargetFacetArray",
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
  "slug": "collecttargetfacetarray--eec7ece7a2479777c340f69c",
  "source": {
    "blob": "3fdfd6bd5cae19c51d7884aa00345d220c2746c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 103,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Store/Varianta7b60146552233a17444b6c0a566d69674230a06f05dd6999f0b2771f6cc33f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eec7ece7a2479777c340f69ca9135c5b0513d721e4b23404be0ceea5f86c44f3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Store/Varianta7b60146552233a17444b6c0a566d69674230a06f05dd6999f0b2771f6cc33f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:850e9934345817b760d9a0f765bcfbbf4ba923f252da9b304f1321de44d16ec1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def collectTargetFacetArray
  (self : BuildStore) (facet : Name) [FamilyOut FacetOut facet α]
: Array (Job α) := Id.run do
  let mut res : Array (Job α) := #[]
  for ⟨k, v⟩ in self do
    if let some job := getTargetFacetJob? facet k v then
      res := res.push job
  return res

set_option linter.deprecated false in
/-- Derive an array of built external shared libraries from the store. -/
@[deprecated "Deprecated without replacement." (since := "2025-11-13")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Store/Varianta7b60146552233a17444b6c0a566d69674230a06f05dd6999f0b2771f6cc33f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Store/Varianta7b60146552233a17444b6c0a566d69674230a06f05dd6999f0b2771f6cc33f3.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fdfd6bd5cae19c51d7884aa00345d220c2746c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
