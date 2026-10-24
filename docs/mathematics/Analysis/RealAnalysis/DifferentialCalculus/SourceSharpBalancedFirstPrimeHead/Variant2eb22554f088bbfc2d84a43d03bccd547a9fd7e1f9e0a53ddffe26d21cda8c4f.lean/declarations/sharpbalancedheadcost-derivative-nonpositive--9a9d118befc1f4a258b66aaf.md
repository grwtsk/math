# sharpBalancedHeadCost_derivative_nonpositive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b1ce0eb1-a661-b693-e641-b7684607887a",
  "kind": "theorem",
  "lexical_name": "sharpBalancedHeadCost_derivative_nonpositive",
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
  "slug": "sharpbalancedheadcost-derivative-nonpositive--9a9d118befc1f4a258b66aaf",
  "source": {
    "blob": "c82168991b79f26b65db367031ad1eef8590b14f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 142,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpBalancedFirstPrimeHead/Variant2eb22554f088bbfc2d84a43d03bccd547a9fd7e1f9e0a53ddffe26d21cda8c4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a9d118befc1f4a258b66aafbc1e3a24eafee04afbed41d9e31fdd9d6765d5f0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpBalancedFirstPrimeHead/Variant2eb22554f088bbfc2d84a43d03bccd547a9fd7e1f9e0a53ddffe26d21cda8c4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1ce0eb1-a661-b693-e641-b7684607887a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sharpBalancedHeadCost_derivative_nonpositive {A : ℝ} (hA : 91 ≤ A) :
    20 * (1 - Real.log A) / A^2 +
      10 * Real.sqrt 7 * (2 * (Real.log A)^2 + 2 * Real.log A - 2 -
        (Real.log 7)^2 / 2) / A^3 ≤ 0 := by
  have hp : 0 < A := by linarith
  have hl := log_ge_four hA
  have hr := log_add_one_div_le_six hA
  have hs : Real.sqrt (7 : ℝ) < 3 :=
    (Real.sqrt_lt' (by norm_num : (0 : ℝ) < 3)).mpr (by norm_num)
  have hl0 : 0 ≤ Real.log A := by linarith
  have hla : 0 ≤ Real.log A * (Real.log A + 1) := by positivity
  have hratio : (Real.log A + 1) * 91 ≤ 6 * A :=
    (div_le_div_iff₀ hp (by norm_num : (0 : ℝ) < 91)).mp hr
  have hmul := mul_le_mul_of_nonneg_left hratio hl0
  have hsprod := mul_le_mul_of_nonneg_right hs.le hla
  have hloss : Real.sqrt 7 * (Real.log A * (Real.log A + 1)) ≤
      A * (Real.log A - 1) := by
    have hm : 18 * Real.log A ≤ 91 * (Real.log A - 1) := by linarith
    have ha := mul_le_mul_of_nonneg_left hm hp.le
    nlinarith
  have hnum : 20 * A * (1 - Real.log A) +
      10 * Real.sqrt 7 * (2 * (Real.log A)^2 + 2 * Real.log A - 2 -
        (Real.log 7)^2 / 2) ≤ 0 := by
    nlinarith [Real.sqrt_nonneg (7 : ℝ), sq_nonneg (Real.log 7)]
  have he :
      20 * (1 - Real.log A) / A^2 +
        10 * Real.sqrt 7 * (2 * (Real.log A)^2 + 2 * Real.log A - 2 -
          (Real.log 7)^2 / 2) / A^3 =
      (20 * A * (1 - Real.log A) +
        10 * Real.sqrt 7 * (2 * (Real.log A)^2 + 2 * Real.log A - 2 -
          (Real.log 7)^2 / 2)) / A^3 := by
    field_simp
  rw [he]
  exact div_nonpos_of_nonpos_of_nonneg hnum (by positivity)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpBalancedFirstPrimeHead/Variant2eb22554f088bbfc2d84a43d03bccd547a9fd7e1f9e0a53ddffe26d21cda8c4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpBalancedFirstPrimeHead/Variant2eb22554f088bbfc2d84a43d03bccd547a9fd7e1f9e0a53ddffe26d21cda8c4f.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c82168991b79f26b65db367031ad1eef8590b14f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
