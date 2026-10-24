# eqOn_of_isPreconnected_of_isMaxOn_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4a7c7cba33ea84031d25e50fbdb773f30a988a37",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 114,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/15/15c3fb6f1311d48705203bb5abe0e7ad7cfcd87fa89d9cf2198ba06b6662970f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6dbb90eb-8fc0-959e-e7e6-254816ddd5e9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bce36dbf-451c-990e-7f65-f6c2d742cef6",
  "kind": "theorem",
  "lexical_name": "eqOn_of_isPreconnected_of_isMaxOn_norm",
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
  "slug": "eqon-of-ispreconnected-of-ismaxon-norm--171c45f5ab7030bc2e88aa61",
  "source": {
    "blob": "4a7c7cba33ea84031d25e50fbdb773f30a988a37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 114,
    "path": "GRWTSK/Topology/GeneralTopology/Complex/Variant15c3fb6f1311d48705203bb5abe0e7ad7cfcd87fa89d9cf2198ba06b6662970f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:171c45f5ab7030bc2e88aa61a8023a30e98a23da46a5bda555494fb2d8810866",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Complex/Variant15c3fb6f1311d48705203bb5abe0e7ad7cfcd87fa89d9cf2198ba06b6662970f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bce36dbf-451c-990e-7f65-f6c2d742cef6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eqOn_of_isPreconnected_of_isMaxOn_norm [StrictConvexSpace ℝ F] {f : M → F} {U : Set M}
    {c : M} (hd : MDiff[U] f) (hc : IsPreconnected U) (ho : IsOpen U)
    (hcU : c ∈ U) (hm : IsMaxOn (norm ∘ f) U c) : EqOn f (const M (f c)) U := fun x hx =>
  have H₁ : ‖f x‖ = ‖f c‖ := hd.norm_eqOn_of_isPreconnected_of_isMaxOn hc ho hcU hm hx
  have hd' : MDiff[U] (f · + f c) := hd.add mdifferentiableOn_const
  have H₂ : ‖f x + f c‖ = ‖f c + f c‖ :=
    hd'.norm_eqOn_of_isPreconnected_of_isMaxOn hc ho hcU hm.norm_add_self hx
  eq_of_norm_eq_of_norm_add_eq H₁ <| by simp only [H₂, SameRay.rfl.norm_add, H₁, Function.const]

/-- If a function `f : M → F` from a complex manifold to a complex normed space is holomorphic on a
(pre)connected compact open set, then it is a constant on this set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Complex/Variant15c3fb6f1311d48705203bb5abe0e7ad7cfcd87fa89d9cf2198ba06b6662970f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Complex/Variant15c3fb6f1311d48705203bb5abe0e7ad7cfcd87fa89d9cf2198ba06b6662970f.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a7c7cba33ea84031d25e50fbdb773f30a988a37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
