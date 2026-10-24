# _root_.IsOpen.isOpen_inter_preimage_of_fderiv_eq_zero

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
      "line": 586,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7e1e6f097fe92a2493ea5b4bc9a1896c850514604f26f863f812906fb500b856.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9f743dd8-3f0e-e7e1-f039-7ddbb2b9199e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:92750daa-399c-d886-34d8-02d84319253d",
  "kind": "theorem",
  "lexical_name": "_root_.IsOpen.isOpen_inter_preimage_of_fderiv_eq_zero",
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
  "slug": "root-isopen-isopen-inter-preimage-of-fderiv-eq-zero--1b2cfaa4f3fa58be764248dc",
  "source": {
    "blob": "de2f76a7db82e1d758e5e4fda851f7f474e5a38a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 596,
    "line": 586,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant7e1e6f097fe92a2493ea5b4bc9a1896c850514604f26f863f812906fb500b856.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b2cfaa4f3fa58be764248dc6efcbc3030bdfba30432970d2d5a9871976940e1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant7e1e6f097fe92a2493ea5b4bc9a1896c850514604f26f863f812906fb500b856.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92750daa-399c-d886-34d8-02d84319253d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 586–596.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.IsOpen.isOpen_inter_preimage_of_fderiv_eq_zero
    (hs : IsOpen s) (hf : DifferentiableOn 𝕜 f s)
    (hf' : s.EqOn (fderiv 𝕜 f) 0) (t : Set G) : IsOpen (s ∩ f ⁻¹' t) := by
  refine Metric.isOpen_iff.mpr fun y ⟨hy, hy'⟩ ↦ ?_
  obtain ⟨r, hr, h⟩ := Metric.isOpen_iff.mp hs y hy
  refine ⟨r, hr, Set.subset_inter h fun x hx ↦ ?_⟩
  have := (convex_ball y r).is_const_of_fderivWithin_eq_zero (hf.mono h) ?_ hx (mem_ball_self hr)
  · simpa [this]
  · intro z hz
    simpa only [fderivWithin_of_isOpen Metric.isOpen_ball hz] using! hf' (h hz)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant7e1e6f097fe92a2493ea5b4bc9a1896c850514604f26f863f812906fb500b856.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant7e1e6f097fe92a2493ea5b4bc9a1896c850514604f26f863f812906fb500b856.lean#L586).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de2f76a7db82e1d758e5e4fda851f7f474e5a38a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
