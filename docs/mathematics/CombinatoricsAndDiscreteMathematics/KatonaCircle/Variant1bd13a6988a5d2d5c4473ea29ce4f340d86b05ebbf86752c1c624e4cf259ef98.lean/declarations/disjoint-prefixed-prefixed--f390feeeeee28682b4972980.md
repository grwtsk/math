# disjoint_prefixed_prefixed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc58855b-d7b0-c959-abc0-5c0f1f0c9b19",
  "kind": "lemma",
  "lexical_name": "disjoint_prefixed_prefixed",
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
  "slug": "disjoint-prefixed-prefixed--f390feeeeee28682b4972980",
  "source": {
    "blob": "77bef1c03235f39706192772b67e0a1ec7195764",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 123,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/KatonaCircle/Variant1bd13a6988a5d2d5c4473ea29ce4f340d86b05ebbf86752c1c624e4cf259ef98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f390feeeeee28682b49729809b930523ebbdd703890d027ec5850974f1e4b23a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/KatonaCircle/Variant1bd13a6988a5d2d5c4473ea29ce4f340d86b05ebbf86752c1c624e4cf259ef98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc58855b-d7b0-c959-abc0-5c0f1f0c9b19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma disjoint_prefixed_prefixed (hst : ¬ s ⊆ t) (hts : ¬ t ⊆ s) :
    Disjoint (prefixed s) (prefixed t) := by
  simp only [Finset.disjoint_left, mem_prefixed]
  intro f hs ht
  obtain hst' | hts' := Nat.le_total #s #t
  · exact hst <| hs.subset_of_card_le_card ht hst'
  · exact hts <| ht.subset_of_card_le_card hs hts'

end Numbering
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/KatonaCircle/Variant1bd13a6988a5d2d5c4473ea29ce4f340d86b05ebbf86752c1c624e4cf259ef98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/KatonaCircle/Variant1bd13a6988a5d2d5c4473ea29ce4f340d86b05ebbf86752c1c624e4cf259ef98.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77bef1c03235f39706192772b67e0a1ec7195764` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
