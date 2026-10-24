# count_upper_kernel_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:237ad5d2-c6be-4140-6bf3-c5433a393b1f",
  "kind": "theorem",
  "lexical_name": "count_upper_kernel_bound",
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
  "slug": "count-upper-kernel-bound--3b878554f4ad6f6e46df6527",
  "source": {
    "blob": "dc38be2e6cc9ce74bdf022de11f5cecc982d6c03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 28,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CountBudgetReduction/Variant3800d01b9f4e02cc734c6a7cda547af271b1c6cfd9b19658b9a01fa285fe1bf7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b878554f4ad6f6e46df6527c79113e0b574b08f2d8ba4c644dc39b9fb4e1324",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CountBudgetReduction/Variant3800d01b9f4e02cc734c6a7cda547af271b1c6cfd9b19658b9a01fa285fe1bf7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:237ad5d2-c6be-4140-6bf3-c5433a393b1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem count_upper_kernel_bound (hBW : CorrectedBellottiWongCount)
    (T t : ℝ) (hT : Real.exp 1 ≤ T) (ht : T ≤ t) :
    actualPositiveZeroCount t/t^7 ≤ countUpperKernel T t := by
  have htp : 0 < t := (Real.exp_pos 1).trans_le (hT.trans ht)
  have he := div_le_div_of_nonneg_right (corrected_count_upper_of_external hBW T t hT ht)
    (pow_nonneg htp.le 7)
  simpa only [countUpperKernel, add_div] using he

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CountBudgetReduction/Variant3800d01b9f4e02cc734c6a7cda547af271b1c6cfd9b19658b9a01fa285fe1bf7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CountBudgetReduction/Variant3800d01b9f4e02cc734c6a7cda547af271b1c6cfd9b19658b9a01fa285fe1bf7.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc38be2e6cc9ce74bdf022de11f5cecc982d6c03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
