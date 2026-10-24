# orderedToDirectionPartition_card_parts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26a04012-00bc-185a-a7fc-42720ed0b274",
  "kind": "theorem",
  "lexical_name": "orderedToDirectionPartition_card_parts",
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
  "slug": "orderedtodirectionpartition-card-parts--2625c1a9bc29645f54e948da",
  "source": {
    "blob": "d8cb3a9f42b739723a31c45ad2d377d606c3a50c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 163,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Af0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549feOrderedPartition/Variantbafb266db70c0a3a9fdababff743d404974e68bd00cbfdc3898910f3ce1723b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2625c1a9bc29645f54e948daf4aa0795a6769448120b4a191f6651648400fff8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Af0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549feOrderedPartition/Variantbafb266db70c0a3a9fdababff743d404974e68bd00cbfdc3898910f3ce1723b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26a04012-00bc-185a-a7fc-42720ed0b274`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orderedToDirectionPartition_card_parts
    {n : ℕ}
    (c : OrderedFinpartition n) :
    (orderedToDirectionPartition c).parts.card = c.length := by
  rw [orderedToDirectionPartition_parts, orderedBlocks,
    Finset.card_image_of_injective _ (orderedBlock_injective c),
    Finset.card_univ,
    Fintype.card_fin]

/-- One ordered block, viewed as a member of the transported plain partition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Af0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549feOrderedPartition/Variantbafb266db70c0a3a9fdababff743d404974e68bd00cbfdc3898910f3ce1723b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Af0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549feOrderedPartition/Variantbafb266db70c0a3a9fdababff743d404974e68bd00cbfdc3898910f3ce1723b0.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8cb3a9f42b739723a31c45ad2d377d606c3a50c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
