# actualCutoff_curvature_error_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2306abff-a3ac-57f2-4d18-fce29dbc0d57",
  "kind": "theorem",
  "lexical_name": "actualCutoff_curvature_error_le",
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
  "slug": "actualcutoff-curvature-error-le--4e9fda7d8ab7cc6b1dbc8987",
  "source": {
    "blob": "330a33648b147894a99ae4f8c48add4eb95425c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 203,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/1067b8a8638e282fd880ActualSharpEarlyBaseline/Variant08e1ca8cc0bacb0f773fb3c982f1c495ff7a3eefe6eff6a7a97eff25be49f354.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e9fda7d8ab7cc6b1dbc8987d31f0aa63a4bc9b44cc3f8dfedd2989113b7b964",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/1067b8a8638e282fd880ActualSharpEarlyBaseline/Variant08e1ca8cc0bacb0f773fb3c982f1c495ff7a3eefe6eff6a7a97eff25be49f354.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2306abff-a3ac-57f2-4d18-fce29dbc0d57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCutoff_curvature_error_le {A : ℝ} (hA : 25600 ≤ A) :
    (162826 / (7623 * A ^ 2)) / 2 * Real.sqrt (vaughanCutoff A : ℝ) *
      (Real.log (vaughanCutoff A : ℝ)) ^ 2 ≤ 9 / 2 := by
  have hp : 0 < A := by linarith
  have hA1 : 1 ≤ A := by linarith
  have hf : (vaughanCutoff A : ℝ) ≤ A ^ 2 := Nat.floor_le (sq_nonneg A)
  have hs : Real.sqrt (vaughanCutoff A : ℝ) ≤ A := by
    simpa only [Real.sqrt_sq hp.le] using Real.sqrt_le_sqrt hf
  have ht := actualCutoff_log_sq_le_sqrt hA1
  have hsp := Real.sqrt_pos.2 hp
  have hs160 := Real.sqrt_le_sqrt hA
  norm_num at hs160
  have hcoef : 0 ≤ (162826 / (7623 * A ^ 2)) / 2 := by positivity
  have hm : (162826 / (7623 * A ^ 2)) / 2 * Real.sqrt (vaughanCutoff A : ℝ) *
      (Real.log (vaughanCutoff A : ℝ)) ^ 2 ≤
      (162826 / (7623 * A ^ 2)) / 2 * A * (64 * Real.sqrt A) :=
    mul_le_mul (mul_le_mul_of_nonneg_left hs hcoef) ht
      (sq_nonneg _) (by positivity)
  have he : (162826 / (7623 * A ^ 2)) / 2 * A * (64 * Real.sqrt A) =
      (32 * (162826 / 7623 : ℝ)) / Real.sqrt A := by
    field_simp [hp.ne', hsp.ne']
    nlinarith [Real.sq_sqrt hp.le]
  have hd : (32 * (162826 / 7623 : ℝ)) / Real.sqrt A ≤
      (32 * (162826 / 7623 : ℝ)) / 160 :=
    div_le_div_of_nonneg_left (by norm_num) (by norm_num) hs160
  rw [he] at hm
  exact hm.trans (hd.trans (by norm_num))

/-- The genuine early floor contribution retains its full negative A term
with a fixed loss seven. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/1067b8a8638e282fd880ActualSharpEarlyBaseline/Variant08e1ca8cc0bacb0f773fb3c982f1c495ff7a3eefe6eff6a7a97eff25be49f354.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/1067b8a8638e282fd880ActualSharpEarlyBaseline/Variant08e1ca8cc0bacb0f773fb3c982f1c495ff7a3eefe6eff6a7a97eff25be49f354.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `330a33648b147894a99ae4f8c48add4eb95425c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
