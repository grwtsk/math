# negativeSmoothMoment_eq_tail_pairing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b4ca6a96-d8a4-5771-b041-ff81215d4bdd",
  "kind": "theorem",
  "lexical_name": "negativeSmoothMoment_eq_tail_pairing",
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
  "slug": "negativesmoothmoment-eq-tail-pairing--ade2affda6ef9cee37a799eb",
  "source": {
    "blob": "4d3adcea4cb1e5d5e30e493e86a15c8a6bc401b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 125,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Varianted2f849ccfae72768a5724bf0de4cbc601c1980178cc78d1f535a8f9a2c1c2cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ade2affda6ef9cee37a799eb0b87e99cfa6a70f338c67d306655fb5bab6e9df9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Varianted2f849ccfae72768a5724bf0de4cbc601c1980178cc78d1f535a8f9a2c1c2cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4ca6a96-d8a4-5771-b041-ff81215d4bdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem negativeSmoothMoment_eq_tail_pairing {A : ℝ} (hA : 0 < A) :
    negativeSmoothMoment A = ∫ x : ℝ, normalizedTest explicitSecondDerivative A x *
      (Real.exp (x/2) * ∫ u in Ici x, Real.exp (-u/2) *
        normalizedTest explicitSecondDerivative A u) := by
  rw [negativeSmoothMoment_eq_forward_integral hA]
  apply integral_congr_ae
  filter_upwards [] with x
  exact forwardHalfKernel_interval_eq_tail_pairing hA x

/-- The original negative half moment is the positive causal source energy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Varianted2f849ccfae72768a5724bf0de4cbc601c1980178cc78d1f535a8f9a2c1c2cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Varianted2f849ccfae72768a5724bf0de4cbc601c1980178cc78d1f535a8f9a2c1c2cd.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d3adcea4cb1e5d5e30e493e86a15c8a6bc401b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
