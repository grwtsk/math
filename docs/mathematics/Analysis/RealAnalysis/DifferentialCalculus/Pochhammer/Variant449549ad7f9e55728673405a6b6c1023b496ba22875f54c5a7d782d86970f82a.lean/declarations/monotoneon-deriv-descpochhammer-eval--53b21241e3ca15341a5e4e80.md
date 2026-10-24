# monotoneOn_deriv_descPochhammer_eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3bdf169a-295f-7052-2f9f-35fd004e4d38",
  "kind": "lemma",
  "lexical_name": "monotoneOn_deriv_descPochhammer_eval",
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
  "slug": "monotoneon-deriv-descpochhammer-eval--53b21241e3ca15341a5e4e80",
  "source": {
    "blob": "f7488a457bd6318671c784147c94501fb74ace81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 59,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant449549ad7f9e55728673405a6b6c1023b496ba22875f54c5a7d782d86970f82a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53b21241e3ca15341a5e4e80ce2d737a98d922e9efd7d6983b3be9523ef2c950",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant449549ad7f9e55728673405a6b6c1023b496ba22875f54c5a7d782d86970f82a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3bdf169a-295f-7052-2f9f-35fd004e4d38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma monotoneOn_deriv_descPochhammer_eval (n : ℕ) :
    MonotoneOn (deriv (descPochhammer ℝ n).eval) (Set.Ioi (n - 1 : ℝ)) := by
  induction n with
  | zero => simp [monotoneOn_const]
  | succ n ih =>
    intro a ha b hb hab
    rw [Set.mem_Ioi, Nat.cast_add_one, add_sub_cancel_right] at ha hb
    simp_rw [deriv_descPochhammer_eval_eq_sum_prod_range_erase]
    apply Finset.sum_le_sum; intro i hi
    apply Finset.prod_le_prod
    · intro j hj
      rw [Finset.mem_erase, Finset.mem_range] at hj
      apply sub_nonneg_of_le
      exact ha.le.trans' (mod_cast Nat.le_pred_of_lt hj.2)
    · intro j hj
      rwa [← sub_le_sub_iff_right (j : ℝ)] at hab

/-- `descPochhammer ℝ n` is convex on `[n-1, ∞)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant449549ad7f9e55728673405a6b6c1023b496ba22875f54c5a7d782d86970f82a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant449549ad7f9e55728673405a6b6c1023b496ba22875f54c5a7d782d86970f82a.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7488a457bd6318671c784147c94501fb74ace81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
