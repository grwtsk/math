# card_le_one_iff_eq_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "679066e4d247c6bf1f5890a55c46e67e2ca0d554",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/de/dea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f2d49916-5b74-4fef-266b-22afaac476b8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:595d13b2-7851-b9e7-a2a4-f534f591bb80",
  "kind": "theorem",
  "lexical_name": "card_le_one_iff_eq_bot",
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
  "slug": "card-le-one-iff-eq-bot--32ac741f3b517d485bf97aef",
  "source": {
    "blob": "679066e4d247c6bf1f5890a55c46e67e2ca0d554",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 168,
    "path": "GRWTSK/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32ac741f3b517d485bf97aefc80d93635857b0b75a88855e7c71541e96b8272e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:595d13b2-7851-b9e7-a2a4-f534f591bb80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_le_one_iff_eq_bot [Fintype H] : Fintype.card H ≤ 1 ↔ H = ⊥ :=
  ⟨fun h =>
    (eq_bot_iff_forall _).2 fun x hx => by
      simpa [Subtype.ext_iff] using Fintype.card_le_one_iff.1 h ⟨x, hx⟩ 1,
    fun h => by simp [h]⟩
#align subgroup.card_le_one_iff_eq_bot Subgroup.card_le_one_iff_eq_bot
#align add_subgroup.card_nonpos_iff_eq_bot AddSubgroup.card_le_one_iff_eq_bot

@[to_additive one_lt_card_iff_ne_bot]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `679066e4d247c6bf1f5890a55c46e67e2ca0d554` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
