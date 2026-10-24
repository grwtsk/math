# actualBumpTwoTail_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc6ad767-016e-741b-ca0c-c3fb215864e9",
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
  "slug": "actualbumptwotail-norm-le--b3e7fdc11b642a6cb47e659f",
  "source": {
    "blob": "d22df24fcdf2a2a8b5b8ea165087104ce04bd3b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 139,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualBumpTwoTailBudgetNative3/Variantd17a6180e26f508180f5183ce9e4d73c75c9fe6cb41e3b3110114932ac0fb180.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3e7fdc11b642a6cb47e659f5a72be9ea7af9003a78903649e90e99957d96c0b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualBumpTwoTailBudgetNative3/Variantd17a6180e26f508180f5183ce9e4d73c75c9fe6cb41e3b3110114932ac0fb180.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc6ad767-016e-741b-ca0c-c3fb215864e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–162.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualBumpTwoTailBudgetNative3/Variantd17a6180e26f508180f5183ce9e4d73c75c9fe6cb41e3b3110114932ac0fb180.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualBumpTwoTailBudgetNative3/Variantd17a6180e26f508180f5183ce9e4d73c75c9fe6cb41e3b3110114932ac0fb180.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d22df24fcdf2a2a8b5b8ea165087104ce04bd3b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
