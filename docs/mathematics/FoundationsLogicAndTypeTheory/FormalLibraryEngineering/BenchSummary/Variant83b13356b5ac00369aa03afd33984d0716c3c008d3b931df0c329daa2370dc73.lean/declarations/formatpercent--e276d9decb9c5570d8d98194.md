# formatPercent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:44da36a6f05d57148111e9624aca43e20db17a1d2a88bc8fee9d694895aae4a4",
  "kind": "def",
  "lexical_name": "formatPercent",
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
  "slug": "formatpercent--e276d9decb9c5570d8d98194",
  "source": {
    "blob": "fd1f00f1462efee1a72f8d8f627683f1c32a72f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 60,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchSummary/Variant83b13356b5ac00369aa03afd33984d0716c3c008d3b931df0c329daa2370dc73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e276d9decb9c5570d8d981943746fed6bdc791919ecab6c69fa65e0a293155eb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchSummary/Variant83b13356b5ac00369aa03afd33984d0716c3c008d3b931df0c329daa2370dc73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:44da36a6f05d57148111e9624aca43e20db17a1d2a88bc8fee9d694895aae4a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def formatPercent (reldiff : Float) : String :=
  -- shift by `2` twice: once to get a percentage, again for two decimal digits of precision
  let reldiff := reldiff * 10 ^ 4
  let sgn : Int := if reldiff < 0 then -1 else 1
  let reldiff := (.ofInt sgn) * reldiff
  let (sgn, intDigs, decDigs) := intDecs (sgn * reldiff.toUInt32.val) 0 2
  -- the `if ... then ... else ...` makes sure that the output includes leading `0`s
  s!"({sgn}{intDigs}.{if decDigs < 10 then "0" else ""}{decDigs}%)"

/--
info: [(+0.00%), (+14.28%), (+0.20%), (-0.60%), (-0.08%), (+1.02%)]
---
info: [+0.0⬝10⁹, +1.0⬝10⁹, +30.200⬝10⁹, -0.460⬝10⁹]
-/
#guard_msgs in
run_cmd
  let floats : Array Float := #[0, 1/7, 0.002, -0.006, -8.253600406145226E-4, 0.0102]
  logInfo m!"{floats.map formatPercent}"
  let ints : Array Int := #[0, 10^9, 302*10^8, -460000000]
  logInfo m!"{ints.map formatDiff}"

/--
`formatFile file` converts a `String` into a formatted string of the form `` `file` ``,
removing leading non-letters. It is expected that `~` is the only leading non-letter.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchSummary/Variant83b13356b5ac00369aa03afd33984d0716c3c008d3b931df0c329daa2370dc73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchSummary/Variant83b13356b5ac00369aa03afd33984d0716c3c008d3b931df0c329daa2370dc73.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd1f00f1462efee1a72f8d8f627683f1c32a72f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
