# QuotientGroup.integral_eq_integral_automorphize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b71e0a3f773b720ae422a48d3a93e44211f79906",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 384,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:91704387-c126-e36d-f2d9-2e8b3b27e6f2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a3473feb-8ab5-a912-1c4f-3a29e45f57c4",
  "kind": "lemma",
  "lexical_name": "QuotientGroup.integral_eq_integral_automorphize",
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
  "slug": "quotientgroup-integral-eq-integral-automorphize--93b110ae309e097f622766c1",
  "source": {
    "blob": "b71e0a3f773b720ae422a48d3a93e44211f79906",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 403,
    "line": 384,
    "path": "GRWTSK/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93b110ae309e097f622766c1f2dca86b7d93170d12d6409f139853562ef009dd",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3473feb-8ab5-a912-1c4f-3a29e45f57c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–403.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma QuotientGroup.integral_eq_integral_automorphize {E : Type*} [NormedAddCommGroup E]
    [NormedSpace ℝ E] [μ.IsMulRightInvariant] {f : G → E}
    (hf₁ : Integrable f μ) (hf₂ : AEStronglyMeasurable (automorphize f) μ_𝓕) :
    ∫ x : G, f x ∂μ = ∫ x : G ⧸ Γ, automorphize f x ∂μ_𝓕 := by
  calc ∫ x : G, f x ∂μ = ∑' γ : Γ.op, ∫ x in 𝓕, f (γ • x) ∂μ :=
    h𝓕.integral_eq_tsum'' f hf₁
    _ = ∫ x in 𝓕, ∑' γ : Γ.op, f (γ • x) ∂μ := ?_
    _ = ∫ x : G ⧸ Γ, automorphize f x ∂μ_𝓕 :=
      (integral_map continuous_quotient_mk'.aemeasurable hf₂).symm
  rw [integral_tsum]
  · exact fun i ↦ (hf₁.1.comp_quasiMeasurePreserving
      (measurePreserving_smul i μ).quasiMeasurePreserving).restrict
  · rw [← h𝓕.lintegral_eq_tsum'' (‖f ·‖ₑ)]
    exact ne_of_lt hf₁.2

-- we can't use `to_additive`, because it tries to translate `*` into `+`
/-- This is the **Unfolding Trick**: Given a subgroup `Γ` of a group `G`, the integral of a
  function `f` on `G` times the lift to `G` of a function `g` on the quotient `G ⧸ Γ` with respect
  to a right-invariant measure `μ` on `G`, is equal to the integral over the quotient of the
  automorphization of `f` times `g`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b71e0a3f773b720ae422a48d3a93e44211f79906` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
