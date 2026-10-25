# ApplyRulesConfig

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cc1ab42b1e1232e94166fd017cadf00c2259e2c41cc9da6362a04024c7dbb0b1",
  "kind": "structure",
  "lexical_name": "ApplyRulesConfig",
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
  "slug": "applyrulesconfig--77c3656e887b6802ccf70e44",
  "source": {
    "blob": "f99627f8a8f32c2902e0f28b72f6879c5b302ece",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 87,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantf7092784d4ed149e493c3219ec51f7d716c31b7f9f7db561729611ab06d969c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:77c3656e887b6802ccf70e443d398c65d4903ac48f2eb4e03d551f0a0e90130c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantf7092784d4ed149e493c3219ec51f7d716c31b7f9f7db561729611ab06d969c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cc1ab42b1e1232e94166fd017cadf00c2259e2c41cc9da6362a04024c7dbb0b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ApplyRulesConfig extends BacktrackConfig, ApplyConfig where
  /-- Transparency mode for calls to `apply`. -/
  transparency : TransparencyMode := .default
  /-- Also use symmetric versions (via `@[symm]`) of local hypotheses. -/
  symm : Bool := true
  /-- Try proving the goal via `exfalso` if `solve_by_elim` otherwise fails.
  This is only used when operating on a single goal. -/
  exfalso : Bool := true
  maxDepth := 50

/--
Configuration structure to control the behaviour of `solve_by_elim`:
* transparency mode for calls to `apply`
* whether to use `symm` on hypotheses and `exfalso` on the goal as needed,
* see also `BacktrackConfig` for hooks allowing flow control.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantf7092784d4ed149e493c3219ec51f7d716c31b7f9f7db561729611ab06d969c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantf7092784d4ed149e493c3219ec51f7d716c31b7f9f7db561729611ab06d969c3.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f99627f8a8f32c2902e0f28b72f6879c5b302ece` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
