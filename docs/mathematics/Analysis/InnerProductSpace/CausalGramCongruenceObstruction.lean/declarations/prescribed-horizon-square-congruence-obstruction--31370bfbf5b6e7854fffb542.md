# prescribed_horizon_square_congruence_obstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:84d2f3b1-ab77-40bf-e72e-1de17933faa3",
  "kind": "theorem",
  "lexical_name": "prescribed_horizon_square_congruence_obstruction",
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
  "slug": "prescribed-horizon-square-congruence-obstruction--31370bfbf5b6e7854fffb542",
  "source": {
    "blob": "0ad187fd2acc50565854502717f5e346e43d3a2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 73,
    "path": "GRWTSK/Analysis/InnerProductSpace/CausalGramCongruenceObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31370bfbf5b6e7854fffb5422a6edab35f950d255d1782b39b1a56774219dab3",
  "verification": {
    "reference": "docs/verification/Analysis/InnerProductSpace/CausalGramCongruenceObstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84d2f3b1-ab77-40bf-e72e-1de17933faa3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prescribed_horizon_square_congruence_obstruction :
    ∃ A : ℝ, 1 ≤ A ∧ ∀ B : Matrix (inventory (2 * A)) (inventory (2 * A)) ℝ,
      B.transpose * Matrix.of (fun (i j : inventory (2 * A)) ↦
        gram (2 * A) (i : ℕ) (j : ℕ)) * B ≠
        SourceGram.sourceGramMatrix A (fun i : inventory (2 * A) ↦ (i : ℕ)) := by
  have logEight : Real.log (8 : ℝ) = 3 * Real.log 2 := by
    rw [show (8 : ℝ) = 2 ^ (3 : ℕ) by norm_num, Real.log_pow]
    norm_num
  have scale : 1 ≤ Real.log (8 : ℝ) / 2 := by
    rw [logEight]
    linarith [Real.log_two_gt_d9]
  have positive : 0 < Real.log (8 : ℝ) / 2 := by linarith
  have horizon : 2 * (Real.log (8 : ℝ) / 2) = Real.log (8 : ℝ) := by ring
  refine ⟨Real.log (8 : ℝ) / 2, scale, ?_⟩
  rw [horizon]
  intro B
  exact original_inventory_square_congruence_ne_source positive (n := 8) (by norm_num) B

end

end GRWTSK.Analysis.InnerProductSpace.CausalGramCongruenceObstruction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/InnerProductSpace/CausalGramCongruenceObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/InnerProductSpace/CausalGramCongruenceObstruction.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ad187fd2acc50565854502717f5e346e43d3a2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
