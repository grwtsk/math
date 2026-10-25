# deprecatedSyntaxLinter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:abb1d513854a20217aeddc2f0abe880da0379a6249db63c6eeca329290082780",
  "kind": "def",
  "lexical_name": "deprecatedSyntaxLinter",
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
  "slug": "deprecatedsyntaxlinter--c456ecd8444dec52230cf0c3",
  "source": {
    "blob": "f0a3017553991897f766678c2829e6909f04992a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 221,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntaxLinter/Variant245560aa61305dcf166b87810544033a4e61598b2fb748b288d111f859d725df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c456ecd8444dec52230cf0c3783fa48e3f7d9bbcde1744c331663b9aeb46fe64",
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

Occurrence: `declaration:abb1d513854a20217aeddc2f0abe880da0379a6249db63c6eeca329290082780`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def deprecatedSyntaxLinter : Linter where run stx := do
  unless getLinterValue linter.style.refine (← getLinterOptions) ||
      getLinterValue linter.style.cases (← getLinterOptions) ||
      getLinterValue linter.style.induction (← getLinterOptions) ||
      getLinterValue linter.style.admit (← getLinterOptions) ||
      getLinterValue linter.style.maxHeartbeats (← getLinterOptions) ||
      getLinterValue linter.style.native (← getLinterOptions) ||
      -- TODO: Remove this line with `linter.style.nativeDecide`.
      getLinterValue linter.style.nativeDecide (← getLinterOptions) do
    return
  if (← MonadState.get).messages.hasErrors then
    return
  let deprecations := getDeprecatedSyntax stx
  -- Using `withSetOptionIn` here, allows the linter to parse also the "leading" `set_option`s
  -- but then flagging them only if the corresponding option is still set after elaborating the
  -- leading `set_option`s.
  -- In particular, this means that the linter "sees" `set_option maxHeartbeats 10 in ...`,
  -- records it in `deprecations` and then acts on it, according to the correct options.
  (withSetOptionIn fun _ ↦ do
    for (kind, stx', msg) in deprecations do
      match kind with
      | ``Lean.Parser.Tactic.refine' => Linter.logLintIf linter.style.refine stx' msg
      | `Mathlib.Tactic.cases' => Linter.logLintIf linter.style.cases stx' msg
      | `Mathlib.Tactic.induction' => Linter.logLintIf linter.style.induction stx' msg
      | ``Lean.Parser.Tactic.tacticAdmit => Linter.logLintIf linter.style.admit stx' msg
      | ``Lean.Parser.Tactic.nativeDecide
      | ``Parser.Term.configItem | ``Parser.Tactic.configItem => do
        -- TODO: this block should be removed when `linter.style.nativeDecide` is removed and
        -- replaced with just `Linter.logLint linter.style.native stx' msg`
        let options ← getLinterOptions
        if getLinterValue linter.style.native options then
          Linter.logLint linter.style.native stx' msg
        else if getLinterValue linter.style.nativeDecide options then
          Linter.logLint linter.style.nativeDecide stx' msg
      | `MaxHeartbeats => Linter.logLintIf linter.style.maxHeartbeats stx' msg
      | _ => continue) stx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntaxLinter/Variant245560aa61305dcf166b87810544033a4e61598b2fb748b288d111f859d725df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntaxLinter/Variant245560aa61305dcf166b87810544033a4e61598b2fb748b288d111f859d725df.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0a3017553991897f766678c2829e6909f04992a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
