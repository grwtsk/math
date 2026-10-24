# orderedBlock_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e10cec5c-97a9-af37-dd1a-8baae37f0243",
  "kind": "theorem",
  "lexical_name": "orderedBlock_injective",
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
  "slug": "orderedblock-injective--2d1ce6ea3326f854cbb204a4",
  "source": {
    "blob": "d8cb3a9f42b739723a31c45ad2d377d606c3a50c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 104,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Af0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549feOrderedPartition/Variantbafb266db70c0a3a9fdababff743d404974e68bd00cbfdc3898910f3ce1723b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d1ce6ea3326f854cbb204a48aa86f698bbc490d3473c207c7227f9b4109173e",
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

Occurrence: `result:e10cec5c-97a9-af37-dd1a-8baae37f0243`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orderedBlock_injective
    {n : ℕ}
    (c : OrderedFinpartition n) :
    Function.Injective (orderedBlock c) := by
  intro m k hmk
  obtain ⟨x, hx⟩ := orderedBlock_nonempty c m
  apply orderedBlock_index_eq_of_common_mem c hx
  rw [← hmk]
  exact hx

/-- The finite set of all blocks of an ordered finpartition, forgetting their
ordering. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Af0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549feOrderedPartition/Variantbafb266db70c0a3a9fdababff743d404974e68bd00cbfdc3898910f3ce1723b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Af0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549feOrderedPartition/Variantbafb266db70c0a3a9fdababff743d404974e68bd00cbfdc3898910f3ce1723b0.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8cb3a9f42b739723a31c45ad2d377d606c3a50c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
