# actualFullPhysicalPeriodicRow_eq_physical_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8494ea5e-2cc6-b085-e079-91cec1790fa7",
  "kind": "theorem",
  "lexical_name": "actualFullPhysicalPeriodicRow_eq_physical_abel",
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
  "slug": "actualfullphysicalperiodicrow-eq-physical-abel--34a490763b3d7610fd38e50a",
  "source": {
    "blob": "6086b6321c55e17cb4b345996f19c70881a6fb9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 83,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualFullPhysicalPeriodicInterior/Variant5d011f839f04aba8612b5e5e0e2187febd4be2b678361b83a9847806c853a87c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34a490763b3d7610fd38e50a4462e95f08c38a65b0acdaf2733532c16b8eca01",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualFullPhysicalPeriodicInterior/Variant5d011f839f04aba8612b5e5e0e2187febd4be2b678361b83a9847806c853a87c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8494ea5e-2cc6-b085-e079-91cec1790fa7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualFullPhysicalPeriodicRow_eq_physical_abel {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    actualFullPhysicalPeriodicRow A t =
      actualPhysicalPeriodicPrimitive (vaughanCutoff A)
          ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ) *
        actualPeriodicPhysicalCellProfile A t
          ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ) -
      actualPhysicalPeriodicPrimitive (vaughanCutoff A) ((vaughanCutoff A + 1 : ℕ) : ℝ) *
        actualPeriodicPhysicalCellProfile A t ((vaughanCutoff A + 1 : ℕ) : ℝ) -
      ∫ x in ((vaughanCutoff A + 1 : ℕ) : ℝ)..
          ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ),
        actualPhysicalPeriodicPrimitive (vaughanCutoff A) x *
          deriv (actualPeriodicPhysicalCellProfile A t) x := by
  obtain ⟨hu, hk⟩ := physical_orders hA
  apply actual_physical_prefix_abel (vaughanCutoff A) (vaughanCutoff_pos A hA) hu hk
  rw [uIcc_of_le hk]
  exact actualPeriodicPhysicalCellProfile_contDiffOn (by linarith : 0 < A)
    (by positivity) _ t

/-- A split at any actual physical point retains the near row and the complete far row. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualFullPhysicalPeriodicInterior/Variant5d011f839f04aba8612b5e5e0e2187febd4be2b678361b83a9847806c853a87c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualFullPhysicalPeriodicInterior/Variant5d011f839f04aba8612b5e5e0e2187febd4be2b678361b83a9847806c853a87c.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6086b6321c55e17cb4b345996f19c70881a6fb9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
