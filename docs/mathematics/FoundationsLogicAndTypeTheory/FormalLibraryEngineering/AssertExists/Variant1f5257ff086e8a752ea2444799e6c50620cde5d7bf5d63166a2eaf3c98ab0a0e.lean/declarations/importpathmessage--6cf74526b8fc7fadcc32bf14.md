# importPathMessage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f7d9b3a973ddc8cfb5c6eb70d828bcbb54257bb1672a2170865b83086d377ef3",
  "kind": "def",
  "lexical_name": "importPathMessage",
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
  "slug": "importpathmessage--6cf74526b8fc7fadcc32bf14",
  "source": {
    "blob": "21589ef78c03fe2692dbcd19d2aa2451ffa36f91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 90,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertExists/Variant1f5257ff086e8a752ea2444799e6c50620cde5d7bf5d63166a2eaf3c98ab0a0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6cf74526b8fc7fadcc32bf14b5fda4a4d85b7859ccac3ec7c652fa0acf43e69e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertExists/Variant1f5257ff086e8a752ea2444799e6c50620cde5d7bf5d63166a2eaf3c98ab0a0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f7d9b3a973ddc8cfb5c6eb70d828bcbb54257bb1672a2170865b83086d377ef3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def importPathMessage (env : Environment) (idx : ModuleIdx) : MessageData :=
  let modNames := env.header.moduleNames
  let msg := (env.importPath modNames[idx]!).foldl (init := m!"{modNames[idx]!},")
    (· ++ m!"\n  which is imported by {·},")
  msg ++ m!"\n  which is imported by this file."

/--
`assert_not_exists d₁ d₂ ... dₙ` is a user command that asserts that the declarations named
`d₁ d₂ ... dₙ` *do not exist* in the current import scope.

Be careful to use names (e.g. `Rat`) rather than notations (e.g. `ℚ`).

It may be used (sparingly!) in mathlib to enforce plans that certain files
are independent of each other.

If you encounter an error on an `assert_not_exists` command while developing mathlib,
it is probably because you have introduced new import dependencies to a file.

In this case, you should refactor your work
(for example by creating new files rather than adding imports to existing files).
You should *not* delete the `assert_not_exists` statement without careful discussion ahead of time.

`assert_not_exists` statements should generally live at the top of the file, after the module doc.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertExists/Variant1f5257ff086e8a752ea2444799e6c50620cde5d7bf5d63166a2eaf3c98ab0a0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertExists/Variant1f5257ff086e8a752ea2444799e6c50620cde5d7bf5d63166a2eaf3c98ab0a0e.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21589ef78c03fe2692dbcd19d2aa2451ffa36f91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
