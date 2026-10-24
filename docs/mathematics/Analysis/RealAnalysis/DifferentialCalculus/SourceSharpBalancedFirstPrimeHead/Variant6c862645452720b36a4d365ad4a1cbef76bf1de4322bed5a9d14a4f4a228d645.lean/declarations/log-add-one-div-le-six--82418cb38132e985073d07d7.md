# log_add_one_div_le_six

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c43e0e01-2b66-d4ef-bb31-3d47454329e7",
  "kind": "theorem",
  "lexical_name": "log_add_one_div_le_six",
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
  "slug": "log-add-one-div-le-six--82418cb38132e985073d07d7",
  "source": {
    "blob": "7a2e887c1a41461710c6abad8f3990b1b504a6fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 106,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpBalancedFirstPrimeHead/Variant6c862645452720b36a4d365ad4a1cbef76bf1de4322bed5a9d14a4f4a228d645.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82418cb38132e985073d07d750d1bfdf3c33c46a26d5e6d2fa8a48641910bbbb",
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

Occurrence: `result:c43e0e01-2b66-d4ef-bb31-3d47454329e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem log_add_one_div_le_six {A : ℝ} (hA : 91 ≤ A) :
    (Real.log A + 1) / A ≤ 6 / 91 := by
  have hp : 0 < A := by linarith
  have hl := Real.log_le_sub_one_of_pos (div_pos hp (by norm_num : (0 : ℝ) < 91))
  rw [Real.log_div hp.ne' (by norm_num : (91 : ℝ) ≠ 0)] at hl
  have hl91 : Real.log (91 : ℝ) < 5 := by
    have he := Real.log_pow (2 : ℝ) 7
    norm_num at he
    have hm := Real.log_lt_log (by norm_num : (0 : ℝ) < 91)
      (by norm_num : (91 : ℝ) < 128)
    linarith [Real.log_two_lt_d9]
  apply (div_le_div_iff₀ hp (by norm_num : (0 : ℝ) < 91)).mpr
  have hn : 0 ≤ Real.log (91 : ℝ) := Real.log_nonneg (by norm_num)
  have he : 91 * (A / 91 - 1) = A - 91 := by ring
  have hm := mul_le_mul_of_nonneg_left hl (by norm_num : (0 : ℝ) ≤ 91)
  rw [he] at hm
  nlinarith [mul_nonneg (show 0 ≤ A - 91 by linarith) hn]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpBalancedFirstPrimeHead/Variant6c862645452720b36a4d365ad4a1cbef76bf1de4322bed5a9d14a4f4a228d645.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpBalancedFirstPrimeHead/Variant6c862645452720b36a4d365ad4a1cbef76bf1de4322bed5a9d14a4f4a228d645.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a2e887c1a41461710c6abad8f3990b1b504a6fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
