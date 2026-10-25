# getDeprecatedSyntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b52b7786074b2773214cccca776fdfa2ac70500e5a002e4dd5a100f416e0c40",
  "kind": "def",
  "lexical_name": "getDeprecatedSyntax",
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
  "slug": "getdeprecatedsyntax--102199012c796d5d878578e6",
  "source": {
    "blob": "f0a3017553991897f766678c2829e6909f04992a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 159,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntaxLinter/Variant245560aa61305dcf166b87810544033a4e61598b2fb748b288d111f859d725df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:102199012c796d5d878578e663b8f65a062e705b1fbacd0cdb685ed2a39cfb05",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntaxLinter/Variant245560aa61305dcf166b87810544033a4e61598b2fb748b288d111f859d725df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9b52b7786074b2773214cccca776fdfa2ac70500e5a002e4dd5a100f416e0c40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getDeprecatedSyntax : Syntax → Array (SyntaxNodeKind × Syntax × MessageData)
  | stx@(.node _ kind args) =>
    let rargs := args.flatMap getDeprecatedSyntax
    match kind with
    | ``Lean.Parser.Tactic.refine' =>
      rargs.push (kind, stx,
        "The `refine'` tactic is discouraged: \
         please strongly consider using `refine` or `apply` instead.")
    | `Mathlib.Tactic.cases' =>
      rargs.push (kind, stx,
        "The `cases'` tactic is discouraged: \
         please strongly consider using `obtain`, `rcases` or `cases` instead.")
    | `Mathlib.Tactic.induction' =>
      rargs.push (kind, stx,
        "The `induction'` tactic is discouraged: \
         please strongly consider using `induction` instead.")
    | ``Lean.Parser.Tactic.tacticAdmit =>
      rargs.push (kind, stx,
        "The `admit` tactic is discouraged: \
         please strongly consider using the synonymous `sorry` instead.")
    | ``Parser.Term.configItem | ``Parser.Tactic.configItem =>
      if usesNativeConfig stx then
        rargs.push (kind, stx, m!"Using `+native` is not allowed in mathlib: \
          because it trusts the entire Lean compiler (not just the Lean kernel), \
          it could quite possibly be used to prove `{.ofConstName ``False}`.")
      else
        rargs
    | ``Lean.Parser.Tactic.nativeDecide =>
      rargs.push (kind, stx, m!"Using `native_decide` is not allowed in mathlib: \
        because it trusts the entire Lean compiler (not just the Lean kernel), \
        it could quite possibly be used to prove `{.ofConstName ``False}`.")
    | ``Lean.Parser.Command.in =>
      match getSetOptionMaxHeartbeatsComment stx with
      | none => rargs
      | some (opt, n, trailing) =>
        -- Since we are now seeing the currently outermost `maxHeartbeats` option,
        -- we remove all subsequent potential flags and only decide whether to lint or not
        -- based on whether the current option has a comment.
        let rargs := rargs.filter (·.1 != `MaxHeartbeats)
        if trailing.toString.trimAsciiStart.isEmpty then
          rargs.push (`MaxHeartbeats, stx,
            s!"Please, add a comment explaining the need for modifying the maxHeartbeat limit, \
              as in\nset_option {opt} {n} in\n-- reason for change\n...")
        else
          rargs
    | _ => rargs
  | _ => default

-- TODO: Remove this `set_option` with `linter.style.nativeDecide`.
set_option linter.deprecated false in
/-- The deprecated syntax linter flags usages of deprecated syntax and suggests
replacement syntax. For each individual case, linting can be turned on or off separately.

* `refine'`, superseded by `refine` and `apply` (controlled by `linter.style.refine`)
* `cases'`, superseded by `obtain`, `rcases` and `cases` (controlled by `linter.style.cases`)
* `induction'`, superseded by `induction` (controlled by `linter.style.induction`)
* `admit`, superseded by `sorry` (controlled by `linter.style.admit`)
* `native_decide` and any config setting `+native`, which trust the Lean compiler
  (controlled by `linter.style.native`)
* `set_option maxHeartbeats`, should contain an explanatory comment
  (controlled by `linter.style.maxHeartbeats`)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntaxLinter/Variant245560aa61305dcf166b87810544033a4e61598b2fb748b288d111f859d725df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntaxLinter/Variant245560aa61305dcf166b87810544033a4e61598b2fb748b288d111f859d725df.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0a3017553991897f766678c2829e6909f04992a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
