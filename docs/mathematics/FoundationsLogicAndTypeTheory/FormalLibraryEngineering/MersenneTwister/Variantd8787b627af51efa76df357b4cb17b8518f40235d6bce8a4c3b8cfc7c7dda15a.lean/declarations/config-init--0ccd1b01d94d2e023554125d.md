# Config.init

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:da27631e38562b2f0515ea83bfa344cbe8057f97afed6cce553c9d70454776c0",
  "kind": "def",
  "lexical_name": "Config.init",
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
  "slug": "config-init--0ccd1b01d94d2e023554125d",
  "source": {
    "blob": "b5856f64226a6e6bea63addadf1eb5d33ab5dbba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 102,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MersenneTwister/Variantd8787b627af51efa76df357b4cb17b8518f40235d6bce8a4c3b8cfc7c7dda15a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ccd1b01d94d2e023554125dc4a731a299230a12ee94e0a26bbaaea82bddba01",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MersenneTwister/Variantd8787b627af51efa76df357b4cb17b8518f40235d6bce8a4c3b8cfc7c7dda15a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:da27631e38562b2f0515ea83bfa344cbe8057f97afed6cce553c9d70454776c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[specialize cfg] protected def Config.init (cfg : MersenneTwister.Config)
    (seed : BitVec cfg.wordSize := cfg.initSeed) : State cfg :=
  ⟨loop seed (.mkEmpty cfg.stateSize) (Nat.zero_le _), 0, cfg.zero_lt_stateSize⟩
where
  /-- Inner loop for Mersenne Twister initalization. -/
  loop (w : BitVec cfg.wordSize) (v : Array (BitVec cfg.wordSize)) (h : v.size ≤ cfg.stateSize) :=
    if heq : v.size = cfg.stateSize then ⟨v, heq⟩ else
      let v := v.push w
      let w := cfg.initMult * (w ^^^ (w >>> cfg.wordSize - 2)) + v.size
      loop w v (by simp only [v, Array.size_push]; omega)

/-- Apply the twisting transformation to the given state. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MersenneTwister/Variantd8787b627af51efa76df357b4cb17b8518f40235d6bce8a4c3b8cfc7c7dda15a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MersenneTwister/Variantd8787b627af51efa76df357b4cb17b8518f40235d6bce8a4c3b8cfc7c7dda15a.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5856f64226a6e6bea63addadf1eb5d33ab5dbba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
