# actualHomogeneousColumnCompensation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:12cc9551c888235b8ac6862ad538be792f70839db4898e981b02529b651a2d1b",
  "kind": "def",
  "lexical_name": "actualHomogeneousColumnCompensation",
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
  "slug": "actualhomogeneouscolumncompensation--6f5475bde43ae36296f0bdc4",
  "source": {
    "blob": "7b18ab04feae20d599c2bd3a2a627692f617c0ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 100,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualHomogeneousColumnCancellation/Variantced1d841531139a7d234c000a9bf63f8398936eaf10a881bb54d427fec6151d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6f5475bde43ae36296f0bdc46aa2ed48d57452ec046f545747db69bb43d25353",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RootActualHomogeneousColumnCancellation/Variantced1d841531139a7d234c000a9bf63f8398936eaf10a881bb54d427fec6151d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:12cc9551c888235b8ac6862ad538be792f70839db4898e981b02529b651a2d1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualHomogeneousColumnCompensation (A coefficient : ℝ) : ℝ :=
  coefficient * Real.exp (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) / 2) *
      (∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
        actualAdjointTimePrimitive A 0 t * actualTwistedTimeDensity A t
          (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ))) +
    ∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
      actualAdjointTimePrimitive A 0 t *
        ∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..actualColumnUpper A,
          coefficient * Real.exp (s / 2) *
            covariantMixedDerivative (actualLogMixedDensity A) t s

/-- The actual signed critical half main fixes its homogeneous coefficient independently. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RootActualHomogeneousColumnCancellation/Variantced1d841531139a7d234c000a9bf63f8398936eaf10a881bb54d427fec6151d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualHomogeneousColumnCancellation/Variantced1d841531139a7d234c000a9bf63f8398936eaf10a881bb54d427fec6151d9.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b18ab04feae20d599c2bd3a2a627692f617c0ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
