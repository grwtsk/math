# log_cube_div_square_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4cbaabd6-d12f-506f-46f2-c006749cd68c",
  "kind": "theorem",
  "lexical_name": "log_cube_div_square_le",
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
  "slug": "log-cube-div-square-le--576ef099d532e2ee6056cc0f",
  "source": {
    "blob": "938af866f11066afd55ca5281126c43588847c09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 143,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpDiagonalTail/Variant0172f79475634d6d08bb7aa26776c5838494cea555a3f6b46b34d632f2eea283.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:576ef099d532e2ee6056cc0f91ca4295c9c83dad23eafe256cb258d23840bc8b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpDiagonalTail/Variant0172f79475634d6d08bb7aa26776c5838494cea555a3f6b46b34d632f2eea283.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4cbaabd6-d12f-506f-46f2-c006749cd68c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_cube_div_square_le {Q A : ℝ} (hQ : 91 ≤ Q) (hQA : Q ≤ A) :
    Real.log A ^ 3 / A ^ 2 ≤ Real.log Q ^ 3 / Q ^ 2 := by
  let f := fun x : ℝ => Real.log x ^ 3 / x ^ 2
  have hd (x : ℝ) (hx : 91 ≤ x) : HasDerivAt f
      (Real.log x ^ 2 * (3 - 2 * Real.log x) / x ^ 3) x := by
    have hx0 : x ≠ 0 := by linarith
    have ht := ((Real.hasDerivAt_log hx0).pow 3).div ((hasDerivAt_id x).pow 2)
      (pow_ne_zero 2 hx0)
    change HasDerivAt (fun y : ℝ => Real.log y ^ 3 / y ^ 2)
      ((3 * Real.log x ^ 2 * x⁻¹ * x ^ 2 - Real.log x ^ 3 * (2 * x)) /
        (x ^ 2) ^ 2) x at ht
    convert ht using 1
    all_goals first | rfl | (field_simp; ring)
  have hf : ContinuousOn f (Ici 91) := by
    intro x hx
    exact (hd x hx).continuousAt.continuousWithinAt
  have hm : AntitoneOn f (Ici 91) :=
    antitoneOn_of_hasDerivWithinAt_nonpos (convex_Ici 91) hf
      (fun x hx => (hd x ((interior_subset hx))).hasDerivWithinAt)
      (fun x hx => by
        have hxx : 91 ≤ x := interior_subset hx
        have hx0 : 0 < x := by linarith
        have hl := log_ge_three_halves hxx
        exact div_nonpos_of_nonpos_of_nonneg
          (mul_nonpos_of_nonneg_of_nonpos (sq_nonneg _) (by linarith)) (by positivity))
  exact hm hQ (hQ.trans hQA) hQA

/-- Moving floor retained, with an explicit radius-dependent replacement for eighty. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpDiagonalTail/Variant0172f79475634d6d08bb7aa26776c5838494cea555a3f6b46b34d632f2eea283.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpDiagonalTail/Variant0172f79475634d6d08bb7aa26776c5838494cea555a3f6b46b34d632f2eea283.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `938af866f11066afd55ca5281126c43588847c09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
