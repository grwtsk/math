# mass1_eq_normalized_mangoldt_sub_mass0

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cacd7e5f-165f-32b0-c596-a2b756a49ccd",
  "kind": "theorem",
  "lexical_name": "mass1_eq_normalized_mangoldt_sub_mass0",
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
  "slug": "mass1-eq-normalized-mangoldt-sub-mass0--63fd6be5acb566491c6b7c56",
  "source": {
    "blob": "b7cbf1035876b00c548102d527a81e126789da1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 31,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryReduction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63fd6be5acb566491c6b7c5651158ff9739b81977d7c5c85a98c59b5ee58a395",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryReduction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cacd7e5f-165f-32b0-c596-a2b756a49ccd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mass1_eq_normalized_mangoldt_sub_mass0
    {X : ℕ} (hX : 1 ≤ X) :
    mass1 X =
      centeredGreenDyadicMangoldtNormalizedDiscrepancy X - mass0 X := by
  unfold mass1 centeredGreenDyadicMangoldtNormalizedDiscrepancy
    centeredGreenDyadicMangoldtMass mass0
    centeredGreenArithmeticCoefficient centeredGreenLocation
  have hXr : (X : ℝ) ≠ 0 := by exact_mod_cast (by omega : X ≠ 0)
  have hsum :
      (∑ n ∈ centeredGreenWindow X,
        ((ArithmeticFunction.vonMangoldt n : ℝ) / (n : ℝ)) *
          ((n : ℝ) / (X : ℝ) - 1)) =
      (∑ n ∈ centeredGreenWindow X,
        (ArithmeticFunction.vonMangoldt n : ℝ)) / (X : ℝ) -
      ∑ n ∈ centeredGreenWindow X,
        (ArithmeticFunction.vonMangoldt n : ℝ) / (n : ℝ) := by
    rw [Finset.sum_sub_distrib, ← Finset.sum_div]
    apply congrArg₂ (· - ·)
    · apply Finset.sum_congr rfl
      intro n hn
      have hn0 : (n : ℝ) ≠ 0 := by
        have hnI := Finset.mem_Ioc.mp hn
        positivity
      field_simp
      ring
    · apply Finset.sum_congr rfl
      intro n hn
      ring
  rw [hsum]
  ring

/-- Squared mass1 is controlled by the two scalar discrepancies. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryReduction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryReduction.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7cbf1035876b00c548102d527a81e126789da1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
