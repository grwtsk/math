# octahedralDirectionFrame

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b4af2dbbe59ec95198cdcd737a63f0a95f67e386c6d2a8bd84d5322f4a595cd6",
  "kind": "def",
  "lexical_name": "octahedralDirectionFrame",
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
  "slug": "octahedraldirectionframe--ff2d358543cff28910ea88c7",
  "source": {
    "blob": "1d5695659aea0c7e03b169776f7d76628a1cb064",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 80,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/SourceComponents/Varianta39bd7ea7b0bed5f/OctahedralDirectionShadowData.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ff2d358543cff28910ea88c78382e197f885e4f6507ab8ed887630fe366739dd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/SourceComponents/Varianta39bd7ea7b0bed5f/OctahedralDirectionShadowData.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b4af2dbbe59ec95198cdcd737a63f0a95f67e386c6d2a8bd84d5322f4a595cd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def octahedralDirectionFrame : DirectionFrame where
  dim := 3
  Direction := OctahedralVertex
  directionIndex := octahedralDirectionIndex
  directionIndexSound := OctahedralDirectionIndexSound
  directionIndexProof := octahedralDirectionIndexSoundProof
  nullLabel := "octahedral null center"
  opposite := octahedralOpposite
  opposite_involutive := by
    intro direction
    cases direction with
    | x sign => cases sign <;> rfl
    | y sign => cases sign <;> rfl
    | z sign => cases sign <;> rfl
  polarity := octahedralPolarity
  fullTurnDenominator := 6
  fullTurnPositive := by decide
  phaseNumerator := octahedralPhaseNumerator

/-- Concrete two-sphere shadow centered at the octahedral null point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/SourceComponents/Varianta39bd7ea7b0bed5f/OctahedralDirectionShadowData.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/SourceComponents/Varianta39bd7ea7b0bed5f/OctahedralDirectionShadowData.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d5695659aea0c7e03b169776f7d76628a1cb064` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
