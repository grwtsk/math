# mathlibOnlyLinters

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4a019e4dfc8e1a783a699d10821ce831e19121e43c48ddb36303576e7bde3dd0",
  "kind": "abbrev",
  "lexical_name": "mathlibOnlyLinters",
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
  "slug": "mathlibonlylinters--2aae2b0ed7b7c67d35e8be47",
  "source": {
    "blob": "8637feb3fb0f66b536b44b588d2d7b884cdd0f1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 36,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variant8faf427913e5d3f5feda578bf781c05c8de3c93fab89a654b0346c3e7f58f93f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2aae2b0ed7b7c67d35e8be47b4d76cf1c573eae2694c129e391f8ab9886911b3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variant8faf427913e5d3f5feda578bf781c05c8de3c93fab89a654b0346c3e7f58f93f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4a019e4dfc8e1a783a699d10821ce831e19121e43c48ddb36303576e7bde3dd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev mathlibOnlyLinters : Array LeanOption := #[
  ⟨`linter.allScriptsDocumented, true⟩,
  ⟨`linter.checkInitImports, true⟩,
  -- The `docPrime` linter is disabled: https://github.com/leanprover-community/mathlib4/issues/20560
  ⟨`linter.docPrime, false⟩,
  ⟨`linter.hashCommand, true⟩,
  ⟨`linter.oldObtain, true⟩,
  ⟨`linter.style.cases, true⟩,
  ⟨`linter.style.cdot, true⟩,
  ⟨`linter.style.docString, true⟩,
  ⟨`linter.style.dollarSyntax, true⟩,
  ⟨`linter.style.header, true⟩,
  ⟨`linter.style.lambdaSyntax, true⟩,
  ⟨`linter.style.longLine, true⟩,
  ⟨`linter.style.longFile, .ofNat 1500⟩,
  ⟨`linter.style.maxHeartbeats, true⟩,
  -- `latest_import.yml` uses this comment: if you edit it, make sure that the workflow still works
  ⟨`linter.style.missingEnd, true⟩,
  ⟨`linter.style.multiGoal, true⟩,
  ⟨`linter.style.openClassical, true⟩,
  ⟨`linter.style.refine, true⟩,
  ⟨`linter.style.setOption, true⟩,
]

/-- These options are passed as `leanOptions` to building mathlib, as well as the
`Archive` and `Counterexamples`. (`tests` omits the first two options.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variant8faf427913e5d3f5feda578bf781c05c8de3c93fab89a654b0346c3e7f58f93f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variant8faf427913e5d3f5feda578bf781c05c8de3c93fab89a654b0346c3e7f58f93f.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8637feb3fb0f66b536b44b588d2d7b884cdd0f1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
