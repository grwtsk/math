# testIntervalNeg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:98120bae99d62070c751018badf565dd592bff85343be16fed3d53b4eff3204d",
  "kind": "def",
  "lexical_name": "testIntervalNeg",
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
  "slug": "testintervalneg--4262dcf6d88f05252c3bd6d5",
  "source": {
    "blob": "8d4a5a0bc1c6e839b9cee57de8564309266eece8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 48,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TransformerTest/Variant761711878d00248d3e1269aea81a827fac93987e6774e72daec2ee8d0be2871d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4262dcf6d88f05252c3bd6d54c4ed246bf6d0304bb5f80b92cea9f365118c904",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TransformerTest/Variant761711878d00248d3e1269aea81a827fac93987e6774e72daec2ee8d0be2871d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:98120bae99d62070c751018badf565dd592bff85343be16fed3d53b4eff3204d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def testIntervalNeg : IntervalDyadic :=
  IntervalDyadic.ofIntervalRat ⟨-2, -1/2, by norm_num⟩ (-53)

-- Run GELU on test intervals
#eval! do
  let result0 := geluInterval testInterval0
  IO.println s!"GELU([-1, 1]) = {showInterval result0}"

  let resultPos := geluInterval testIntervalPos
  IO.println s!"GELU([0.5, 1.5]) = {showInterval resultPos}"

  let resultNeg := geluInterval testIntervalNeg
  IO.println s!"GELU([-2, -0.5]) = {showInterval resultNeg}"

-- Verify GELU correctness theorem compiles
#check @mem_geluIntervalRat
#check @mem_geluInterval

/-! ### Test LayerNorm -/

-- Simple LayerNorm params: identity scale, zero shift
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TransformerTest/Variant761711878d00248d3e1269aea81a827fac93987e6774e72daec2ee8d0be2871d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TransformerTest/Variant761711878d00248d3e1269aea81a827fac93987e6774e72daec2ee8d0be2871d.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d4a5a0bc1c6e839b9cee57de8564309266eece8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
