# Spec_stalkClosedPointTo_fromSpecStalk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb906440d71672d7656ff92a8e375534b3509a61",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 330,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:922459dc-05ee-8f63-bfde-09e24730fb1e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c7475959-d16b-5cef-4de4-9b1be2b539cd",
  "kind": "lemma",
  "lexical_name": "Spec_stalkClosedPointTo_fromSpecStalk",
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
  "slug": "spec-stalkclosedpointto-fromspecstalk--89141c914f36cddbd11d53fb",
  "source": {
    "blob": "bb906440d71672d7656ff92a8e375534b3509a61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 330,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89141c914f36cddbd11d53fbc1372877d276220da07dec3307277362d578f1b1",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7475959-d16b-5cef-4de4-9b1be2b539cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Spec_stalkClosedPointTo_fromSpecStalk :
    Spec.map (stalkClosedPointTo f) ≫ X.fromSpecStalk _ = f := by
  obtain ⟨_, ⟨U, hU, rfl⟩, hxU, -⟩ := (isBasis_affine_open X).exists_subset_of_mem_open
    (Set.mem_univ (f.base (closedPoint R))) isOpen_univ
  have := IsAffineOpen.Spec_map_appLE_fromSpec f hU (isAffineOpen_top _)
    (preimage_eq_top_of_closedPoint_mem f hxU).ge
  rw [IsAffineOpen.fromSpec_top, Iso.eq_inv_comp, isoSpec_Spec_hom] at this
  rw [← hU.fromSpecStalk_eq_fromSpecStalk hxU, IsAffineOpen.fromSpecStalk, ← Spec.map_comp_assoc,
    germ_stalkClosedPointTo]
  simpa only [Iso.trans_hom, Functor.mapIso_hom, Iso.op_hom, Category.assoc,
    Hom.app_eq_appLE, Hom.appLE_map_assoc, Spec.map_comp_assoc]

end Scheme

end stalkClosedPointTo

variable {R}

omit [IsLocalRing R] in
/-- useful lemma for applications of `SpecToEquivOfLocalRing` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb906440d71672d7656ff92a8e375534b3509a61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
