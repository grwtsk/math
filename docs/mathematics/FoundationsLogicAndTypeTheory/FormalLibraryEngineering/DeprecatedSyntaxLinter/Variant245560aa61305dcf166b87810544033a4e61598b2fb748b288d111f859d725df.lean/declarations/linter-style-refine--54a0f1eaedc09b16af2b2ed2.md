# linter.style.refine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:458baa659a624fd5ab1fc72a881ea35b2ea5b5e2ea1a9e805fc3e10280a2a815",
  "kind": "register_option",
  "lexical_name": "linter.style.refine",
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
  "slug": "linter-style-refine--54a0f1eaedc09b16af2b2ed2",
  "source": {
    "blob": "f0a3017553991897f766678c2829e6909f04992a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 61,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntaxLinter/Variant245560aa61305dcf166b87810544033a4e61598b2fb748b288d111f859d725df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:54a0f1eaedc09b16af2b2ed2a423f794631b75b8e5e61cb79372cf889efa0f06",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntaxLinter/Variant245560aa61305dcf166b87810544033a4e61598b2fb748b288d111f859d725df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `register_option` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:458baa659a624fd5ab1fc72a881ea35b2ea5b5e2ea1a9e805fc3e10280a2a815`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public register_option linter.style.refine : Bool := {
  defValue := false
  descr := "enable the refine linter"
}

/-- The option `linter.style.cases` of the deprecated syntax linter flags usages of
the `cases'` tactic, which is a backward-compatible version of Lean 3's `cases` tactic.
Unlike `obtain`, `rcases` and Lean 4's `cases`, variables introduced by `cases'` are not
required to be separated by case, which hinders readability.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntaxLinter/Variant245560aa61305dcf166b87810544033a4e61598b2fb748b288d111f859d725df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntaxLinter/Variant245560aa61305dcf166b87810544033a4e61598b2fb748b288d111f859d725df.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0a3017553991897f766678c2829e6909f04992a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
