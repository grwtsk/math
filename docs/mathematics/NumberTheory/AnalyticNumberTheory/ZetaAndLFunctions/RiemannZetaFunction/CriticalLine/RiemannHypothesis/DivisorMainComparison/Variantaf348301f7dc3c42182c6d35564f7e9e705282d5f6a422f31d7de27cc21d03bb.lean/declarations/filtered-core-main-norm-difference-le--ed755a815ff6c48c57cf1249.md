# filtered_core_main_norm_difference_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50d7f50c-b16b-5a0d-f6bf-aca601df03d8",
  "kind": "theorem",
  "lexical_name": "filtered_core_main_norm_difference_le",
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
  "slug": "filtered-core-main-norm-difference-le--ed755a815ff6c48c57cf1249",
  "source": {
    "blob": "73602439ab76828833767a504e04f3f8ac0643fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 96,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainComparison/Variantaf348301f7dc3c42182c6d35564f7e9e705282d5f6a422f31d7de27cc21d03bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed755a815ff6c48c57cf124933008dd93180cb9a60647abf95007a1ad6192b7e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainComparison/Variantaf348301f7dc3c42182c6d35564f7e9e705282d5f6a422f31d7de27cc21d03bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50d7f50c-b16b-5a0d-f6bf-aca601df03d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem filtered_core_main_norm_difference_le (X : ℕ) (ε : ℝ) (hX : 1 ≤ X)
    (h : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h)
    (Y : ℝ) (hY : 1 ≤ Y) :
    |‖sourceMultiplier ε h hε hsmall hh (coreResidualVector X ε hX Y)‖ -
      ‖sourceMultiplier ε h hε hsmall hh (divisorMainVector X ε hX hε.le Y hY)‖| ≤
      ((4 / 3 : ℝ) * Real.exp (1 / 4)) *
        (ε ^ 2 * Real.sqrt (Y - 1) * Real.log Y ^ 2) := by
  let M : FullH →L[ℂ] FullH := sourceMultiplier ε h hε hsmall hh
  have he : M (coreResidualVector X ε hX Y) -
      M (divisorMainVector X ε hX hε.le Y hY) =
        -M (divisorRemainderVector ε hε.le Y hY) := by
    rw [mainVector_eq_add X ε hX hε.le Y hY, map_add]
    abel
  exact (abs_norm_sub_norm_le _ _).trans (by
    rw [he, norm_neg]
    exact sourceMultiplier_divisorRemainder_norm_le ε h hε hsmall hh Y hY)

end
end DivisorMainComparisonScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainComparison/Variantaf348301f7dc3c42182c6d35564f7e9e705282d5f6a422f31d7de27cc21d03bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainComparison/Variantaf348301f7dc3c42182c6d35564f7e9e705282d5f6a422f31d7de27cc21d03bb.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73602439ab76828833767a504e04f3f8ac0643fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
