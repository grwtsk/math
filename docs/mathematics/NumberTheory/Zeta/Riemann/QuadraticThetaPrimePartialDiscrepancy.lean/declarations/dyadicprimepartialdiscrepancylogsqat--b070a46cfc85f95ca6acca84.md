# DyadicPrimePartialDiscrepancyLogSqAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:778eb0dba12a2d570fcfd711dbd10893d57a6ce50aeda47111ad4d029a18ece2",
  "kind": "def",
  "lexical_name": "DyadicPrimePartialDiscrepancyLogSqAt",
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
  "slug": "dyadicprimepartialdiscrepancylogsqat--b070a46cfc85f95ca6acca84",
  "source": {
    "blob": "da9233bebfd17871dc9b69af072e9108a0904490",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 95,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimePartialDiscrepancy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b070a46cfc85f95ca6acca844af384486a52d58be7da1f139c322b6fd87e4264",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimePartialDiscrepancy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:778eb0dba12a2d570fcfd711dbd10893d57a6ce50aeda47111ad4d029a18ece2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def DyadicPrimePartialDiscrepancyLogSqAt (ρ : ℝ) : Prop :=
  ∃ S : ℝ, 0 ≤ S ∧
    ∃ j₀ : ℕ,
      ∀ j ≥ j₀, ∀ m : ℕ,
        2 * dyadicScale j ≤ m →
        m ≤ 4 * dyadicScale j →
        |primeIntervalLogMass (2 * dyadicScale j) m -
            ((m : ℝ) - ((2 * dyadicScale j : ℕ) : ℝ))| ≤
          S *
            Real.rpow (dyadicScale j : ℝ)
              (quadraticThreshold ρ) *
            (Real.log (dyadicScale j : ℝ))^2

/-- At integer endpoints, the partial-prime discrepancy is exactly the
theta-error oscillation from 2X. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimePartialDiscrepancy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimePartialDiscrepancy.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da9233bebfd17871dc9b69af072e9108a0904490` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
