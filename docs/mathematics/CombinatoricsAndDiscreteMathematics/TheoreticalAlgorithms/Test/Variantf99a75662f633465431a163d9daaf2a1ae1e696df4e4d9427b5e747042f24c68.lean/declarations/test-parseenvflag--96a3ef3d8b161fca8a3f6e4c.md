# test_parseEnvFlag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:32a43204a8cc5f785e304800e5053ead2ade3d7fa7e9f10b49c4c292881fa56e",
  "kind": "def",
  "lexical_name": "test_parseEnvFlag",
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
  "slug": "test-parseenvflag--96a3ef3d8b161fca8a3f6e4c",
  "source": {
    "blob": "0b525c0371c69136736e08efcbd51f781e5f36f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1102,
    "line": 1062,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf99a75662f633465431a163d9daaf2a1ae1e696df4e4d9427b5e747042f24c68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:96a3ef3d8b161fca8a3f6e4cb05cb60aec221c425adb76eb3c55c71c6111c4d4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf99a75662f633465431a163d9daaf2a1ae1e696df4e4d9427b5e747042f24c68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:32a43204a8cc5f785e304800e5053ead2ade3d7fa7e9f10b49c4c292881fa56e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1062–1102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def test_parseEnvFlag : IO Unit := do
  IO.println "parseEnvFlag:"
  let shown (flag : Bool) : String := if flag then "on" else "off"
  -- The variable name only reaches the warning, so any name serves the rest.
  let parse (value? : Option String) (ifUnset : Bool) : IO String := do
    return shown (← withSuppressedOutput (parseEnvFlag "FLAG" value? ifUnset))
  assertEq "absent value takes ifUnset" "off" (← parse none false)
  assertEq "empty value takes ifUnset" "off" (← parse (some "") false)
  assertEq "whitespace-only value takes ifUnset" "off" (← parse (some " \n") false)
  assertEq "1 is on" "on" (← parse (some "1") false)
  assertEq "true is on" "on" (← parse (some "true") false)
  assertEq "case does not matter" "on" (← parse (some "TRUE") false)
  assertEq "surrounding space does not matter" "on" (← parse (some " true ") false)
  assertEq "0 is off" "off" (← parse (some "0") false)
  assertEq "false is off" "off" (← parse (some "false") false)
  assertEq "an unreadable value falls back to ifUnset" "off" (← parse (some "yes") false)
  assertEq "a number other than 0 or 1 is unreadable" "off" (← parse (some "2") false)
  -- A default-on variable: `ifUnset` moves the unset case and nothing else.
  assertEq "absent value takes an on default" "on" (← parse none true)
  assertEq "empty value takes an on default" "on" (← parse (some "") true)
  assertEq "0 is off against an on default" "off" (← parse (some "0") true)
  assertEq "false is off against an on default" "off" (← parse (some "false") true)
  assertEq "1 is on against an on default" "on" (← parse (some "1") true)
  assertEq "an unreadable value takes an on default" "on" (← parse (some "yes") true)
  -- The warning names the variable and the value it rejected, and it fires only
  -- for a value the parser cannot read.
  let (warning, _) ← IO.FS.withIsolatedStreams (parseEnvFlag "MY_FLAG" (some "yes") false)
  assertTrue "the warning names the variable and the value"
    ((warning.splitOn "MY_FLAG=yes").length == 2)
  let (quiet, _) ← IO.FS.withIsolatedStreams (parseEnvFlag "MY_FLAG" (some "0") false)
  assertEq "a readable value warns about nothing" "" quiet

end CliOptions

section ReadRedirects

/-- Reads follow redirects, so a read base can answer with the blob's current
location. This test pins the flag set, because each flag bounds what a redirect
may do: `--proto-redir =https` holds a transfer on an encrypted protocol, and
`--max-redirs` bounds the chain. The upload path builds its own `curl`
arguments and carries none of these flags. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf99a75662f633465431a163d9daaf2a1ae1e696df4e4d9427b5e747042f24c68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf99a75662f633465431a163d9daaf2a1ae1e696df4e4d9427b5e747042f24c68.lean#L1062).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b525c0371c69136736e08efcbd51f781e5f36f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
