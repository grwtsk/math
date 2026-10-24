# dirichletMoment_one_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cea3b094-62e6-f5b1-193f-4ec09c76df1a",
  "kind": "theorem",
  "lexical_name": "dirichletMoment_one_pos",
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
  "slug": "dirichletmoment-one-pos--faca29def90a114ee7c594f5",
  "source": {
    "blob": "8ced074c9e88a3ef623f00fc149e66ad5ececb1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 155,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variant630811b9f68f1a9f2d0c191948f66001f7f409712c1e6e70ebb965d8ee44ba5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:faca29def90a114ee7c594f56f4f0c1303c543169289bd000e6c5ae9a1be241f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variant630811b9f68f1a9f2d0c191948f66001f7f409712c1e6e70ebb965d8ee44ba5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cea3b094-62e6-f5b1-193f-4ec09c76df1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dirichletMoment_one_pos : 0 < dirichletMoment 1 := by
  have h := (dirichletMoment_summable 1).le_tsum 0 (fun n hn ↦
    div_nonneg (mul_nonneg (vonMangoldt_nonneg (n := n + 2))
      (pow_nonneg (Real.log_nonneg (by exact_mod_cast (show 1 ≤ n + 2 by omega))) _))
      (sq_nonneg _))
  have hlog : 0 < Real.log (2 : ℝ) := Real.log_pos (by norm_num)
  have ht : (0 : ℝ) < vonMangoldt (0 + 2) * (Real.log ((0 + 2 : ℕ) : ℝ)) ^ 1 /
      ((0 + 2 : ℕ) : ℝ) ^ 2 := by
    rw [show 0 + 2 = 2 by omega, vonMangoldt_apply_prime Nat.prime_two]
    positivity
  exact ht.trans_le h

end
end FormalResearch.RiemannHypothesis.SourceNativeDirichletMoments
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variant630811b9f68f1a9f2d0c191948f66001f7f409712c1e6e70ebb965d8ee44ba5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variant630811b9f68f1a9f2d0c191948f66001f7f409712c1e6e70ebb965d8ee44ba5d.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ced074c9e88a3ef623f00fc149e66ad5ececb1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
