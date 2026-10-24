# isTopologicalBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ce38d8394b7bfc745db9c5f262f07ccdf3349076",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/446cb184da734a2ed4a5eb7f9910ad31cc20423e1d91d7a580d38fda5a9556ee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3976dfb1-9d56-f308-7085-58c14d3eebdc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:637ea851-8486-c017-acf7-55f10d3009f5",
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
  "slug": "istopologicalbasis--2d08aff9ce0327a50688fb41",
  "source": {
    "blob": "ce38d8394b7bfc745db9c5f262f07ccdf3349076",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 89,
    "path": "GRWTSK/Topology/GeneralTopology/LawsonTopology/Variant446cb184da734a2ed4a5eb7f9910ad31cc20423e1d91d7a580d38fda5a9556ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d08aff9ce0327a50688fb411e91aa2181259292c4b5ae18629f59fb0848ee06",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LawsonTopology/Variant446cb184da734a2ed4a5eb7f9910ad31cc20423e1d91d7a580d38fda5a9556ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:637ea851-8486-c017-acf7-55f10d3009f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem isTopologicalBasis : TopologicalSpace.IsTopologicalBasis (lawsonBasis α) := by
  have lawsonBasis_image2 : lawsonBasis α =
      (image2 (fun x x_1 ↦ ⇑WithLower.toLower ⁻¹' x ∩ ⇑WithScott.toScott ⁻¹' x_1)
        (IsLower.lowerBasis (WithLower α)) {U | IsOpen[scott α univ] U}) := by
    rw [lawsonBasis, image2, IsLower.lowerBasis]
    simp_rw [sdiff_eq_compl_inter]
    aesop
  rw [lawsonBasis_image2]
  convert!
    IsTopologicalBasis.inf_induced IsLower.isTopologicalBasis
      (isTopologicalBasis_opens (α := WithScott α)) WithLower.toLower WithScott.toScott
  rw [@topology_eq_lawson α _ _ _, lawson]
  apply (congrArg₂ min _) _
  · let _ := lower α
    exact (@IsLower.withLowerHomeomorph α ‹_› (lower α) ⟨rfl⟩).isInducing.eq_induced
  · let _ := scott α univ
    exact (@IsScott.withScottHomeomorph α _ (scott α univ) ⟨rfl⟩).isInducing.eq_induced

end Preorder
end IsLawson

/--
Type synonym for a preorder equipped with the Lawson topology.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LawsonTopology/Variant446cb184da734a2ed4a5eb7f9910ad31cc20423e1d91d7a580d38fda5a9556ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LawsonTopology/Variant446cb184da734a2ed4a5eb7f9910ad31cc20423e1d91d7a580d38fda5a9556ee.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce38d8394b7bfc745db9c5f262f07ccdf3349076` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
