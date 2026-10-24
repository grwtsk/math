# wienerLambdaLogKernel_uniform_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba1a8731-4789-af75-dfea-8a4fe586e920",
  "kind": "theorem",
  "lexical_name": "wienerLambdaLogKernel_uniform_bound",
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
  "slug": "wienerlambdalogkernel-uniform-bound--11156bdc3aa1b37c8d5ccd5d",
  "source": {
    "blob": "331f976ea19dd494d8e7f7dda77b81a4e45f9c42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 350,
    "line": 327,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelUniformBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11156bdc3aa1b37c8d5ccd5dd59e84ab74ed760ff05938a1fa9486899c7443c7",
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

Occurrence: `result:ba1a8731-4789-af75-dfea-8a4fe586e920`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wienerLambdaLogKernel_uniform_bound
    {T : ℝ} (hT : 1 ≤ T) :
    Summable (wienerLambdaLogKernel T) ∧
      (∑' n : ℕ, wienerLambdaLogKernel T n) ≤
        (Real.log 4 + 4) * (1 + 2 * Real.pi ^ 2) := by
  have hTpos : 0 < T := zero_lt_one.trans_le hT
  obtain ⟨hShiftSum, hShiftBound⟩ :=
    wienerShiftedLambda_logKernel_tsum_le hTpos
  have hOrigShift :
      Summable (fun k : ℕ => wienerLambdaLogKernel T (k + 1)) := by
    simpa only [wienerLambdaLogKernel_shift_eq] using hShiftSum
  have hOrig : Summable (wienerLambdaLogKernel T) :=
    (summable_nat_add_iff 1).mp hOrigShift
  have hEq :
      (∑' n : ℕ, wienerLambdaLogKernel T n) =
        ∑' k : ℕ,
          wienerShiftedLambda k * wienerShiftedLogWeight T k := by
    rw [hOrig.tsum_eq_zero_add]
    rw [wienerLambdaLogKernel_zero, zero_add]
    exact tsum_congr (fun k =>
      wienerLambdaLogKernel_shift_eq T k)
  exact ⟨hOrig, hEq.le.trans hShiftBound⟩

end GRWTSK.RiemannHypothesis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelUniformBound.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelUniformBound.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `331f976ea19dd494d8e7f7dda77b81a4e45f9c42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
