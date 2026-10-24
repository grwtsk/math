# wienerRealLogWeight_integral_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:37ddf9e1-868f-8708-8e7f-25019934ced4",
  "kind": "theorem",
  "lexical_name": "wienerRealLogWeight_integral_le",
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
  "slug": "wienerreallogweight-integral-le--ef5e7ef08d9eedf5df6fc88e",
  "source": {
    "blob": "331f976ea19dd494d8e7f7dda77b81a4e45f9c42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 165,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelUniformBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef5e7ef08d9eedf5df6fc88e622fbdcbf8e3d27cb48ee9a4fad3c4e0eff0f1ed",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelUniformBound.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37ddf9e1-868f-8708-8e7f-25019934ced4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wienerRealLogWeight_integral_le
    {T : ℝ} (hT : 0 < T) :
    (∫ x in Set.Ioi (1 : ℝ), wienerRealLogWeight T x) ≤
      2 * Real.pi ^ 2 := by
  have hChange :
      (∫ x in Set.Ioi (1 : ℝ), wienerRealLogWeight T x) =
      ∫ y in Set.Ioi (0 : ℝ), wienerShiftedCauchy T y := by
    calc
      (∫ x in Set.Ioi (1 : ℝ), wienerRealLogWeight T x) =
          ∫ x in Set.Ioi (1 : ℝ),
            x⁻¹ * wienerShiftedCauchy T (Real.log x) := by
        apply setIntegral_congr_fun measurableSet_Ioi
        intro x hx
        exact wienerRealLogWeight_eq_shiftedCauchy
          hT (by linarith [hx])
      _ = ∫ y in Set.Ioi (0 : ℝ), wienerShiftedCauchy T y := by
        simpa [smul_eq_mul, Real.log_one] using
          (integral_comp_log_Ioi
            (wienerShiftedCauchy T) (a := 1) one_pos)
  have hMono :
      (∫ y in Set.Ioi (0 : ℝ), wienerShiftedCauchy T y) ≤
        ∫ y : ℝ, wienerShiftedCauchy T y := by
    have hnonneg :
        0 ≤ᵐ[volume.restrict Set.univ] wienerShiftedCauchy T :=
      Filter.Eventually.of_forall
        (fun y => wienerShiftedCauchy_nonnegative T y)
    have hsub :
        Set.Ioi (0 : ℝ) ≤ᵐ[volume] Set.univ :=
      Filter.Eventually.of_forall (fun y => Set.mem_univ y)
    simpa only [Measure.restrict_univ, setIntegral_univ] using
      (setIntegral_mono_set
        (s := Set.Ioi (0 : ℝ)) (t := Set.univ)
        (wienerShiftedCauchy_integrable T).integrableOn
        hnonneg hsub)
  rw [hChange]
  exact hMono.trans_eq (wienerShiftedCauchy_integral T)

/-- The first true Fourier kernel sample contributes at most 1.
It is not harmless to drop this term: it is responsible for the
leading 1 in the sharp simple uniform constant 1+2*pi^2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelUniformBound.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelUniformBound.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `331f976ea19dd494d8e7f7dda77b81a4e45f9c42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
