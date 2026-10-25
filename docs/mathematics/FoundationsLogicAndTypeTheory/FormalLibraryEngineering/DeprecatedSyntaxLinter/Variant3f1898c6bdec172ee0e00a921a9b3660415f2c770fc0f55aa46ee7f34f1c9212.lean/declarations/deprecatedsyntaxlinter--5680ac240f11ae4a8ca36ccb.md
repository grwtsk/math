# deprecatedSyntaxLinter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8a49ac78cd9e9e751072199b1a64a2ebbf035f5830911af29fbcb603b2e3c829",
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
  "slug": "deprecatedsyntaxlinter--5680ac240f11ae4a8ca36ccb",
  "source": {
    "blob": "475960638979a6377e42f47edb5b7dbe5dd9cab0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 213,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntaxLinter/Variant3f1898c6bdec172ee0e00a921a9b3660415f2c770fc0f55aa46ee7f34f1c9212.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5680ac240f11ae4a8ca36ccb51521100bd3fe03d59ae13b02553635c18e46657",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntaxLinter/Variant3f1898c6bdec172ee0e00a921a9b3660415f2c770fc0f55aa46ee7f34f1c9212.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8a49ac78cd9e9e751072199b1a64a2ebbf035f5830911af29fbcb603b2e3c829`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–249.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntaxLinter/Variant3f1898c6bdec172ee0e00a921a9b3660415f2c770fc0f55aa46ee7f34f1c9212.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntaxLinter/Variant3f1898c6bdec172ee0e00a921a9b3660415f2c770fc0f55aa46ee7f34f1c9212.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `475960638979a6377e42f47edb5b7dbe5dd9cab0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
