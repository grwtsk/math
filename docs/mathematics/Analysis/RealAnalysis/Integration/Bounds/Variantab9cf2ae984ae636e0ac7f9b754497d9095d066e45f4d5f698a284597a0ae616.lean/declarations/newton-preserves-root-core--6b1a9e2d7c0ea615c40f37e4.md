# newton_preserves_root_core

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aadeba643fd3f4e60c7710626c255a7effe39f9b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1325,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/ab9cf2ae984ae636e0ac7f9b754497d9095d066e45f4d5f698a284597a0ae616.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:157c9a22-d40b-9dbe-2d9c-3323e2713227",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3d6a8acf-7d53-94f4-2ec3-9d47e15938d2",
  "kind": "theorem",
  "lexical_name": "newton_preserves_root_core",
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
  "slug": "newton-preserves-root-core--6b1a9e2d7c0ea615c40f37e4",
  "source": {
    "blob": "aadeba643fd3f4e60c7710626c255a7effe39f9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1376,
    "line": 1325,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Bounds/Variantab9cf2ae984ae636e0ac7f9b754497d9095d066e45f4d5f698a284597a0ae616.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b1a9e2d7c0ea615c40f37e4e2f523e5607e97fd6d55386ed5300f4a2bc648be",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Bounds/Variantab9cf2ae984ae636e0ac7f9b754497d9095d066e45f4d5f698a284597a0ae616.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d6a8acf-7d53-94f4-2ec3-9d47e15938d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1325–1376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem newton_preserves_root_core (e : Expr) (hsupp : ExprSupported e) (hvar0 : UsesOnlyVar0 e)
    (I N : IntervalRat) (cfg : EvalConfig)
    (hStep : newtonStepCore e I cfg = some N)
    (x : ℝ) (hx : x ∈ I) (hroot : Expr.eval (fun _ => x) e = 0) :
    x ∈ N := by
  -- Extract structure from newtonStepCore
  obtain ⟨hdI_nonzero, hN_lo, hN_hi⟩ := newtonStepCore_extract e I N cfg hStep

  -- Define components matching abstract theorem
  let c := I.midpoint
  let fc := evalIntervalCore1 e (IntervalRat.singleton c) cfg
  let dI := derivIntervalCore e I cfg

  -- Verify premises for abstract theorem
  have hc_in_I : (c : ℝ) ∈ I := IntervalRat.midpoint_mem I

  -- 1. f(c) ∈ fc via evalIntervalCore1_correct
  have hfc_correct : evalFunc1 e c ∈ fc := by
    simp only [evalFunc1]
    exact evalIntervalCore1_correct e hsupp.toCore c (IntervalRat.singleton c) (IntervalRat.mem_singleton c) cfg (exprSupported_domainValid1 hsupp _ cfg)

  -- 2. f'(ξ) ∈ dI for all ξ ∈ I via derivIntervalCore_correct
  have hdI_correct : ∀ ξ ∈ I, deriv (evalFunc1 e) ξ ∈ dI := fun ξ hξ =>
    derivIntervalCore_correct e hsupp I ξ hξ cfg

  -- Apply abstract preservation lemma
  have hroot' : evalFunc1 e x = 0 := hroot
  have h_in_Newton := newton_operator_preserves_root e hsupp hvar0
    I c fc dI hc_in_I hfc_correct hdI_correct hdI_nonzero x hx hroot'

  -- Now we need to show x ∈ N where N = I ∩ Newton
  -- h_in_Newton shows x is in the Newton interval [c - Q.hi, c - Q.lo]
  -- Combined with hx : x ∈ I, we get x ∈ I ∩ Newton = N
  have hx_in_intersect := IntervalRat.mem_intersect hx h_in_Newton
  obtain ⟨K, hK_eq, hx_in_K⟩ := hx_in_intersect

  -- Show x ∈ N by using the intersection logic
  -- Both hStep and hK_eq refer to the same intersect
  unfold newtonStepCore at hStep
  simp only [hdI_nonzero, dite_false] at hStep
  -- Now hStep : IntervalRat.intersect I (I.newtonInterval fc dI) = some N
  -- And hK_eq : IntervalRat.intersect I (I.newtonInterval fc dI) = some K
  have hN_eq_K : N = K := by
    rw [hStep] at hK_eq
    simp only [Option.some.injEq] at hK_eq
    exact hK_eq
  rw [hN_eq_K]
  exact hx_in_K

/-- If Newton step succeeds, there's at most one root in I (via Rolle's theorem).
    This uses the fact that if dI doesn't contain zero, the derivative is nonzero
    everywhere on I, so f is strictly monotonic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Bounds/Variantab9cf2ae984ae636e0ac7f9b754497d9095d066e45f4d5f698a284597a0ae616.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Bounds/Variantab9cf2ae984ae636e0ac7f9b754497d9095d066e45f4d5f698a284597a0ae616.lean#L1325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aadeba643fd3f4e60c7710626c255a7effe39f9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
