# extremalNumber_of_fintypeCard_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f09f2ee7bc9d88cb3f5f9dd4da9d3ca08c007544",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bc0bfd3256e12184752b556359b78ff1b2cf4ce5a3562dc043eafb330c1bc0de.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f03aacec-87aa-1d84-06be-eaf9e9be9c2c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8b0127f8-83f9-aac7-dc4d-fdcbe0655605",
  "kind": "theorem",
  "lexical_name": "extremalNumber_of_fintypeCard_eq",
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
  "slug": "extremalnumber-of-fintypecard-eq--1a6e6b1f97909e603bd2c1ed",
  "source": {
    "blob": "f09f2ee7bc9d88cb3f5f9dd4da9d3ca08c007544",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 74,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantbc0bfd3256e12184752b556359b78ff1b2cf4ce5a3562dc043eafb330c1bc0de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a6e6b1f97909e603bd2c1ed0c90120b67c310f465eb4f05917ec4670fe913a2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantbc0bfd3256e12184752b556359b78ff1b2cf4ce5a3562dc043eafb330c1bc0de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b0127f8-83f9-aac7-dc4d-fdcbe0655605`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extremalNumber_of_fintypeCard_eq [Fintype V] (hc : card V = n) :
    extremalNumber n H = sup { G : SimpleGraph V | H.Free G } (#·.edgeFinset) := by
  let e := Fintype.equivFinOfCardEq hc
  rw [extremalNumber, le_antisymm_iff]
  and_intros
  on_goal 1 =>
    replace e := e.symm
  all_goals
  rw [Finset.sup_le_iff]
  intro G h
  let G' := G.map e.toEmbedding
  replace h' : G' ∈ univ.filter (H.Free ·) := by
    rw [mem_filter, ← free_congr .refl (.map e G)]
    simpa using h
  rw [Iso.card_edgeFinset_eq (.map e G)]
  convert @le_sup _ _ _ _ { G | H.Free G } (#·.edgeFinset) G' h'

variable [Fintype V] [DecidableRel G.Adj]

/-- If `G` is `H`-free, then `G` has at most `extremalNumber (card V) H` edges. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantbc0bfd3256e12184752b556359b78ff1b2cf4ce5a3562dc043eafb330c1bc0de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantbc0bfd3256e12184752b556359b78ff1b2cf4ce5a3562dc043eafb330c1bc0de.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f09f2ee7bc9d88cb3f5f9dd4da9d3ca08c007544` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
