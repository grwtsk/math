# isLittleO_pow_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "de2f76a7db82e1d758e5e4fda851f7f474e5a38a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 652,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7e1e6f097fe92a2493ea5b4bc9a1896c850514604f26f863f812906fb500b856.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:09750f7d-622b-bcf2-96b3-02cd7a211161",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ddb15823-a5f1-7ec6-2af6-a9b37b23dbce",
  "kind": "lemma",
  "lexical_name": "isLittleO_pow_succ",
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
  "slug": "islittleo-pow-succ--493dd06ee3bacd07304fd8cf",
  "source": {
    "blob": "de2f76a7db82e1d758e5e4fda851f7f474e5a38a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 674,
    "line": 652,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant7e1e6f097fe92a2493ea5b4bc9a1896c850514604f26f863f812906fb500b856.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:493dd06ee3bacd07304fd8cf97e67a13ab711bc07515eab282a95552f635118d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant7e1e6f097fe92a2493ea5b4bc9a1896c850514604f26f863f812906fb500b856.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddb15823-a5f1-7ec6-2af6-a9b37b23dbce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 652–674.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLittleO_pow_succ {x₀ : E} {n : ℕ} (hs : Convex ℝ s) (hx₀s : x₀ ∈ s)
    (hff' : ∀ x ∈ s, HasFDerivWithinAt f (f' x) s x) (hf' : f' =o[𝓝[s] x₀] fun x ↦ ‖x - x₀‖ ^ n) :
    (fun x ↦ f x - f x₀) =o[𝓝[s] x₀] fun x ↦ ‖x - x₀‖ ^ (n + 1) := by
  rw [Asymptotics.isLittleO_iff] at hf' ⊢
  intro c hc
  simp_rw [norm_pow, pow_succ, ← mul_assoc, norm_norm]
  simp_rw [norm_pow, norm_norm] at hf'
  have : ∀ᶠ x in 𝓝[s] x₀, segment ℝ x₀ x ⊆ s ∧ ∀ y ∈ segment ℝ x₀ x, ‖f' y‖ ≤ c * ‖x - x₀‖ ^ n := by
    have h1 : ∀ᶠ x in 𝓝[s] x₀, x ∈ s := eventually_mem_nhdsWithin
    filter_upwards [h1, hs.eventually_nhdsWithin_segment hx₀s (hf' hc)] with x hxs h
    refine ⟨hs.segment_subset hx₀s hxs, fun y hy ↦ (h y hy).trans ?_⟩
    gcongr
    exact norm_sub_le_of_mem_segment hy
  filter_upwards [this] with x ⟨h_segment, h⟩
  convert!
    (convex_segment x₀ x).norm_image_sub_le_of_norm_hasFDerivWithin_le (f := fun x ↦ f x - f x₀)
      (y := x) (x := x₀) (s := segment ℝ x₀ x) ?_ h
      (left_mem_segment ℝ x₀ x)
      (right_mem_segment ℝ x₀ x) using 1
  · simp
  · simp only [hasFDerivWithinAt_sub_const_iff]
    exact fun x hx ↦ (hff' x (h_segment hx)).mono h_segment

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant7e1e6f097fe92a2493ea5b4bc9a1896c850514604f26f863f812906fb500b856.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant7e1e6f097fe92a2493ea5b4bc9a1896c850514604f26f863f812906fb500b856.lean#L652).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de2f76a7db82e1d758e5e4fda851f7f474e5a38a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
