# eq_const_of_exists_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:558b58ce-6776-9d80-3195-67c4e33ab7c2",
  "kind": "lemma",
  "lexical_name": "eq_const_of_exists_le",
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
  "slug": "eq-const-of-exists-le--17a9d1746024ab3f27cac5ed",
  "source": {
    "blob": "b683f4c268f85a327789a1981aedfb37d786920e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 350,
    "line": 335,
    "path": "GRWTSK/Analysis/ComplexAnalysis/AbsMax/Variantaab718f824f58327ba04f046dce98cfbdb2d694280011a864fafae4fb982e2df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17a9d1746024ab3f27cac5edada9a972c49b44ff5daf9debab146415320d01c0",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/AbsMax/Variantaab718f824f58327ba04f046dce98cfbdb2d694280011a864fafae4fb982e2df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:558b58ce-6776-9d80-3195-67c4e33ab7c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_const_of_exists_le [ProperSpace E] {f : E → F} {r b : ℝ}
    (h_an : DifferentiableOn ℂ f (ball 0 b)) (hr_nn : 0 ≤ r) (hr_lt : r < b)
    (hr : ∀ z, z ∈ (ball 0 b) → ∃ w, w ∈ closedBall 0 r ∧ ‖f z‖ ≤ ‖f w‖) :
    Set.EqOn f (Function.const E (f 0)) (ball 0 b) := by
  obtain ⟨x, hx_mem, hx_max⟩ := isCompact_closedBall (0 : E) r |>.exists_isMaxOn
    (nonempty_closedBall.mpr hr_nn)
    (h_an.continuousOn.mono <| closedBall_subset_ball hr_lt).norm
  suffices Set.EqOn f (Function.const E (f x)) (ball 0 b) by
    rwa [this (mem_ball_self (hr_nn.trans_lt hr_lt))]
  apply eq_const_of_exists_max h_an (closedBall_subset_ball hr_lt hx_mem) (fun z hz ↦ ?_)
  obtain ⟨w, hw, hw'⟩ := hr z hz
  exact hw'.trans (hx_max hw)

/-- **Maximum modulus principle**: if `f : E → F` is complex differentiable in a neighborhood of `c`
and the norm `‖f z‖` has a local maximum at `c`, then `f` is locally constant in a neighborhood
of `c`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/AbsMax/Variantaab718f824f58327ba04f046dce98cfbdb2d694280011a864fafae4fb982e2df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/AbsMax/Variantaab718f824f58327ba04f046dce98cfbdb2d694280011a864fafae4fb982e2df.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b683f4c268f85a327789a1981aedfb37d786920e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
