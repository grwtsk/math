# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteRange.Variantcbf60bae296b76637033cc19e3ebf7e8c47e1c39e0fc7b4e528abc4f8d199c19.Function.Injective.range_eq_range_iff_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:13e14dd4-e152-c79c-03af-23d4a6640bd5",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteRange.Variantcbf60bae296b76637033cc19e3ebf7e8c47e1c39e0fc7b4e528abc4f8d199c19.Function.Injective.range_eq_range_iff_subset",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-finiterange-variantcbf60--0872692b09e3fc33fea51c63",
  "source": {
    "blob": "6f5292fee013d87b3f94a93edce65391ebd7bec4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 115,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Range/Variant968f26528c7520d1c3127ba7017471649e889a1a0fb31f13bf05c34f740ab8b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0872692b09e3fc33fea51c6336667f6549991465c426cc7e4a02a920731fa641",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Range/Variant968f26528c7520d1c3127ba7017471649e889a1a0fb31f13bf05c34f740ab8b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13e14dd4-e152-c79c-03af-23d4a6640bd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteRange.Variantcbf60bae296b76637033cc19e3ebf7e8c47e1c39e0fc7b4e528abc4f8d199c19.Function.Injective.range_eq_range_iff_subset [Finite α]
    {f g : α → γ} (hf : Function.Injective f) :
    range f = range g ↔ range f ⊆ range g := by
  classical
  have := Fintype.ofFinite α
  grind [eq_of_subset_of_card_le, card_range_of_injective, Fintype.card_range_le]

end Set
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Range/Variant968f26528c7520d1c3127ba7017471649e889a1a0fb31f13bf05c34f740ab8b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Range/Variant968f26528c7520d1c3127ba7017471649e889a1a0fb31f13bf05c34f740ab8b1.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f5292fee013d87b3f94a93edce65391ebd7bec4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
