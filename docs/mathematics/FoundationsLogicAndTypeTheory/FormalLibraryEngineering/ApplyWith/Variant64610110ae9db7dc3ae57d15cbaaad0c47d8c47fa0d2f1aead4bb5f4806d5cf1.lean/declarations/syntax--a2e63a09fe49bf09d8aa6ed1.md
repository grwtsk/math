# Anonymous syntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:99cbc08e64a7421310af347539ce4e15b13cda08dd797a8c674ffa50ab7817c3",
  "kind": "syntax",
  "lexical_name": null,
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
  "slug": "syntax--a2e63a09fe49bf09d8aa6ed1",
  "source": {
    "blob": "cb0696e7f83222f0aca31278deba637884dba0d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 38,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyWith/Variant64610110ae9db7dc3ae57d15cbaaad0c47d8c47fa0d2f1aead4bb5f4806d5cf1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a2e63a09fe49bf09d8aa6ed1db84d6ab82600f396e576f2a4c6689b171b1e1b4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyWith/Variant64610110ae9db7dc3ae57d15cbaaad0c47d8c47fa0d2f1aead4bb5f4806d5cf1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `syntax` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:99cbc08e64a7421310af347539ce4e15b13cda08dd797a8c674ffa50ab7817c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
syntax manyConfig := (colGt Tactic.configItem)+

/-- Elaborator for the configuration in `apply (config := cfg)` syntax. -/
declare_config_elab elabApplyConfig ApplyConfig

/--
* `apply (config := cfg) e` allows for additional configuration (see `Lean.Meta.ApplyConfig`):
  * `newGoals` controls which new goals are added by `apply`, in which order.
  * `-synthAssignedInstances` will not synthesize instance implicit arguments if they have been
    assigned by `isDefEq`.
  * `+allowSynthFailures` will create new goals when instance synthesis fails, rather than erroring.
  * `+approx` enables `isDefEq` approximations (see `Lean.Meta.approxDefEq`).
-/
tactic_extension Lean.Parser.Tactic.apply

@[tactic_alt Lean.Parser.Tactic.apply]
-- We have to use `manyConfig` instead of `optConfig` to avoid ambiguous parses.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyWith/Variant64610110ae9db7dc3ae57d15cbaaad0c47d8c47fa0d2f1aead4bb5f4806d5cf1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyWith/Variant64610110ae9db7dc3ae57d15cbaaad0c47d8c47fa0d2f1aead4bb5f4806d5cf1.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb0696e7f83222f0aca31278deba637884dba0d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
