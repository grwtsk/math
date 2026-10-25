# Bench

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:00786ce92b59cb03e432290ecdb3f74404289c3b814c11a0d04116fbaa2963a9",
  "kind": "structure",
  "lexical_name": "Bench",
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
  "slug": "bench--366ad4eb83b28eea254cc09e",
  "source": {
    "blob": "fd1f00f1462efee1a72f8d8f627683f1c32a72f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 34,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchSummary/Variant83b13356b5ac00369aa03afd33984d0716c3c008d3b931df0c329daa2370dc73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:366ad4eb83b28eea254cc09e56365e39065cb5c499e6b8c5c790c74662b6abd6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchSummary/Variant83b13356b5ac00369aa03afd33984d0716c3c008d3b931df0c329daa2370dc73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:00786ce92b59cb03e432290ecdb3f74404289c3b814c11a0d04116fbaa2963a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Bench where
  file    : String
  diff    : Int
  reldiff : Float
  deriving FromJson, ToJson, Inhabited

/-- `intDecs z exp prec` is a "generic" formatting of an integer `z`.
It writes `z` in the form `x.y * 10 ^ exp` (for non-negative integers `x`, `y` and `z`),
such that `y` has `prec` digits and returns
* the sign of `z` as a string (in fact, just either `+` or `-`);
* the integer `x`;
* the natural number `y` (that has `prec` digits).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchSummary/Variant83b13356b5ac00369aa03afd33984d0716c3c008d3b931df0c329daa2370dc73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchSummary/Variant83b13356b5ac00369aa03afd33984d0716c3c008d3b931df0c329daa2370dc73.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd1f00f1462efee1a72f8d8f627683f1c32a72f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
