# chromaticNumber_eq_card_of_forall_surj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d6f2658fbf5c0423c1172a42472e1a77af1cf658",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 340,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ec/ec0961d12ff574540aba5402d2aad45924990a31a6d083fa5c7da2054e764de1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0187b2e9-e5b1-7c85-8358-a870b2db8eea",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3fc84af4-bcda-803c-f368-4ab7c18b5a62",
  "kind": "theorem",
  "lexical_name": "chromaticNumber_eq_card_of_forall_surj",
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
  "slug": "chromaticnumber-eq-card-of-forall-surj--0de935ccae09ff6689e4c619",
  "source": {
    "blob": "d6f2658fbf5c0423c1172a42472e1a77af1cf658",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 340,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/Variantec0961d12ff574540aba5402d2aad45924990a31a6d083fa5c7da2054e764de1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0de935ccae09ff6689e4c619ce3448698686fa86d827326f5c663a226b388d16",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/Variantec0961d12ff574540aba5402d2aad45924990a31a6d083fa5c7da2054e764de1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3fc84af4-bcda-803c-f368-4ab7c18b5a62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem chromaticNumber_eq_card_of_forall_surj [Fintype α] (C : G.Coloring α)
    (h : ∀ C' : G.Coloring α, Function.Surjective C') : G.chromaticNumber = Fintype.card α := by
  apply le_antisymm
  · apply chromaticNumber_le_card C
  · by_contra hc
    rw [not_le] at hc
    obtain ⟨n, cn, hc⟩ :=
      exists_lt_of_csInf_lt (colorable_set_nonempty_of_colorable C.to_colorable) hc
    rw [← Fintype.card_fin n] at hc
    have f := (Function.Embedding.nonempty_of_card_le (le_of_lt hc)).some
    have C' := cn.some
    specialize h (G.recolorOfEmbedding f C')
    have h1 : Function.Surjective f := Function.Surjective.of_comp h
    have h2 := Fintype.card_le_of_surjective _ h1
    exact Nat.lt_le_antisymm hc h2
#align simple_graph.chromatic_number_eq_card_of_forall_surj SimpleGraph.chromaticNumber_eq_card_of_forall_surj

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/Variantec0961d12ff574540aba5402d2aad45924990a31a6d083fa5c7da2054e764de1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/Variantec0961d12ff574540aba5402d2aad45924990a31a6d083fa5c7da2054e764de1.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6f2658fbf5c0423c1172a42472e1a77af1cf658` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
