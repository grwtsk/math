# wienerRealLogWeight_integrableOn_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:19a2c5f6-ec77-b66a-4cec-8d80208ad33c",
  "kind": "theorem",
  "lexical_name": "wienerRealLogWeight_integrableOn_one",
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
  "slug": "wienerreallogweight-integrableon-one--d8bbcfbfc511b547b80d3550",
  "source": {
    "blob": "331f976ea19dd494d8e7f7dda77b81a4e45f9c42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 142,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelUniformBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8bbcfbfc511b547b80d3550968b335d5905504d65505e4085e117d4448dd050",
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

Occurrence: `result:19a2c5f6-ec77-b66a-4cec-8d80208ad33c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wienerRealLogWeight_integrableOn_one
    {T : ℝ} (hT : 0 < T) :
    IntegrableOn (wienerRealLogWeight T)
      (Set.Ioi (1 : ℝ)) volume := by
  have hFromLog :
      IntegrableOn
        (fun x : ℝ =>
          x⁻¹ * wienerShiftedCauchy T (Real.log x))
        (Set.Ioi (1 : ℝ)) volume := by
    simpa [smul_eq_mul, Real.log_one] using
      (integrableOn_comp_log_Ioi
        (wienerShiftedCauchy T) (a := 1) one_pos).mpr
          (wienerShiftedCauchy_integrable T).integrableOn
  exact hFromLog.congr_fun
    (fun x hx =>
      (wienerRealLogWeight_eq_shiftedCauchy
        hT (by have hx' : (1 : ℝ) < x := hx; linarith)).symm)
    measurableSet_Ioi

/-- Full upper bound for the improper kernel tail x>1: the
logarithmic image is the upper logarithmic half-line y>0,
which is contained in the ENTIRE line of known Cauchy mass.
This argument works for every T>0, not just T>=1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelUniformBound.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelUniformBound.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `331f976ea19dd494d8e7f7dda77b81a4e45f9c42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
