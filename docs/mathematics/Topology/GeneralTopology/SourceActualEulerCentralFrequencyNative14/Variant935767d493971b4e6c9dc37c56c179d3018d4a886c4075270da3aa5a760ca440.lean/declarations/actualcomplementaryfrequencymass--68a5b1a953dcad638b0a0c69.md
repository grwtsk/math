# actualComplementaryFrequencyMass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6ecf340f11185881194030e43fc333c1b3c215ed4e6f633d377e595d3e357483",
  "kind": "def",
  "lexical_name": "actualComplementaryFrequencyMass",
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
  "slug": "actualcomplementaryfrequencymass--68a5b1a953dcad638b0a0c69",
  "source": {
    "blob": "cd071c8ddee0886f33d54533aba014a09415cfdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 518,
    "line": 511,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualEulerCentralFrequencyNative14/Variant935767d493971b4e6c9dc37c56c179d3018d4a886c4075270da3aa5a760ca440.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:68a5b1a953dcad638b0a0c6974471e63f373b5f3bd78c0b318ed81e26247875e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualEulerCentralFrequencyNative14/Variant935767d493971b4e6c9dc37c56c179d3018d4a886c4075270da3aa5a760ca440.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6ecf340f11185881194030e43fc333c1b3c215ed4e6f633d377e595d3e357483`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 511–518.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualComplementaryFrequencyMass (A : ℝ) : ℝ :=
  (1 / (2 * Real.pi)) *
    ((∫ t in -actualBumpMovingHeight A (3 / 2)..-actualCentralFrequencyRadius A,
      actualClosedFrequencyDensity A t) +
    ∫ t in actualCentralFrequencyRadius A..actualBumpMovingHeight A (3 / 2),
      actualClosedFrequencyDensity A t)

/-- The true whole retained head is exactly central plus complementary frequency mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualEulerCentralFrequencyNative14/Variant935767d493971b4e6c9dc37c56c179d3018d4a886c4075270da3aa5a760ca440.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualEulerCentralFrequencyNative14/Variant935767d493971b4e6c9dc37c56c179d3018d4a886c4075270da3aa5a760ca440.lean#L511).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd071c8ddee0886f33d54533aba014a09415cfdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
