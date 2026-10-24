# actualFixedCenteredMangoldtRiesz_paid_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd5835b2-d786-c399-d4e3-cf88b1ad11b0",
  "kind": "theorem",
  "lexical_name": "actualFixedCenteredMangoldtRiesz_paid_bounds",
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
  "slug": "actualfixedcenteredmangoldtriesz-paid-bounds--3f51fa54322ff5a1420b95bc",
  "source": {
    "blob": "cea1e9cea2c83acbd6020d38e52b52215589259e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 64,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszFixedCenterTransfer/Variant146d69f536386b40d0762107f069289073bb2e456f56cb4155e5ff23963d61fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f51fa54322ff5a1420b95bc6cc809641e72bc58c298f6125802b0b308ee064c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszFixedCenterTransfer/Variant146d69f536386b40d0762107f069289073bb2e456f56cb4155e5ff23963d61fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd5835b2-d786-c399-d4e3-cf88b1ad11b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualFixedCenteredMangoldtRiesz_paid_bounds {A : ℝ} (hA : 1 ≤ A) (b : ℝ) :
    (∫ t in 0..2 * A, deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
      actualFixedCenteredMangoldtRieszPrimitive b t) ≤
        mertensResidual A - archimedeanMultiplier 0 / 2 ∧
      mertensResidual A - archimedeanMultiplier 0 / 2 ≤
        (∫ t in 0..2 * A, deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
          actualFixedCenteredMangoldtRieszPrimitive b t) + 56 / A ^ 2 := by
  have hδ := actualRiesz_finite_center_payment_bound (show 0 < A by linarith)
  rw [actualFixedCenteredMangoldtRiesz_readout hA b]
  constructor <;> linarith [hδ.1,hδ.2]

/-- The actual fixed-center readout differs by this proved vanishing finite cost. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszFixedCenterTransfer/Variant146d69f536386b40d0762107f069289073bb2e456f56cb4155e5ff23963d61fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszFixedCenterTransfer/Variant146d69f536386b40d0762107f069289073bb2e456f56cb4155e5ff23963d61fa.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cea1e9cea2c83acbd6020d38e52b52215589259e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
