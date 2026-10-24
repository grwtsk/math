# indicator_not_differentiable_at_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c239e4da-205d-d421-9c07-758132317dc3",
  "kind": "theorem",
  "lexical_name": "indicator_not_differentiable_at_right",
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
  "slug": "indicator-not-differentiable-at-right--179494c7833fe8abcb1e5ed2",
  "source": {
    "blob": "bf7807e88639aa3eef31297a2523922376cdc6d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 29,
    "path": "GRWTSK/Analysis/Calculus/CompactProfileBoundaryCounterexamples.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:179494c7833fe8abcb1e5ed2d249a23c81ab73a6c7487a73a3e0582bca79c73f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/CompactProfileBoundaryCounterexamples.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c239e4da-205d-d421-9c07-758132317dc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem indicator_not_differentiable_at_right {a b d : ℝ} {f : ℝ → ℝ}
    (hab : a < b) (hf : HasDerivAt f d b) (hb : f b = 0) (hd : d ≠ 0) :
    ¬ DifferentiableAt ℝ ((Icc a b).indicator f) b := by
  intro differentiable
  let F : ℝ → ℝ := (Icc a b).indicator f
  have member : b ∈ Icc a b := ⟨hab.le, le_rfl⟩
  have inside : HasDerivWithinAt F d (Icc a b) b :=
    hf.hasDerivWithinAt.congr
      (fun x hx ↦ by dsimp [F]; exact indicator_of_mem hx _)
      (by dsimp [F]; exact indicator_of_mem member _)
  have outside : HasDerivWithinAt F 0 (Ici b) b := by
    apply (hasDerivAt_const b (0 : ℝ)).hasDerivWithinAt.congr
    · intro x hx
      dsimp [F]
      by_cases equality : x = b
      · subst x
        simp only [indicator_of_mem member, hb]
      · have absent : x ∉ Icc a b := by
          intro retained
          exact equality (le_antisymm retained.2 hx)
        exact indicator_of_notMem absent _
    · dsimp [F]
      simp only [indicator_of_mem member, hb]
  have full : HasDerivAt F (deriv F b) b := differentiable.hasDerivAt
  have uniqueInside : UniqueDiffWithinAt ℝ (Icc a b) b :=
    uniqueDiffOn_Icc hab b member
  have equalInside : deriv F b = d :=
    (full.hasDerivWithinAt.derivWithin uniqueInside).symm.trans
      (inside.derivWithin uniqueInside)
  have equalOutside : deriv F b = 0 :=
    (full.hasDerivWithinAt.derivWithin (uniqueDiffWithinAt_Ici b)).symm.trans
      (outside.derivWithin (uniqueDiffWithinAt_Ici b))
  exact hd (equalInside.symm.trans equalOutside)

/-- The native interior second derivative has its literal positive endpoint trace. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/CompactProfileBoundaryCounterexamples.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Calculus/CompactProfileBoundaryCounterexamples.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf7807e88639aa3eef31297a2523922376cdc6d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
