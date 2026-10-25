# isDefEqD

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5c3c9b33f2d3a75949650fb55d4cf4d656454b55581494600feccd1d2b7466fb",
  "kind": "def",
  "lexical_name": "isDefEqD",
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
  "slug": "isdefeqd--65eb88f9ed9b8883c265dd12",
  "source": {
    "blob": "20e3e5ee85818ad6002ce0762167e0d6b4cf7186",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2535,
    "line": 2532,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2b2c81506f42c3afb25d14f914bcaddf8d3aab6959433b69ed336f9463d786e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:65eb88f9ed9b8883c265dd123fccb8f1dbdc0c15dc568d5a0aa2f5d26e0283cb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2b2c81506f42c3afb25d14f914bcaddf8d3aab6959433b69ed336f9463d786e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5c3c9b33f2d3a75949650fb55d4cf4d656454b55581494600feccd1d2b7466fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2532–2535.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isDefEqD (t s : Expr) : MetaM Bool :=
  withDefault <| isDefEq t s

/-- Similar to `isDefEq`, but ensures that only reducible definitions and instances can be reduced. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2b2c81506f42c3afb25d14f914bcaddf8d3aab6959433b69ed336f9463d786e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2b2c81506f42c3afb25d14f914bcaddf8d3aab6959433b69ed336f9463d786e7.lean#L2532).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20e3e5ee85818ad6002ce0762167e0d6b4cf7186` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
