# GlobalWindowSystem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3a3be6b3c5fd5a27df93db65f34b8e9f4aea88c019984f3727c17eb34913cdba",
  "kind": "structure",
  "lexical_name": "GlobalWindowSystem",
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
  "slug": "globalwindowsystem--5c89ddc77890617e1804e3a2",
  "source": {
    "blob": "d5332285c847914cc9290e4b8f0e73c70a89e47b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 22,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/WindowCover/Variant8ae9552fd9b88532ce9aceb03b47a01db4976b19b5fa4768dcac701c6c1b1582.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c89ddc77890617e1804e3a217016a5f4ce491c4324cc5365b83fd10d281bb65",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/WindowCover/Variant8ae9552fd9b88532ce9aceb03b47a01db4976b19b5fa4768dcac701c6c1b1582.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3a3be6b3c5fd5a27df93db65f34b8e9f4aea88c019984f3727c17eb34913cdba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure GlobalWindowSystem {State : Type u} (G : KnownMaximalState State) where
  WindowId : Type v
  windowFintype : Fintype WindowId
  windowDecEq : DecidableEq WindowId
  region : WindowId → AbsoluteRegion G
  overlappingWindows : AbsoluteRegion G → Finset WindowId
  overlapping_spec :
    letI := windowDecEq
    letI := G.coordDecEq
    ∀ R i,
      i ∈ overlappingWindows R ↔
        ((region i).coordinates ∩ R.coordinates).Nonempty
  weight : WindowId → G.Coord → Real
  weight_nonnegative : ∀ i c, 0 ≤ weight i c
  weight_support :
    letI := G.coordDecEq
    ∀ i c, c ∉ (region i).coordinates → weight i c = 0
  positive_cover :
    letI := windowFintype
    ∀ c, 0 < ∑ i : WindowId, weight i c

namespace GlobalWindowSystem

variable {State : Type u} {G : KnownMaximalState State}

/-- The exact finite intersecting-window function `κ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/WindowCover/Variant8ae9552fd9b88532ce9aceb03b47a01db4976b19b5fa4768dcac701c6c1b1582.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/WindowCover/Variant8ae9552fd9b88532ce9aceb03b47a01db4976b19b5fa4768dcac701c6c1b1582.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5332285c847914cc9290e4b8f0e73c70a89e47b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
