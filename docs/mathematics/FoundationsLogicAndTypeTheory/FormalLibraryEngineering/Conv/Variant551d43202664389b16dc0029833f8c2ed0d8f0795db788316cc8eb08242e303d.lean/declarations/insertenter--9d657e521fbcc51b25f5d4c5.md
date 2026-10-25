# insertEnter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:393131f8a81ac0e99c8c412842b4cc2e3debf1fe1edc4599337edd22e842cdc1",
  "kind": "def",
  "lexical_name": "insertEnter",
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
  "slug": "insertenter--9d657e521fbcc51b25f5d4c5",
  "source": {
    "blob": "0094691cab4a7965b55931095b0bcd37be150d37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 235,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variant551d43202664389b16dc0029833f8c2ed0d8f0795db788316cc8eb08242e303d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9d657e521fbcc51b25f5d4c5149a388e5ff54e04dc92efab760c55bacc4c6b24",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variant551d43202664389b16dc0029833f8c2ed0d8f0795db788316cc8eb08242e303d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:393131f8a81ac0e99c8c412842b4cc2e3debf1fe1edc4599337edd22e842cdc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
public def insertEnter (locations : Array Lean.SubExpr.GoalsLocation) (goalType : Expr)
    (params : SelectInsertParams) :
    MetaM (String × String × Option (String.Pos.Raw × String.Pos.Raw)) := do
  /-
  TODO: figure out a better way to determine indentation here
  The current method assumes the indentation level is the same as the column position of
  the `c` in the `conv?` syntax
  This is of course not always true, and so `conv?` will produce weirdly indented syntax sometimes
  For example,
  ```
  example : True := by conv?
  ```
  turns into
  ```
  example : True := by conv =>
                         skip
  ```
  Fortunately, the `conv` indentation is extremely permissive
  (relative indentation can be positive negative or zero),
  so this will probably never create non-working `conv` code.
  -/
  -- prepare indentation
  let column := (SelectInsertParamsClass.replaceRange params).start.character
  -- build `conv` syntax
  let enterStx ← insertEnterSyntax locations goalType
  let enterFormat ← PrettyPrinter.ppCategory `tactic enterStx
  let enterString := enterFormat.pretty (width := 100) (indent := column) (column := column)
  -- highlight trailing `skip` after insertion
  let trailingSkipRange? : Option (String.Pos.Raw × String.Pos.Raw) :=
    let trimmed := enterString.trimAsciiEnd
    trimmed.dropSuffix? "skip" |>.map (·.rawEndPos, trimmed.rawEndPos)
  return ("Generate conv", enterString, trailingSkipRange?)

/-- Rpc function for the conv widget. -/
@[server_rpc_method]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variant551d43202664389b16dc0029833f8c2ed0d8f0795db788316cc8eb08242e303d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variant551d43202664389b16dc0029833f8c2ed0d8f0795db788316cc8eb08242e303d.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0094691cab4a7965b55931095b0bcd37be150d37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
