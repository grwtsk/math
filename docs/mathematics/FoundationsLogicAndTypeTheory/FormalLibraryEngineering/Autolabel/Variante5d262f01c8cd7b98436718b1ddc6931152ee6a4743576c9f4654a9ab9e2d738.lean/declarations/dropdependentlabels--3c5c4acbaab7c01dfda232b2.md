# dropDependentLabels

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9a49360be7a1d3a74b21a1d06d7ffd8a2992f3d6f46ae8e89604c2cc94782636",
  "kind": "def",
  "lexical_name": "dropDependentLabels",
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
  "slug": "dropdependentlabels--3c5c4acbaab7c01dfda232b2",
  "source": {
    "blob": "08d48cba7cf8b858e47f5dd0cf4ae37c63e1d6ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 319,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Autolabel/Variante5d262f01c8cd7b98436718b1ddc6931152ee6a4743576c9f4654a9ab9e2d738.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c5c4acbaab7c01dfda232b26f209a17723697173bc939c723a336541fb66c80",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Autolabel/Variante5d262f01c8cd7b98436718b1ddc6931152ee6a4743576c9f4654a9ab9e2d738.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9a49360be7a1d3a74b21a1d06d7ffd8a2992f3d6f46ae8e89604c2cc94782636`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def dropDependentLabels (labels: Array Label) : Array Label :=
  let dependentLabels := collectLabelsAndDependentLabels <|
    labels.flatMap fun label ↦ (mathlibLabelData label).dependencies
  labels.filter (!dependentLabels.contains ·)

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
#guard getMatchingLabels #["Mathlib" / "SetTheory" / "ZFC"] == #[.«t-set-theory»]
-- Test exclusion
#guard getMatchingLabels #["Mathlib" / "Tactic"/ "Abel.lean"] == #[.«t-meta»]
#guard getMatchingLabels #["Mathlib" / "Tactic"/ "Linter" / "Lint.lean"] == #[.«t-linter»]
#guard getMatchingLabels #[
  "Mathlib" / "Tactic"/ "Linter" / "Lint.lean",
  "Mathlib" / "Tactic" / "Abel.lean" ] == #[.«t-linter», .«t-meta»]

-- Test targeting a file instead of a directory
#guard getMatchingLabels #["lake-manifest.json"] == #[.«dependency-bump»]

-- Test linting of specific changes touching linting and CI.
#guard getMatchingLabels #["scripts" / "add_deprecations.sh"] == #[.«CI»]
#guard getMatchingLabels #["scripts" / "lint-style.lean"] == #[.«t-linter»]
#guard getMatchingLabels #["Mathlib" / "Tactic" / "Linter" / "TextBased.lean",
  "scripts" / "lint-style.lean", "scripts" / "lint-style.py"] == #[.«t-linter»]
#guard getMatchingLabels #["scripts" / "noshake.json"] == #[]

/-- Testing function to ensure the labels defined in `mathlibLabels` cover all
subfolders of `Mathlib/`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Autolabel/Variante5d262f01c8cd7b98436718b1ddc6931152ee6a4743576c9f4654a9ab9e2d738.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Autolabel/Variante5d262f01c8cd7b98436718b1ddc6931152ee6a4743576c9f4654a9ab9e2d738.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08d48cba7cf8b858e47f5dd0cf4ae37c63e1d6ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
