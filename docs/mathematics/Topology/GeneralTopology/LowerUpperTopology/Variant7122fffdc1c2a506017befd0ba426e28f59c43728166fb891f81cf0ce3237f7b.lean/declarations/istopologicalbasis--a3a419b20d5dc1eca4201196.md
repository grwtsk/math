# isTopologicalBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1eb03d64-b06a-af5f-f3cb-da2204446a82",
  "kind": "theorem",
  "lexical_name": "isTopologicalBasis",
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
  "slug": "istopologicalbasis--a3a419b20d5dc1eca4201196",
  "source": {
    "blob": "2bc14241f5b982e12a0e298db13243f055e059b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 325,
    "path": "GRWTSK/Topology/GeneralTopology/LowerUpperTopology/Variant7122fffdc1c2a506017befd0ba426e28f59c43728166fb891f81cf0ce3237f7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3a419b20d5dc1eca4201196a7fc7336f334590222e4c81ebf5f62593e2cdb2f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LowerUpperTopology/Variant7122fffdc1c2a506017befd0ba426e28f59c43728166fb891f81cf0ce3237f7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1eb03d64-b06a-af5f-f3cb-da2204446a82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem isTopologicalBasis : IsTopologicalBasis (lowerBasis α) := by
  convert isTopologicalBasis_of_subbasis (topology_eq α)
  simp_rw [lowerBasis, coe_upperClosure, compl_iUnion]
  ext s
  constructor
  · rintro ⟨F, hF, rfl⟩
    refine' ⟨(fun a => (Ici a)ᶜ) '' F, ⟨hF.image _, image_subset_iff.2 fun _ _ => ⟨_, rfl⟩⟩, _⟩
    simp only [sInter_image]
  · rintro ⟨F, ⟨hF, hs⟩, rfl⟩
    haveI := hF.to_subtype
    rw [subset_def, Subtype.forall'] at hs
    choose f hf using hs
    exact ⟨_, finite_range f, by simp_rw [biInter_range, hf, sInter_eq_iInter]⟩
#align lower_topology.is_topological_basis LowerTopology.isTopologicalBasis

/-- A function `f : β → α` with lower topology in the codomain is continuous provided that the
preimage of every interval `Set.Ici a` is a closed set.

TODO: upgrade to an `iff`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LowerUpperTopology/Variant7122fffdc1c2a506017befd0ba426e28f59c43728166fb891f81cf0ce3237f7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LowerUpperTopology/Variant7122fffdc1c2a506017befd0ba426e28f59c43728166fb891f81cf0ce3237f7b.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bc14241f5b982e12a0e298db13243f055e059b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
