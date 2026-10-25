# LintVerbosity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:201f0e5ed89726b32717daddcf46a9bb91e84191c42bbbc38c9b37254263fabf",
  "kind": "inductive",
  "lexical_name": "LintVerbosity",
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
  "slug": "lintverbosity--a841cdb2122eb40e07e8bc9e",
  "source": {
    "blob": "5d33524c4e2dc3f9ae9d35d0b4274b4f2500d40e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 69,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant63afe961b1555c3d642f9e16dfd7eba81e758cba119e442469f64d64c12a21ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a841cdb2122eb40e07e8bc9e3723df65b2a97a2c889348d76e1d3c967d9b62ff",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant63afe961b1555c3d642f9e16dfd7eba81e758cba119e442469f64d64c12a21ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:201f0e5ed89726b32717daddcf46a9bb91e84191c42bbbc38c9b37254263fabf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive LintVerbosity
  /-- `low`: only print failing checks, print nothing on success. -/
  | low
  /-- `medium`: only print failing checks, print confirmation on success. -/
  | medium
  /-- `high`: print output of every check. -/
  | high
  deriving Inhabited, DecidableEq, Repr

/-- `getChecks slow runOnly runAlways` produces a list of linters.
`runOnly` is an optional list of names that should resolve to declarations with type `NamedLinter`.
If populated, only these linters are run (regardless of the default configuration).
`runAlways` is an optional list of names that should resolve to declarations with type
`NamedLinter`. If populated, these linters are always run (regardless of their configuration).
Specifying a linter in `runAlways` but not `runOnly` is an error.
Otherwise, it uses all enabled linters in the environment tagged with `@[env_linter]`.
If `slow` is false, it only uses the fast default tests. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant63afe961b1555c3d642f9e16dfd7eba81e758cba119e442469f64d64c12a21ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant63afe961b1555c3d642f9e16dfd7eba81e758cba119e442469f64d64c12a21ac.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d33524c4e2dc3f9ae9d35d0b4274b4f2500d40e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
