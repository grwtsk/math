# injectiveDimension_X₃_succ_le_sup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "81a50ef4303c53940331d2dd6acb137e5b11943a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 380,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b7bbc308-6442-7469-33e5-398a3fbd2621",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:55b5f24e-ba8d-0191-35cb-25c170a146c5",
  "kind": "lemma",
  "lexical_name": "injectiveDimension_X₃_succ_le_sup",
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
  "slug": "injectivedimension-x-succ-le-sup--7146118b19f8dade2f19008d",
  "source": {
    "blob": "81a50ef4303c53940331d2dd6acb137e5b11943a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 396,
    "line": 380,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7146118b19f8dade2f19008d877bb99370617c0653c04dae7f19b21ce3ab5761",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55b5f24e-ba8d-0191-35cb-25c170a146c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 380–396.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma injectiveDimension_X₃_succ_le_sup :
    injectiveDimension S.X₃ + 1 ≤
      (injectiveDimension S.X₂ + 1) ⊔ injectiveDimension S.X₁ := by
  refine le_of_forall_ge (fun N ↦ ?_)
  induction N with
  | bot =>
    have := hS.epi_g
    simpa [injectiveDimension_eq_bot_iff] using fun h _ ↦ h.of_epi S.g
  | coe N =>
    induction N with
    | top => simp
    | coe n =>
      simpa [injectiveDimension_le_iff, ENat.WithBot.add_one_le_natCast_iff,
        injectiveDimension_lt_iff] using fun h2 h1 ↦ hS.hasInjectiveDimensionLT_X₃ n h2 h1

/-- If the middle object of a short exact complex is injective and the left object is not,
then the injective dimension of the left object is one more than that of the right object. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean#L380).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81a50ef4303c53940331d2dd6acb137e5b11943a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
