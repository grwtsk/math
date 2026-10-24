# actual_twice_covariant_fourth_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:07494567-a6e0-8567-2b31-dcbdc403fbc4",
  "kind": "theorem",
  "lexical_name": "actual_twice_covariant_fourth_abs_le",
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
  "slug": "actual-twice-covariant-fourth-abs-le--99bc039b2cecdd9ef86302b9",
  "source": {
    "blob": "4cdac0e7142b9411d7df476c304fadcaf8677f3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 126,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceNative01/Variantbfba51c1525e2c096224626c909242759e47de8de4d310571ef45ad0d28425cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99bc039b2cecdd9ef86302b9af02ee857b3bc5683c5d590d2d9b1527635df890",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceNative01/Variantbfba51c1525e2c096224626c909242759e47de8de4d310571ef45ad0d28425cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07494567-a6e0-8567-2b31-dcbdc403fbc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_twice_covariant_fourth_abs_le (A t s : ℝ) (hA : 91 ≤ A) :
    |covariantMixedDerivative
      (fun x y => covariantMixedDerivative (actualLogColumnSource A) x y) t s| ≤
        Real.exp (t / 2) * Real.exp (-s / 2) * (67 / A ^ 4) := by
  rw [actual_twice_covariant_mixed_fourth A (by linarith) t s]
  simp only [actualCovariantJet, abs_mul, abs_of_pos (Real.exp_pos _)]
  exact mul_le_mul_of_nonneg_left
    (actual_correlation_iterated_fourth_abs_le_sixty_seven A (t + s) hA) (by positivity)

/-- Isolating C2 changes the ordinary mixed derivative by an actual quarter source term. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceNative01/Variantbfba51c1525e2c096224626c909242759e47de8de4d310571ef45ad0d28425cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceNative01/Variantbfba51c1525e2c096224626c909242759e47de8de4d310571ef45ad0d28425cc.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cdac0e7142b9411d7df476c304fadcaf8677f3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
