# ThresholdGradedPrimeFejerQuadraticCorrelationSupplier.toSplitSupplier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:92ffe0206c8027423c55d27546150dfbbc369553992a9f967102afb9b0e31518",
  "kind": "def",
  "lexical_name": "ThresholdGradedPrimeFejerQuadraticCorrelationSupplier.toSplitSupplier",
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
  "slug": "thresholdgradedprimefejerquadraticcorrelationsupplier-tosplitsupplier--a2e8b63fde4b9fd170d7fb4f",
  "source": {
    "blob": "b021e3265e9c78a8f13944cc3cf9b28d27384c19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 268,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerQuadraticCorrelationTarget.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a2e8b63fde4b9fd170d7fb4f4d7702f4ac81c90a73cb26a3f159d48d8c976e9a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerQuadraticCorrelationTarget.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:92ffe0206c8027423c55d27546150dfbbc369553992a9f967102afb9b0e31518`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ThresholdGradedPrimeFejerQuadraticCorrelationSupplier.toSplitSupplier
    {ρ β κ : ℝ}
    (supplier :
      ThresholdGradedPrimeFejerQuadraticCorrelationSupplier
        ρ β κ) :
    ThresholdGradedPrimeFejerSplitSupplier ρ β where
  bandwidthExponent_nonnegative :=
    supplier.bandwidthExponent_nonnegative
  arithmeticGain :=
    gradedQuadraticCorrelationArithmeticGain κ
  arithmeticGain_nonnegative := by
    unfold gradedQuadraticCorrelationArithmeticGain
    exact div_nonneg supplier.correlationSaving_nonnegative (by norm_num)
  boundary_closure :=
    supplier.boundary_closure
  value_closure := by
    rw [gradedSplitSmoothedValueExponent_quadraticCorrelationGain]
    exact supplier.amplitude_closure
  readout := by
    intro hgraded
    exact supplier.readout
      (supplier.correlation_bound hgraded)

/-- At seven eighths the required saving in the squared correlation is exactly
one quarter. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerQuadraticCorrelationTarget.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerQuadraticCorrelationTarget.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b021e3265e9c78a8f13944cc3cf9b28d27384c19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
