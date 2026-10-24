# card_sdiff_add_card_inter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:512f9326-568f-1730-7614-bb62daa8f1d9",
  "kind": "lemma",
  "lexical_name": "card_sdiff_add_card_inter",
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
  "slug": "card-sdiff-add-card-inter--48351e4842c8b5eeb7cbd88d",
  "source": {
    "blob": "ae16dc8a4e379463f11277b2f94281a27d0f2d93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 647,
    "line": 640,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variantd6995fcbea82c6838696482df3060a31591bc12545c92837a49726bbf3babbbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48351e4842c8b5eeb7cbd88dd9e89635e6eae780f3e1bcd7a54dc30b258b503a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Card/Variantd6995fcbea82c6838696482df3060a31591bc12545c92837a49726bbf3babbbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:512f9326-568f-1730-7614-bb62daa8f1d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 640–647.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma card_sdiff_add_card_inter (s t : Finset α) :
    #(s \ t) + #(s ∩ t) = #s := by
  rw [← card_union_of_disjoint (disjoint_sdiff_inter _ _), sdiff_union_inter]

grind_pattern card_sdiff_add_card_inter => #(s \ t), #(s ∩ t)
grind_pattern card_sdiff_add_card_inter => #(s \ t), #s

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Card/Variantd6995fcbea82c6838696482df3060a31591bc12545c92837a49726bbf3babbbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variantd6995fcbea82c6838696482df3060a31591bc12545c92837a49726bbf3babbbe.lean#L640).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae16dc8a4e379463f11277b2f94281a27d0f2d93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
