# getMatchingLabels

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cf4d483559697ff846536bfe8a9646372a6948e3b433f0a1631948b49bcb7bdc",
  "kind": "def",
  "lexical_name": "getMatchingLabels",
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
  "slug": "getmatchinglabels--3fa1cc930acd185c6b8b690c",
  "source": {
    "blob": "1cea174d649370c31b23ee606c2959dce31ec43c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 163,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Autolabel/Variant0061585b7850ea364c961d74d380995bc6f49eb2d00c97476923a877509f15b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3fa1cc930acd185c6b8b690c1f6d9e867e49344a9b4a4e8eeac440359c243f69",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Autolabel/Variant0061585b7850ea364c961d74d380995bc6f49eb2d00c97476923a877509f15b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cf4d483559697ff846536bfe8a9646372a6948e3b433f0a1631948b49bcb7bdc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getMatchingLabels (files : Array FilePath) : Array String :=
  let applicable := mathlibLabels.filter fun label ↦
    -- first exclude all files the label excludes,
    -- then see if any file remains included by the label
    let notExcludedFiles := files.filter fun file ↦
      label.exclusions.all (!·.isPrefixOf file)
    label.dirs.any (fun dir ↦ notExcludedFiles.any (dir.isPrefixOf ·))
  -- return sorted list of label names
  applicable.map (·.label) |>.qsort (· < ·)

/-!
Testing the functionality of the declarations defined in this script
-/
section Tests

-- Test `FilePath.isPrefixOf`
#guard ("Mathlib" / "Algebra" : FilePath).isPrefixOf ("Mathlib" / "Algebra" / "Basic.lean")

-- Test `FilePath.isPrefixOf` does not trigger on partial prefixes
#guard ! ("Mathlib" / "Algebra" : FilePath).isPrefixOf ("Mathlib" / "AlgebraicGeometry")

#guard getMatchingLabels #[] == #[]
-- Test default value for `label.dirs` works
#guard getMatchingLabels #["Mathlib" / "SetTheory" / "ZFC"] == #["t-set-theory"]
-- Test exclusion
#guard getMatchingLabels #["Mathlib" / "Tactic"/ "Abel.lean"] == #["t-meta"]
#guard getMatchingLabels #["Mathlib" / "Tactic"/ "Linter" / "Lint.lean"] == #["t-linter"]
#guard getMatchingLabels #[
  "Mathlib" / "Tactic"/ "Linter" / "Lint.lean",
  "Mathlib" / "Tactic" / "Abel.lean" ] == #["t-linter", "t-meta"]

-- Test targeting a file instead of a directory
#guard getMatchingLabels #["lake-manifest.json"] == #["dependency-bump"]

/-- Testing function to ensure the labels defined in `mathlibLabels` cover all
subfolders of `Mathlib/`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Autolabel/Variant0061585b7850ea364c961d74d380995bc6f49eb2d00c97476923a877509f15b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Autolabel/Variant0061585b7850ea364c961d74d380995bc6f49eb2d00c97476923a877509f15b2.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1cea174d649370c31b23ee606c2959dce31ec43c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
