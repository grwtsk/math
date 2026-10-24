# lhopital_zero_left_on_Ioo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ed5037cd0c85e279b7e8da3ec04e11b7258aaa77",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 103,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bcd26a00cda19edcd295abd863fb98f20772ef52f04dd64ef77d328e2911e60f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cc230f29-280e-ebfb-0209-4de39ba21d4f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3d2a1bb3-4098-f7a0-786a-e9fd49f38a11",
  "kind": "theorem",
  "lexical_name": "lhopital_zero_left_on_Ioo",
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
  "slug": "lhopital-zero-left-on-ioo--6830f392f942e0821688f31c",
  "source": {
    "blob": "ed5037cd0c85e279b7e8da3ec04e11b7258aaa77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 103,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variantbcd26a00cda19edcd295abd863fb98f20772ef52f04dd64ef77d328e2911e60f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6830f392f942e0821688f31ca54d409ad0bb70f8238ef4371abdb1385c3cb15d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variantbcd26a00cda19edcd295abd863fb98f20772ef52f04dd64ef77d328e2911e60f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d2a1bb3-4098-f7a0-786a-e9fd49f38a11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lhopital_zero_left_on_Ioo (hab : a < b) (hff' : ∀ x ∈ Ioo a b, HasDerivAt f (f' x) x)
    (hgg' : ∀ x ∈ Ioo a b, HasDerivAt g (g' x) x) (hg' : ∀ x ∈ Ioo a b, g' x ≠ 0)
    (hfb : Tendsto f (𝓝[<] b) (𝓝 0)) (hgb : Tendsto g (𝓝[<] b) (𝓝 0))
    (hdiv : Tendsto (fun x => f' x / g' x) (𝓝[<] b) l) :
  Tendsto (fun x => f x / g x) (𝓝[<] b) l := by
  -- Here, we essentially compose by `Neg.neg`. The following is mostly technical details.
  have hdnf : ∀ x ∈ -Ioo a b, HasDerivAt (f ∘ Neg.neg) (f' (-x) * -1) x := fun x hx =>
    comp x (hff' (-x) hx) (hasDerivAt_neg x)
  have hdng : ∀ x ∈ -Ioo a b, HasDerivAt (g ∘ Neg.neg) (g' (-x) * -1) x := fun x hx =>
    comp x (hgg' (-x) hx) (hasDerivAt_neg x)
  rw [neg_Ioo] at hdnf
  rw [neg_Ioo] at hdng
  have := lhopital_zero_right_on_Ioo (neg_lt_neg hab) hdnf hdng (by
    intro x hx h
    apply hg' _ (by rw [← neg_Ioo] at hx; exact hx)
    rwa [mul_comm, ← neg_eq_neg_one_mul, neg_eq_zero] at h)
    (hfb.comp tendsto_neg_nhdsGT_neg) (hgb.comp tendsto_neg_nhdsGT_neg)
    (by
      simp only [neg_div_neg_eq, mul_one, mul_neg]
      exact hdiv.comp tendsto_neg_nhdsGT_neg)
  have := this.comp tendsto_neg_nhdsLT
  unfold Function.comp at this
  simpa only [neg_neg]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variantbcd26a00cda19edcd295abd863fb98f20772ef52f04dd64ef77d328e2911e60f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variantbcd26a00cda19edcd295abd863fb98f20772ef52f04dd64ef77d328e2911e60f.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed5037cd0c85e279b7e8da3ec04e11b7258aaa77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
