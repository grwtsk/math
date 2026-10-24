# actualBumpTwoTail_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e12b46a-a403-fa54-9cd1-7b311a623998",
  "kind": "theorem",
  "lexical_name": "actualBumpTwoTail_norm_le",
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
  "slug": "actualbumptwotail-norm-le--11ac19716939501bafc018b4",
  "source": {
    "blob": "ad97023c28af31b8a5affb78a59cc27bf36ae8fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 141,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualBumpTwoTailBudget/Variantd6cde7015767b56b79bac438ef9c4f22223d6238f75a2d048c381c9c3c21ba11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11ac19716939501bafc018b4c93cef8b7ba234b51a697dd288a08e1f7678011f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualBumpTwoTailBudget/Variantd6cde7015767b56b79bac438ef9c4f22223d6238f75a2d048c381c9c3c21ba11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e12b46a-a403-fa54-9cd1-7b311a623998`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualBumpTwoTail_norm_le (A c T : ℝ) (hA : 1 ≤ A) (hc : 1 < c)
    (hT : 1 ≤ T) :
    ‖actualBumpTwoTail A c T‖ ≤
      actualRightBumpTailNumerator A c / (5 * Real.pi * T ^ 5) := by
  have hp := actual_one_tail_norm_le A c T 1 hA hc hT (by norm_num)
  have hn := actual_one_tail_norm_le A c T (-1) hA hc hT (by norm_num)
  simp only [one_mul] at hp
  simp only [neg_one_mul] at hn
  unfold actualBumpTwoTail
  rw [norm_mul]
  have hcoef : ‖(1 / (2 * Real.pi) : ℂ)‖ = 1 / (2 * Real.pi) := by
    norm_num [norm_div, norm_mul, Complex.norm_real, Real.norm_eq_abs,
      abs_of_pos Real.pi_pos]
  rw [hcoef]
  calc
    _ ≤ (1 / (2 * Real.pi)) *
      (actualRightBumpTailNumerator A c / (5 * T ^ 5) +
        actualRightBumpTailNumerator A c / (5 * T ^ 5)) := by
      gcongr
      exact (norm_add_le _ _).trans (add_le_add hp hn)
    _ = _ := by field_simp; ring

end
end FormalResearch.RiemannHypothesis.SourceActualBumpTwoTailBudget
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualBumpTwoTailBudget/Variantd6cde7015767b56b79bac438ef9c4f22223d6238f75a2d048c381c9c3c21ba11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualBumpTwoTailBudget/Variantd6cde7015767b56b79bac438ef9c4f22223d6238f75a2d048c381c9c3c21ba11.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad97023c28af31b8a5affb78a59cc27bf36ae8fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
