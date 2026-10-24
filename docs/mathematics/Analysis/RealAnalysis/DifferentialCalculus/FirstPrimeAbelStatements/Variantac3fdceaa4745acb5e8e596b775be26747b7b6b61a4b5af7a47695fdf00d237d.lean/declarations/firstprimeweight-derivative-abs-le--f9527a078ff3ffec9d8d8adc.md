# firstPrimeWeight_derivative_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c4b546129a123115b4230cf00d4952c77ea35f80",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 173,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/ac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e9aea559-a4ee-9aeb-5b77-9f412bf3a928",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:223377ed-3f66-1e75-7bd2-7c85c8e04125",
  "kind": "theorem",
  "lexical_name": "firstPrimeWeight_derivative_abs_le",
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
  "slug": "firstprimeweight-derivative-abs-le--f9527a078ff3ffec9d8d8adc",
  "source": {
    "blob": "c4b546129a123115b4230cf00d4952c77ea35f80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 173,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9527a078ff3ffec9d8d8adc302fef859a73973454d5a17ff17f840584ded95e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:223377ed-3f66-1e75-7bd2-7c85c8e04125`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem firstPrimeWeight_derivative_abs_le (A u : ℝ) (hA : 1 ≤ A) :
    |deriv (firstPrimeWeight A) u| ≤ Real.exp (u / 2) *
      (1 / 2 + (65 / (3 * A ^ 2)) * |u|) := by
  rw [(firstPrimeWeight_hasDerivAt A u hA).deriv, abs_mul, abs_of_pos (Real.exp_pos _)]
  apply mul_le_mul_of_nonneg_left _ (Real.exp_pos _).le
  calc
    _ ≤ |deriv (sourceCorrelation explicitSecondDerivative A) u| +
        |sourceCorrelation explicitSecondDerivative A u / 2| := abs_add_le _ _
    _ ≤ (65 / (3 * A ^ 2)) * |u| + 1 / 2 := by
      apply add_le_add (PrimeSquareCorrelation.sourceCorrelation_derivative_linear_bound A u hA)
      rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
      exact div_le_div_of_nonneg_right (EstimateCorrelation.actual_correlation_abs_le_one A u hA)
        (by norm_num)
    _ = _ := by ring

/-- All unproved arithmetic cancellation is retained in the signed remainder; the discarded main is bounded. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4b546129a123115b4230cf00d4952c77ea35f80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
