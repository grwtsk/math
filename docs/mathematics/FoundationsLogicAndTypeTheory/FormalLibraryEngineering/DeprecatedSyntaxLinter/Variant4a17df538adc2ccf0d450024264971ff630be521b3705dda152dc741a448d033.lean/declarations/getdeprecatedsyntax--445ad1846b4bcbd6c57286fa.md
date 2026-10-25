# getDeprecatedSyntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:595a537a9e3717545476bfada0e596c98a12a07dbdca9e1d62028c201f9df2f5",
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
  "slug": "getdeprecatedsyntax--445ad1846b4bcbd6c57286fa",
  "source": {
    "blob": "92dbc26217606e8296e27cd8df7bfaacf00f892f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 107,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntaxLinter/Variant4a17df538adc2ccf0d450024264971ff630be521b3705dda152dc741a448d033.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:445ad1846b4bcbd6c57286fa8779c65a4760d563d82cbdd7f5ef6321317a07a1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntaxLinter/Variant4a17df538adc2ccf0d450024264971ff630be521b3705dda152dc741a448d033.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:595a537a9e3717545476bfada0e596c98a12a07dbdca9e1d62028c201f9df2f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–148.

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
    | ``Lean.Parser.Tactic.tacticAdmit =>
      rargs.push (kind, stx,
        "The `admit` tactic is discouraged: \
         please strongly consider using the synonymous `sorry` instead.")
    | ``Lean.Parser.Command.in =>
      match getSetOptionMaxHeartbeatsComment stx with
      | none => rargs
      | some (opt, n, trailing) =>
        -- Since we are now seeing the currently outermost `maxHeartbeats` option,
        -- we remove all subsequent potential flags and only decide whether to lint or not
        -- based on whether the current option has a comment.
        let rargs := rargs.filter (·.1 != `MaxHeartbeats)
        if trailing.toString.trimLeft.isEmpty then
          rargs.push (`MaxHeartbeats, stx,
            s!"Please, add a comment explaining the need for modifying the maxHeartbeat limit, \
              as in\nset_option {opt} {n} in\n-- reason for change\n...\n")
        else
          rargs
    | _ => rargs
  | _ => default

/-- The deprecated syntax linter flags usages of deprecated syntax and suggests
replacement syntax. For each individual case, linting can be turned on or off separately.

* `refine'`, superseded by `refine` and `apply` (controlled by `linter.style.refine`)
* `cases'`, superseded by `obtain`, `rcases` and `cases` (controlled by `linter.style.cases`)
* `admit`, superseded by `sorry` (controlled by `linter.style.admit`)
* `set_option maxHeartbeats`, should contain an explanatory comment
  (controlled by `linter.style.maxHeartbeats`)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntaxLinter/Variant4a17df538adc2ccf0d450024264971ff630be521b3705dda152dc741a448d033.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntaxLinter/Variant4a17df538adc2ccf0d450024264971ff630be521b3705dda152dc741a448d033.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92dbc26217606e8296e27cd8df7bfaacf00f892f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
