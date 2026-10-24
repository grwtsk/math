# mapBilipschitz_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:299ecb72-bf6a-2dd5-f97c-85c651678b00",
  "kind": "lemma",
  "lexical_name": "mapBilipschitz_trans",
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
  "slug": "mapbilipschitz-trans--4f0816c2766edf0471b8df71",
  "source": {
    "blob": "e179c7d2e810521e98807bfea655acb23b367d5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 172,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant90b3357a68a6825b48513e508ef2c193f35a88180cfa077d9edb53ab37072215.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f0816c2766edf0471b8df7126743a0f36239c58d117c9717ecc79d57319fbca",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variant90b3357a68a6825b48513e508ef2c193f35a88180cfa077d9edb53ab37072215.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:299ecb72-bf6a-2dd5-f97c-85c651678b00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mapBilipschitz_trans {Z : Type*} [MetricSpace Z] (D : DeloneSet X)
    (f : X ≃ Y) (g : Y ≃ Z) (K₁f K₂f K₁g K₂g : ℝ≥0)
    (hf₁_pos : 0 < K₁f) (hf₂_pos : 0 < K₂f)
    (hg₁_pos : 0 < K₁g) (hg₂_pos : 0 < K₂g)
    (hf_anti : AntilipschitzWith K₁f f) (hf_lip : LipschitzWith K₂f f)
    (hg_anti : AntilipschitzWith K₁g g) (hg_lip : LipschitzWith K₂g g) :
    (D.mapBilipschitz f K₁f K₂f hf₁_pos hf₂_pos hf_anti hf_lip).mapBilipschitz
      g K₁g K₂g hg₁_pos hg₂_pos hg_anti hg_lip =
    D.mapBilipschitz (f.trans g) (K₁f * K₁g) (K₂g * K₂f)
      (mul_pos hf₁_pos hg₁_pos) (mul_pos hg₂_pos hf₂_pos)
      (hg_anti.comp hf_anti) (hg_lip.comp hf_lip) := by
  ext
  · simp only [mapBilipschitz_carrier, Equiv.trans_apply, Set.mem_image]
    exact exists_exists_and_eq_and
  · simp only [mapBilipschitz_packingRadius, NNReal.coe_div, div_div]
  · simp only [mapBilipschitz_coveringRadius, NNReal.coe_mul, mul_assoc]

set_option backward.isDefEq.respectTransparency false in
/-- The image of a Delone set under an isometry. This is a specialization of
`DeloneSet.mapBilipschitz` where the packing and covering radii are preserved because the
Lipschitz constants are both 1. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant90b3357a68a6825b48513e508ef2c193f35a88180cfa077d9edb53ab37072215.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant90b3357a68a6825b48513e508ef2c193f35a88180cfa077d9edb53ab37072215.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e179c7d2e810521e98807bfea655acb23b367d5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
