# affineCombination_mem_affineSpan_pair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29ce1110-6642-3353-d69d-07a3491d694a",
  "kind": "theorem",
  "lexical_name": "affineCombination_mem_affineSpan_pair",
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
  "slug": "affinecombination-mem-affinespan-pair--022bfb81e58695ae04c08a82",
  "source": {
    "blob": "cbdbc0e00222ec1efb7a6f5a9996548a64749fa7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 718,
    "line": 704,
    "path": "GRWTSK/Algebra/LinearAlgebra/Independent/Variant7eddc5cb3f39acb8b1316d18afba3db01be8f92395ad7e73521b8293ced00303.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:022bfb81e58695ae04c08a82e99e32a039166c18dd14cae598a913e399fefc0e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Independent/Variant7eddc5cb3f39acb8b1316d18afba3db01be8f92395ad7e73521b8293ced00303.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29ce1110-6642-3353-d69d-07a3491d694a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 704–718.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem affineCombination_mem_affineSpan_pair {p : ι → P} (h : AffineIndependent k p)
    {w w₁ w₂ : ι → k} {s : Finset ι} (_ : ∑ i ∈ s, w i = 1) (hw₁ : ∑ i ∈ s, w₁ i = 1)
    (hw₂ : ∑ i ∈ s, w₂ i = 1) :
    s.affineCombination k p w ∈ line[k, s.affineCombination k p w₁, s.affineCombination k p w₂] ↔
      ∃ r : k, ∀ i ∈ s, w i = r * (w₂ i - w₁ i) + w₁ i := by
  rw [← vsub_vadd (s.affineCombination k p w) (s.affineCombination k p w₁),
    AffineSubspace.vadd_mem_iff_mem_direction _ (left_mem_affineSpan_pair _ _ _),
    direction_affineSpan, s.affineCombination_vsub, Set.pair_comm,
    weightedVSub_mem_vectorSpan_pair h _ hw₂ hw₁]
  · simp only [Pi.sub_apply, sub_eq_iff_eq_add]
  · simp_all only [Pi.sub_apply, Finset.sum_sub_distrib, sub_self]

/-- Given an affinely independent family of points, an affine combination (with sum of weights 1)
equals the line map of two affine combination points if and only if its weights are given pointwise
by the line map of the corresponding weights. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Independent/Variant7eddc5cb3f39acb8b1316d18afba3db01be8f92395ad7e73521b8293ced00303.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Independent/Variant7eddc5cb3f39acb8b1316d18afba3db01be8f92395ad7e73521b8293ced00303.lean#L704).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbdbc0e00222ec1efb7a6f5a9996548a64749fa7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
