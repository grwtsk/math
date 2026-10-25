# verifyUpperBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a9c910bf2e286be35e5f9e4202bc6301748d463faa6f1df3982c7bcafa057fd6",
  "kind": "def",
  "lexical_name": "verifyUpperBound",
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
  "slug": "verifyupperbound--c875e0c273c6b6f2caa4c849",
  "source": {
    "blob": "9c411d17178ecd5d4789bf0ac4a91bfb9fc91e28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 141,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant14ca10e2c40f132134329765d58de8d74e5eb6df108df3d55eb290c69155fc88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c875e0c273c6b6f2caa4c849e321ad900fcf25eb8e519206e331f76546b4e173",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant14ca10e2c40f132134329765d58de8d74e5eb6df108df3d55eb290c69155fc88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a9c910bf2e286be35e5f9e4202bc6301748d463faa6f1df3982c7bcafa057fd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def verifyUpperBound (expr : Expr) (hsupp : ExprSupported expr)
    (domain : IntervalRat) (bound : ℚ) (cfg : DiscoveryConfig := {}) :
    Option (VerifiedUpperBound expr domain) :=
  let evalCfg := cfg.toEvalConfig
  if h : checkUpperBoundSmart expr domain bound evalCfg then
    some {
      bound := bound
      is_upper_bound := verify_upper_bound_smart expr hsupp domain bound evalCfg h
    }
  else
    none

/-- Verify a lower bound using interval arithmetic.

Returns `some proof` if the bound is verified, `none` otherwise.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant14ca10e2c40f132134329765d58de8d74e5eb6df108df3d55eb290c69155fc88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant14ca10e2c40f132134329765d58de8d74e5eb6df108df3d55eb290c69155fc88.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c411d17178ecd5d4789bf0ac4a91bfb9fc91e28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
