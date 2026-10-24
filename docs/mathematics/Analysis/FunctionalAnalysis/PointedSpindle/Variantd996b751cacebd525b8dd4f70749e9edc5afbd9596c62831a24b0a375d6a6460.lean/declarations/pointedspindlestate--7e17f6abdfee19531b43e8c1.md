# PointedSpindleState

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ebe7382b9a52be6ef46d6d0c67750d9688fdfbf5343cc4de3947c20f2cc554e3",
  "kind": "structure",
  "lexical_name": "PointedSpindleState",
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
  "slug": "pointedspindlestate--7e17f6abdfee19531b43e8c1",
  "source": {
    "blob": "db65d30678d53fb1c9f6e9178c7f038f1f417137",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 42,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/PointedSpindle/Variantd996b751cacebd525b8dd4f70749e9edc5afbd9596c62831a24b0a375d6a6460.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7e17f6abdfee19531b43e8c19b5017b303da7513164fd830b7e6256eb2565d5c",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/PointedSpindle/Variantd996b751cacebd525b8dd4f70749e9edc5afbd9596c62831a24b0a375d6a6460.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ebe7382b9a52be6ef46d6d0c67750d9688fdfbf5343cc4de3947c20f2cc554e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PointedSpindleState
    (dimension : Nat) (Grid : Type u)
    [Fintype Grid] [Nonempty Grid] where
  terrainPoint : TerrainPoint dimension
  characterOrbit : Arithmetic.CharacterOrbit
  packet : SpectralPacketData Grid
  orbitVector : FiniteHilbert (Fin 2)
  orbitVector_norm_one : ‖orbitVector‖ = 1

namespace PointedSpindleState

variable {dimension : Nat} {Grid : Type u}
variable [Fintype Grid] [Nonempty Grid]

/-- The exact carried vector
`Ω_terrain ⊗ η_packet ⊗ e_[χ]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/PointedSpindle/Variantd996b751cacebd525b8dd4f70749e9edc5afbd9596c62831a24b0a375d6a6460.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/PointedSpindle/Variantd996b751cacebd525b8dd4f70749e9edc5afbd9596c62831a24b0a375d6a6460.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db65d30678d53fb1c9f6e9178c7f038f1f417137` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
