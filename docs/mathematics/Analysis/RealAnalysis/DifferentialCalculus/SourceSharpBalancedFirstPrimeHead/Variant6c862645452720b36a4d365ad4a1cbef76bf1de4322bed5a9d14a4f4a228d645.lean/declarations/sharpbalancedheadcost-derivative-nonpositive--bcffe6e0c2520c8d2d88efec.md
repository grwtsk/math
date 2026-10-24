# sharpBalancedHeadCost_derivative_nonpositive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26269364-23ad-c06b-0da2-e7de2af4f79b",
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
  "slug": "sharpbalancedheadcost-derivative-nonpositive--bcffe6e0c2520c8d2d88efec",
  "source": {
    "blob": "7a2e887c1a41461710c6abad8f3990b1b504a6fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 150,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpBalancedFirstPrimeHead/Variant6c862645452720b36a4d365ad4a1cbef76bf1de4322bed5a9d14a4f4a228d645.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bcffe6e0c2520c8d2d88efec44ab175ca2acaa6f34a45735a0a9129b6d0b34d2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpBalancedFirstPrimeHead/Variant6c862645452720b36a4d365ad4a1cbef76bf1de4322bed5a9d14a4f4a228d645.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26269364-23ad-c06b-0da2-e7de2af4f79b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–184.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpBalancedFirstPrimeHead/Variant6c862645452720b36a4d365ad4a1cbef76bf1de4322bed5a9d14a4f4a228d645.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpBalancedFirstPrimeHead/Variant6c862645452720b36a4d365ad4a1cbef76bf1de4322bed5a9d14a4f4a228d645.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a2e887c1a41461710c6abad8f3990b1b504a6fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
