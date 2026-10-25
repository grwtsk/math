# longFileLinter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7f87623e4a51c9b719a000c07ef5fd518b94dbe3c4af350780eabceb63127c6b",
  "kind": "def",
  "lexical_name": "longFileLinter",
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
  "slug": "longfilelinter--ff13453ddbb20d00f063a397",
  "source": {
    "blob": "6baf969fc4e77d45b6ab36a3a2280f0c9ed5b30d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 399,
    "line": 345,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ff13453ddbb20d00f063a39752aab686a06d05f848073f7c93e2448e359562f5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7f87623e4a51c9b719a000c07ef5fd518b94dbe3c4af350780eabceb63127c6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 345–399.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def longFileLinter : Linter where run := withSetOptionIn fun stx ↦ do
  let linterBound := linter.style.longFile.get (← getOptions)
  if linterBound == 0 then
    return
  let defValue := linter.style.longFileDefValue.get (← getOptions)
  let smallOption := match stx with
      | `(set_option linter.style.longFile $x) => TSyntax.getNat ⟨x.raw⟩ ≤ defValue
      | _ => false
  if smallOption then
    logLint0Disable linter.style.longFile stx
      m!"The default value of the `longFile` linter is {defValue}.\n\
        The current value of {linterBound} does not exceed the allowed bound.\n\
        Please, remove the `set_option linter.style.longFile {linterBound}`."
  else
  -- Thanks to the above check, the linter option is either not set (and hence equal
  -- to the default) or set to some value *larger* than the default.
  -- `Parser.isTerminalCommand` allows `stx` to be `#exit`: this is useful for tests.
  unless Parser.isTerminalCommand stx do return
  -- We exclude `Mathlib.lean` from the linter: it exceeds linter's default number of allowed
  -- lines, and it is an auto-generated import-only file.
  -- TODO: if there are more such files, revise the implementation.
  if (← getMainModule) == `Mathlib then return
  if let some init := stx.getTailPos? then
    -- the last line: we subtract 1, since the last line is expected to be empty
    let lastLine := ((← getFileMap).toPosition init).line
    -- In this case, the file has an allowed length, and the linter option is unnecessarily set.
    if lastLine ≤ defValue && defValue < linterBound then
      logLint0Disable linter.style.longFile stx
        m!"The default value of the `longFile` linter is {defValue}.\n\
          This file is {lastLine} lines long which does not exceed the allowed bound.\n\
          Please, remove the `set_option linter.style.longFile {linterBound}`."
    else
    -- `candidate` is divisible by `100` and satisfies `lastLine + 100 < candidate ≤ lastLine + 200`
    -- note that either `lastLine ≤ defValue` and `defValue = linterBound` hold or
    -- `candidate` is necessarily bigger than `lastLine` and hence bigger than `defValue`
    let candidate := (lastLine / 100) * 100 + 200
    let candidate := max candidate defValue
    -- In this case, the file is longer than the default and also than what the option says.
    if defValue ≤ linterBound && linterBound < lastLine then
      logLint0Disable linter.style.longFile stx
        m!"This file is {lastLine} lines long, but the limit is {linterBound}.\n\n\
          You can extend the allowed length of the file using \
          `set_option linter.style.longFile {candidate}`.\n\
          You can completely disable this linter by setting the length limit to `0`."
    else
    -- Finally, the file exceeds the default value, but not the option: we only allow the value
    -- of the option to be `candidate` or `candidate + 100`.
    -- In particular, this flags any option that is set to an unnecessarily high value.
    if linterBound == candidate || linterBound + 100 == candidate then return
    else
      logLint0Disable linter.style.longFile stx
        m!"This file is {lastLine} lines long. \
          The current limit is {linterBound}, but it is expected to be {candidate}:\n\
          `set_option linter.style.longFile {candidate}`."

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean#L345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6baf969fc4e77d45b6ab36a3a2280f0c9ed5b30d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
