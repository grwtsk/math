# eq_bot_of_not_nonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dcdcfbf208753a1e8aea63502525c472b94d03a2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 268,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a03bcc81-9909-3d22-93d6-f0ad653e2da3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f8e1114f-8ed2-b71d-3c60-65c2e9cec287",
  "kind": "lemma",
  "lexical_name": "eq_bot_of_not_nonempty",
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
  "slug": "eq-bot-of-not-nonempty--521fe44e95f6ad8e9692146d",
  "source": {
    "blob": "dcdcfbf208753a1e8aea63502525c472b94d03a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 268,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:521fe44e95f6ad8e9692146d9a3422454bb2e27e96bba71fb11c5a2c1e361563",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8e1114f-8ed2-b71d-3c60-65c2e9cec287`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_bot_of_not_nonempty (hi : ¬ Nonempty (Iio i)) : filtration i = ⊥ := by
  cases i
  · have := mk_ne_zero_iff.mp (rank_pos.trans_eq (mk_ord_toType <| Module.rank F E).symm).ne'
    rw [← range_coe] at hi; exact (hi inferInstance).elim
  · exact bot_unique <| adjoin_le_iff.mpr fun _ ⟨j, hj, _⟩ ↦ (hi ⟨j, coe_lt_coe.mpr hj⟩).elim

set_option backward.isDefEq.respectTransparency.types false in
open scoped Classical in
/-- If `i` is a limit, the type of embeddings of `E⟮<i⟯` into `Ē` is
the limit of the types of embeddings of `E⟮<j⟯` for `j < i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcdcfbf208753a1e8aea63502525c472b94d03a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
