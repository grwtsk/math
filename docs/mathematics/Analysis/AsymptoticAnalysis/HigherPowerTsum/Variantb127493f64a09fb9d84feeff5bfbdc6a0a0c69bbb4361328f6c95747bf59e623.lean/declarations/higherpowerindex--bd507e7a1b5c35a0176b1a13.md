# HigherPowerIndex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad02649ce031f9ab23cb72ee134eac35a348a324e8d3fe2520e11c059d4c0dce",
  "kind": "abbrev",
  "lexical_name": "HigherPowerIndex",
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
  "slug": "higherpowerindex--bd507e7a1b5c35a0176b1a13",
  "source": {
    "blob": "6ce4e1e53c5e276f67e25fd398f9a10c4b5c15c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 186,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantb127493f64a09fb9d84feeff5bfbdc6a0a0c69bbb4361328f6c95747bf59e623.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd507e7a1b5c35a0176b1a13feaf9e53ffdbb3d507e7034766b9ce648e0960ec",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantb127493f64a09fb9d84feeff5bfbdc6a0a0c69bbb4361328f6c95747bf59e623.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad02649ce031f9ab23cb72ee134eac35a348a324e8d3fe2520e11c059d4c0dce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev HigherPowerIndex := {p : ℕ // p.Prime} × {k : ℕ // 3 ≤ k}

/-- The arithmetic value associated to a unique prime/exponent pair. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantb127493f64a09fb9d84feeff5bfbdc6a0a0c69bbb4361328f6c95747bf59e623.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantb127493f64a09fb9d84feeff5bfbdc6a0a0c69bbb4361328f6c95747bf59e623.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ce4e1e53c5e276f67e25fd398f9a10c4b5c15c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
