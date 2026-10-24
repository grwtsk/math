# PrimitiveAdditiveTriple.frey_logHeight_lower_of_primitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2357a9f-b1f3-43df-b012-a034f1ac85f3",
  "kind": "theorem",
  "lexical_name": "PrimitiveAdditiveTriple.frey_logHeight_lower_of_primitive",
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
  "slug": "primitiveadditivetriple-frey-logheight-lower-of-primitive--0dd491f2ec4d3e2dea2e26b5",
  "source": {
    "blob": "7d719bffacefa1187b1292d7e3f024a917f8194e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 67,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyProjectiveHeight.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0dd491f2ec4d3e2dea2e26b56c6d81e91c208d3fcb2768198ef0c57a4eaaeaf3",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyProjectiveHeight.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2357a9f-b1f3-43df-b012-a034f1ac85f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PrimitiveAdditiveTriple.frey_logHeight_lower_of_primitive
    (t : PrimitiveAdditiveTriple) (v : FreySectionCoordinates)
    (hv : Finset.univ.gcd v = 1) :
    Height.logHeight (freySectionCoordinatesToRat v) ≤
      Height.logHeight (t.freyAffinePortEval (freySectionCoordinatesToRat v)) := by
  rw [t.freyAffinePortEval_intCast]
  change Height.logHeight (((↑) : ℤ → ℚ) ∘ v) ≤
    Height.logHeight (((↑) : ℤ → ℚ) ∘ (t.threePortEval v))
  rw [Rat.logHeight_eq_max_abs_of_gcd_eq_one hv,
    Rat.logHeight_eq_max_abs_of_gcd_eq_one (by rw [t.threePort_gcd_eq, hv]),
    frey_iSup2_abs, frey_iSup3_abs]
  have h := t.freyAffinePortEval_norm_lower (freySectionCoordinatesToRat v)
  rw [t.freyAffinePortEval_intCast] at h
  dsimp only [freyMaxNorm2, freyMaxNorm3, freySectionCoordinatesToRat,
    freyThreePortValuesToRat] at h
  have hint : max |v 0| |v 1| ≤
      max |t.threePortEval v 0| (max |t.threePortEval v 1| |t.threePortEval v 2|) := by
    exact_mod_cast h
  have hvne : v ≠ 0 := by
    intro hz
    have hh : Finset.univ.gcd v = 0 :=
      Finset.gcd_eq_zero_iff.mpr (by intro i _; rw [hz]; rfl)
    rw [hv] at hh
    exact one_ne_zero hh
  obtain ⟨i, hi⟩ := Function.ne_iff.mp hvne
  have hpos : (0 : ℤ) < max |v 0| |v 1| := by
    have hsup : (0 : ℤ) < ⨆ j, |v j| :=
      (abs_pos.mpr hi).trans_le (Finite.le_ciSup_of_le i le_rfl)
    simpa only [frey_iSup2_abs] using hsup
  apply Real.log_le_log (by exact_mod_cast hpos)
  exact_mod_cast hint

/-- Rational scaling commutes with the actual affine observation map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyProjectiveHeight.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyProjectiveHeight.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d719bffacefa1187b1292d7e3f024a917f8194e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
