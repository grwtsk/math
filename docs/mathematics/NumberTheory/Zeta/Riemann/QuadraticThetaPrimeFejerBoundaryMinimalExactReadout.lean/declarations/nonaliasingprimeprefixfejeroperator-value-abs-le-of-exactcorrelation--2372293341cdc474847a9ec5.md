# nonAliasingPrimePrefixFejerOperator_value_abs_le_of_exactCorrelation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7027e306-9447-39e0-9153-7ab9457a7387",
  "kind": "theorem",
  "lexical_name": "nonAliasingPrimePrefixFejerOperator_value_abs_le_of_exactCorrelation",
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
  "slug": "nonaliasingprimeprefixfejeroperator-value-abs-le-of-exactcorrelation--2372293341cdc474847a9ec5",
  "source": {
    "blob": "440e1957e04c7480d04be040ce5d07afc312d50a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 195,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerBoundaryMinimalExactReadout.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2372293341cdc474847a9ec5054092ffba77cc8078321f3cac23e88ae60641a0",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerBoundaryMinimalExactReadout.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7027e306-9447-39e0-9153-7ab9457a7387`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonAliasingPrimePrefixFejerOperator_value_abs_le_of_exactCorrelation
    {X N m : ℕ}
    (hX : 0 < X)
    {C : ℝ}
    (hC : 0 ≤ C)
    (hcorr :
      nonAliasingFejerQuadraticCorrelation X N m ≤
        C * Real.rpow (X : ℝ) ((3 : ℝ) / 2) *
          (Real.log (X : ℝ))^4) :
    |nonAliasingPrimePrefixFejerOperator.value X N m| ≤
      Real.sqrt C *
        Real.rpow (X : ℝ) ((3 : ℝ) / 4) *
        (Real.log (X : ℝ))^2 := by
  have hXpos : 0 < (X : ℝ) := by
    exact_mod_cast hX
  have hrpowSq :
      (Real.rpow (X : ℝ) ((3 : ℝ) / 4))^2 =
        Real.rpow (X : ℝ) ((3 : ℝ) / 2) := by
    rw [pow_two, ← Real.rpow_add hXpos]
    congr 1
    ring
  apply abs_le_of_sq_le_sq
  · rw [← nonAliasingFejerQuadraticCorrelation_eq_value_sq]
    calc
      nonAliasingFejerQuadraticCorrelation X N m
          ≤
        C * Real.rpow (X : ℝ) ((3 : ℝ) / 2) *
          (Real.log (X : ℝ))^4 := hcorr
      _ =
        (Real.sqrt C *
          Real.rpow (X : ℝ) ((3 : ℝ) / 4) *
          (Real.log (X : ℝ))^2)^2 := by
            conv_lhs =>
              rw [← Real.sq_sqrt hC, ← hrpowSq]
            ring
  · positivity

/-- The already proved period-4X Fejer comparison has exact
`X^(3/4) log(X)^2` shape at the concrete cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerBoundaryMinimalExactReadout.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerBoundaryMinimalExactReadout.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `440e1957e04c7480d04be040ce5d07afc312d50a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
