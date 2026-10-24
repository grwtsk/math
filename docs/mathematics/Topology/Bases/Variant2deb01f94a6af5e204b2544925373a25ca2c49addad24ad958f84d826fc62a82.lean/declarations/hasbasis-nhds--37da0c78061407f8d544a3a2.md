# hasBasis_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "56c3c35c7570ac65a4237b8f57334716528560f5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 152,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2deb01f94a6af5e204b2544925373a25ca2c49addad24ad958f84d826fc62a82.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6b6e494b-9d2e-1abe-9fd8-a4a632285f08",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2cfb5520-c3b2-cb3c-290d-eb4290a19ded",
  "kind": "theorem",
  "lexical_name": "hasBasis_nhds",
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
  "slug": "hasbasis-nhds--37da0c78061407f8d544a3a2",
  "source": {
    "blob": "56c3c35c7570ac65a4237b8f57334716528560f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 152,
    "path": "GRWTSK/Topology/Bases/Variant2deb01f94a6af5e204b2544925373a25ca2c49addad24ad958f84d826fc62a82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37da0c78061407f8d544a3a241f19af83b17703b96209ab35b6950f0357db0ab",
  "verification": {
    "reference": "docs/verification/Topology/Bases/Variant2deb01f94a6af5e204b2544925373a25ca2c49addad24ad958f84d826fc62a82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2cfb5520-c3b2-cb3c-290d-eb4290a19ded`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasBasis_nhds (a : A) :
    HasBasis (@nhds A hB.topology a) (fun _ => True) fun i => { b | b - a ∈ B i } :=
  ⟨by
    intro s
    rw [(hB.toRingFilterBasis.toAddGroupFilterBasis.nhds_hasBasis a).mem_iff]
    simp only [true_and]
    constructor
    · rintro ⟨-, ⟨i, rfl⟩, hi⟩
      use i
      suffices h : { b : A | b - a ∈ B i } = (fun y => a + y) '' ↑(B i) by rwa [h]
      simp only [image_add_left, neg_add_eq_sub]
      ext b
      simp
    · rintro ⟨i, hi⟩
      use B i
      constructor
      · use i
      · rw [image_subset_iff]
        rintro b b_in
        apply hi
        simpa using b_in⟩

/-- Given a subgroups basis, the basis elements as open additive subgroups in the associated
topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Bases/Variant2deb01f94a6af5e204b2544925373a25ca2c49addad24ad958f84d826fc62a82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Bases/Variant2deb01f94a6af5e204b2544925373a25ca2c49addad24ad958f84d826fc62a82.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56c3c35c7570ac65a4237b8f57334716528560f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
