# test_isKnownOpt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:362d4d949f40144a626de3f3a4b56e483ff2375d36372ffb060faceb7d4246d1",
  "kind": "def",
  "lexical_name": "test_isKnownOpt",
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
  "slug": "test-isknownopt--6f96bee2f7da60ba8fb9c4e2",
  "source": {
    "blob": "bf5c7b9709a76a623c9a7c3a3b8261413b2f8e8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1009,
    "line": 955,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6f96bee2f7da60ba8fb9c4e29d7c8fda0b50c261e1e9cbd4c1282089f44cf74f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:362d4d949f40144a626de3f3a4b56e483ff2375d36372ffb060faceb7d4246d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 955–1009.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def test_isKnownOpt : IO Unit := do
  IO.println "isKnownOpt:"
  -- Every named option is recognized when used with `=value` form.
  assertTrue "--repo=foo is known"           (isKnownOpt "--repo=foo")
  assertTrue "--cache-from=master is known"  (isKnownOpt "--cache-from=master")
  assertTrue "--scope=HEAD is known"         (isKnownOpt "--scope=HEAD")
  assertTrue "--container=master is known"   (isKnownOpt "--container=master")
  assertTrue "--staging-dir=/tmp is known"   (isKnownOpt "--staging-dir=/tmp")
  assertTrue "--unsafe-window=5 is known" (isKnownOpt "--unsafe-window=5")
  assertTrue "--backend=s3 is known"         (isKnownOpt "--backend=s3")

  -- Empty value passes recognition (parseNamedOpt returns the empty string
  -- for these — callers decide whether to treat that as an error).
  assertTrue "--scope= (empty value) is known" (isKnownOpt "--scope=")

  -- Flags use the bare `--name` form, no `=`.
  assertTrue "--help (no =) is known" (isKnownOpt "--help")
  assertTrue "--unsafe (no =) is known" (isKnownOpt "--unsafe")

  -- `--unsafe` is a flag, not a named option: the `=value` form is a user error.
  assertTrue "--unsafe=5 is NOT known (flags don't take values)"
    (!isKnownOpt "--unsafe=5")

  -- A typo on a known option name should fail recognition, not be silently
  -- accepted. This is the regression-guard: if `--scoop=` were accepted, the
  -- user's `--scope=` would be silently dropped and reads would fall back to
  -- the default chain with no warning.
  assertTrue "--scoop=foo (typo on scope) is NOT known" (!isKnownOpt "--scoop=foo")
  assertTrue "--bogus=foo (unknown name) is NOT known" (!isKnownOpt "--bogus=foo")

  -- A named option without `=` must NOT be accepted as a flag — `--scope`
  -- (no value) is a user error, distinct from the `--help` flag form.
  assertTrue "--scope (no =) is NOT known (named opts require value)"
    (!isKnownOpt "--scope")

  -- Symmetric: a flag with `=` must NOT be accepted as a named opt.
  assertTrue "--help=foo is NOT known (flags don't take values)"
    (!isKnownOpt "--help=foo")

  -- A bare positional doesn't even look like an option. The cache binary
  -- splits args by `startsWith "--"` before consulting `isKnownOpt`, so this
  -- case should never reach us, but we pin it anyway for safety.
  assertTrue "bare positional 'scope' is NOT known" (!isKnownOpt "scope")

/-- `parseNamedOpt` extracts the value of a `--name=value` option from a
list of args. The rules tests pin:

- Missing option → `none`.
- Single occurrence → the value after `=`.
- Empty value (`--scope=`) → `some ""` (caller decides what to do).
- Multiple occurrences → the *last* one wins (`findRev?`). This mirrors
  conventional shell semantics where `--scope=a --scope=b` resolves to `b`.
- Non-matching args are ignored, even if they look similar (e.g.,
  `--scope-other=` is a different option name).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean#L955).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf5c7b9709a76a623c9a7c3a3b8261413b2f8e8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
