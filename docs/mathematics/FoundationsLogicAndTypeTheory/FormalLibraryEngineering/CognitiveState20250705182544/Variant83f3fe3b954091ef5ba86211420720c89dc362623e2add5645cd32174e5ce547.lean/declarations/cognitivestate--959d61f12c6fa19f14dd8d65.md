# CognitiveState

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d53c88f7e4d3065069de39781145708d34e19f8e8a799eae9db2a9cfb18f40a8",
  "kind": "structure",
  "lexical_name": "CognitiveState",
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
  "slug": "cognitivestate--959d61f12c6fa19f14dd8d65",
  "source": {
    "blob": "842ede86cce4af33deb63c3ef879287a14b4fea2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 20,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CognitiveState20250705182544/Variant83f3fe3b954091ef5ba86211420720c89dc362623e2add5645cd32174e5ce547.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:959d61f12c6fa19f14dd8d65fef2ed0361c223fdb1d53b10c1e921b6a25a1f3a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CognitiveState20250705182544/Variant83f3fe3b954091ef5ba86211420720c89dc362623e2add5645cd32174e5ce547.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d53c88f7e4d3065069de39781145708d34e19f8e8a799eae9db2a9cfb18f40a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CognitiveState where
  /-- High-level cognitive mode (focus, reflect, plan, etc.). -/
  mode : CognitiveMode
  /-- Flow region (underloaded, optimal, overloaded). -/
  flow : FlowRegion
  /-- Milliseconds since last input. -/
  pauseMs : Nat
  /-- Character length of the most recent prompt. -/
  lastPromptLen : Nat
  /-- Recent error count (e.g. backspaces). -/
  recentErrorCount : Nat
  /-- Valence score ∈ [-1.0, 1.0] representing affect polarity. -/
  valence : Float
  /-- Confidence score ∈ [0.0, 1.0] representing user certainty. -/
  confidence : Float
  deriving Repr, DecidableEq

/-- Default (neutral) state: Focus mode, Optimal flow, zeroed metrics. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CognitiveState20250705182544/Variant83f3fe3b954091ef5ba86211420720c89dc362623e2add5645cd32174e5ce547.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CognitiveState20250705182544/Variant83f3fe3b954091ef5ba86211420720c89dc362623e2add5645cd32174e5ce547.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `842ede86cce4af33deb63c3ef879287a14b4fea2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
