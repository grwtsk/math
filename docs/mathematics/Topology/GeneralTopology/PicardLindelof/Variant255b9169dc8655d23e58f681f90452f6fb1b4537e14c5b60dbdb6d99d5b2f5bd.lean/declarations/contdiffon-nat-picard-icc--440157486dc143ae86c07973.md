# contDiffOn_nat_picard_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90696ddc-8cf1-ab38-c0f9-ac2268c6e31d",
  "kind": "lemma",
  "lexical_name": "contDiffOn_nat_picard_Icc",
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
  "slug": "contdiffon-nat-picard-icc--440157486dc143ae86c07973",
  "source": {
    "blob": "914aafa576d0474f49ba074168c387ae6059e2ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 553,
    "line": 524,
    "path": "GRWTSK/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:440157486dc143ae86c079731702ac26a76818246da2670bb53e2467c15c41e0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90696ddc-8cf1-ab38-c0f9-ac2268c6e31d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 524–553.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma contDiffOn_nat_picard_Icc
    (ht₀ : t₀ ∈ Icc tmin tmax) {n : ℕ}
    (hf : ContDiffOn ℝ n (uncurry f) ((Icc tmin tmax) ×ˢ u))
    (hα : ContinuousOn α (Icc tmin tmax))
    (hmem : ∀ t ∈ Icc tmin tmax, α t ∈ u) (x₀ : E)
    (heqon : ∀ t ∈ Icc tmin tmax, α t = picard f t₀ x₀ α t) :
    ContDiffOn ℝ n (picard f t₀ x₀ α) (Icc tmin tmax) := by
  by_cases hlt : tmin < tmax
  · have (t) (ht : t ∈ Icc tmin tmax) :=
      hasDerivWithinAt_picard_Icc ht₀ hf.continuousOn hα hmem x₀ ht
    induction n with
    | zero =>
      simp only [Nat.cast_zero, contDiffOn_zero] at *
      exact HasDerivWithinAt.continuousOn this
    | succ n hn =>
      simp only [Nat.cast_add, Nat.cast_one] at *
      rw [contDiffOn_succ_iff_derivWithin <| uniqueDiffOn_Icc hlt]
      refine ⟨fun t ht ↦ HasDerivWithinAt.differentiableWithinAt (this t ht), by simp, ?_⟩
      apply contDiffOn_comp hf.of_succ (ContDiffOn.congr (hn hf.of_succ) heqon) hmem |>.congr
      intro t ht
      exact HasDerivWithinAt.derivWithin (this t ht) <| (uniqueDiffOn_Icc hlt).uniqueDiffWithinAt ht
  · rw [(subsingleton_Icc_of_ge (not_lt.mp hlt)).eq_singleton_of_mem ht₀]
    intro t ht
    rw [eq_of_mem_singleton ht]
    exact contDiffWithinAt_singleton

/-- If the time-dependent vector field `f` is $C^n$ and the curve `α` is continuous, then
`picard f t₀ x₀ α` is also $C^n$. This version works for `n : ℕ∞`.

TODO: Extend to the analytic `n = ⊤` case. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean#L524).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `914aafa576d0474f49ba074168c387ae6059e2ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
