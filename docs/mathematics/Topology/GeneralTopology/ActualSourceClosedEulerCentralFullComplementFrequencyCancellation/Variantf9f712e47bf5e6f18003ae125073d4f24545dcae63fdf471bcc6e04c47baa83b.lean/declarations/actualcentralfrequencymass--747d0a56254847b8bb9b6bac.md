# actualCentralFrequencyMass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:098b96983f371c2243e219d10d7a014f1b6dcbc05b2e9112241a6fd80ab3bf6b",
  "kind": "def",
  "lexical_name": "actualCentralFrequencyMass",
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
  "slug": "actualcentralfrequencymass--747d0a56254847b8bb9b6bac",
  "source": {
    "blob": "5440a36f5e5f22290a6ce9474faff579a7df8cfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 280,
    "path": "GRWTSK/Topology/GeneralTopology/ActualSourceClosedEulerCentralFullComplementFrequencyCancellation/Variantf9f712e47bf5e6f18003ae125073d4f24545dcae63fdf471bcc6e04c47baa83b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:747d0a56254847b8bb9b6bacd11aaca3463d830f38d774e3a878cd2f292c4d27",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualSourceClosedEulerCentralFullComplementFrequencyCancellation/Variantf9f712e47bf5e6f18003ae125073d4f24545dcae63fdf471bcc6e04c47baa83b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:098b96983f371c2243e219d10d7a014f1b6dcbc05b2e9112241a6fd80ab3bf6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualCentralFrequencyMass (A : ℝ) : ℝ :=
  (1 / (2 * Real.pi)) * ∫ t in -actualCentralFrequencyRadius A..
    actualCentralFrequencyRadius A, actualClosedFrequencyDensity A t

/-- The positive contribution of the literal prime two fixes a genuine constant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualSourceClosedEulerCentralFullComplementFrequencyCancellation/Variantf9f712e47bf5e6f18003ae125073d4f24545dcae63fdf471bcc6e04c47baa83b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualSourceClosedEulerCentralFullComplementFrequencyCancellation/Variantf9f712e47bf5e6f18003ae125073d4f24545dcae63fdf471bcc6e04c47baa83b.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5440a36f5e5f22290a6ce9474faff579a7df8cfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
