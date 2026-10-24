# mvt_upper_bound_core

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
      "line": 1271,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/ab9cf2ae984ae636e0ac7f9b754497d9095d066e45f4d5f698a284597a0ae616.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:21adff8d-65ba-b532-282f-3316661e92c6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f52bff61-24a9-f984-5d58-88b62204c841",
  "kind": "lemma",
  "lexical_name": "mvt_upper_bound_core",
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
  "slug": "mvt-upper-bound-core--8ffde278767edc6ae639f937",
  "source": {
    "blob": "aadeba643fd3f4e60c7710626c255a7effe39f9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1306,
    "line": 1271,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Bounds/Variantab9cf2ae984ae636e0ac7f9b754497d9095d066e45f4d5f698a284597a0ae616.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ffde278767edc6ae639f9370b3c0751292b41e5c09e85d07a6f5dbf402e82a4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Bounds/Variantab9cf2ae984ae636e0ac7f9b754497d9095d066e45f4d5f698a284597a0ae616.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f52bff61-24a9-f984-5d58-88b62204c841`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1271–1306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mvt_upper_bound_core (e : Expr) (hsupp : ExprSupported e)
    (I : IntervalRat) (cfg : EvalConfig)
    (hCont : ContinuousOn (evalFunc1 e) (Set.Icc I.lo I.hi)) :
    ∀ x y, x ∈ I → y ∈ I → x ≤ y →
      evalFunc1 e y - evalFunc1 e x ≤ ((derivIntervalCore e I cfg).hi : ℝ) * (y - x) := by
  intro x y hx hy hxy
  set dI := derivIntervalCore e I cfg
  have hderiv_bound : ∀ ξ ∈ I, deriv (evalFunc1 e) ξ ≤ (dI.hi : ℝ) := fun ξ hξ =>
    (derivIntervalCore_correct e hsupp I ξ hξ cfg).2
  have hConvex : Convex ℝ (Set.Icc (I.lo : ℝ) I.hi) := convex_Icc _ _
  have hDiff : DifferentiableOn ℝ (evalFunc1 e) (interior (Set.Icc (I.lo : ℝ) I.hi)) := by
    have hdiff := evalFunc1_differentiable e hsupp
    exact hdiff.differentiableOn
  have hC' : ∀ ξ ∈ interior (Set.Icc (I.lo : ℝ) I.hi), deriv (evalFunc1 e) ξ ≤ (dI.hi : ℝ) := by
    intro ξ hξ
    apply hderiv_bound
    exact @interior_subset ℝ _ (Set.Icc I.lo I.hi) ξ hξ
  have hx_Icc : x ∈ Set.Icc (I.lo : ℝ) I.hi := by simp only [IntervalRat.mem_def] at hx; exact hx
  have hy_Icc : y ∈ Set.Icc (I.lo : ℝ) I.hi := by simp only [IntervalRat.mem_def] at hy; exact hy
  exact hConvex.image_sub_le_mul_sub_of_deriv_le hCont hDiff hC' x hx_Icc y hy_Icc hxy

/-- **Golden Theorem for Computable Newton Contraction (Unique Root Existence)**

    This version assumes *both*:
    1. Core contraction check (computable, used by search/external tools)
    2. Non-core contraction check (used for the formal proof, via
       `verify_unique_root_newton`).

    The formal proof only relies on the non-core checker; the core checker
    can be used by the external agent for optimization but is not needed
    logically. This avoids the need to prove complex MVT-based contradiction
    lemmas for the Core interval functions.

    Note: The `h_cert_core` hypothesis is not used in the proof but is kept
    in the signature so the certificate format can include it for external
    tooling purposes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Bounds/Variantab9cf2ae984ae636e0ac7f9b754497d9095d066e45f4d5f698a284597a0ae616.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Bounds/Variantab9cf2ae984ae636e0ac7f9b754497d9095d066e45f4d5f698a284597a0ae616.lean#L1271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aadeba643fd3f4e60c7710626c255a7effe39f9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
