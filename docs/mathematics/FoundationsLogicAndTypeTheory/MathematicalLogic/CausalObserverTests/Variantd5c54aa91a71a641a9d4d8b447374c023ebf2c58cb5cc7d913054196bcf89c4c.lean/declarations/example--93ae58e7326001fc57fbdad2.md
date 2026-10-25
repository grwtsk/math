# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ac781f0bb1b3f520e4fa3e4d423e77aaf21fc0c59ef3993117a51b0ad9003d8a",
  "kind": "example",
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
  "slug": "example--93ae58e7326001fc57fbdad2",
  "source": {
    "blob": "76a0ddece0c93ce1373d1ebc624fe40f22e0e73b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 590,
    "line": 582,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalObserverTests/Variantd5c54aa91a71a641a9d4d8b447374c023ebf2c58cb5cc7d913054196bcf89c4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:93ae58e7326001fc57fbdad23e63dcfb15bef5330dea840f28e44f2d67133622",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalObserverTests/Variantd5c54aa91a71a641a9d4d8b447374c023ebf2c58cb5cc7d913054196bcf89c4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ac781f0bb1b3f520e4fa3e4d423e77aaf21fc0c59ef3993117a51b0ad9003d8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 582–590.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example :
    ¬ (fullPacketSystem bitStringPacketCodec).CausalEquivalent
      validZeroPacketOne validZeroPacketTwo := by
  intro h
  exact validZeroPackets_ne
    ((fullPacket_causalEquivalent_iff_eq bitStringPacketCodec _ _).mp h)

/-! ### Total reducer evaluation and emitted Rust artifact data -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalObserverTests/Variantd5c54aa91a71a641a9d4d8b447374c023ebf2c58cb5cc7d913054196bcf89c4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalObserverTests/Variantd5c54aa91a71a641a9d4d8b447374c023ebf2c58cb5cc7d913054196bcf89c4c.lean#L582).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76a0ddece0c93ce1373d1ebc624fe40f22e0e73b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
