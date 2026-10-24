# ThresholdGradedPrimeFejerSplitSupplier.toThresholdGradedPrimeFejerSupplier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d7ad63576fd90e08baa3c73359cc10d752c3318fd9c09250f91ba3d0914ff927",
  "kind": "def",
  "lexical_name": "ThresholdGradedPrimeFejerSplitSupplier.toThresholdGradedPrimeFejerSupplier",
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
  "slug": "thresholdgradedprimefejersplitsupplier-tothresholdgradedprimefejersuppli--7970c5dd718bb19d16157701",
  "source": {
    "blob": "f26232f427a5ab8833a3ed2e4b1378ebe24ad129",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 199,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticGainSplit.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7970c5dd718bb19d16157701b80dc951e461d8cbb2c96aa44302ba21bfd36282",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d7ad63576fd90e08baa3c73359cc10d752c3318fd9c09250f91ba3d0914ff927`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ThresholdGradedPrimeFejerSplitSupplier.toThresholdGradedPrimeFejerSupplier
    {ρ β : ℝ}
    (supplier :
      ThresholdGradedPrimeFejerSplitSupplier ρ β) :
    ThresholdGradedPrimeFejerSupplier ρ β where
  gain :=
    gradedBandwidthGain β + supplier.arithmeticGain
  gain_nonnegative := by
    exact add_nonneg
      (div_nonneg supplier.bandwidthExponent_nonnegative (by norm_num))
      supplier.arithmeticGain_nonnegative
  boundary_closure :=
    supplier.boundary_closure
  smoothed_value_closure := by
    simpa [gradedSplitSmoothedValueExponent] using
      supplier.value_closure
  readout :=
    supplier.readout

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticGainSplit.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f26232f427a5ab8833a3ed2e4b1378ebe24ad129` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
