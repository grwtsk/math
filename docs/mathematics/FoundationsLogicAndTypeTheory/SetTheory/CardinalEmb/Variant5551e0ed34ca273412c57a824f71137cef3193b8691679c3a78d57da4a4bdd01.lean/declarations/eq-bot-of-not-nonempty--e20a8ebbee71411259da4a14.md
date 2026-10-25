# eq_bot_of_not_nonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bfa95603-dc21-5ade-d073-b569605022d5",
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
  "slug": "eq-bot-of-not-nonempty--e20a8ebbee71411259da4a14",
  "source": {
    "blob": "9af5720d96e0495cfcc4308fcd0bb65f98e07f10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 273,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5551e0ed34ca273412c57a824f71137cef3193b8691679c3a78d57da4a4bdd01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e20a8ebbee71411259da4a14b9e083448c226e4fe91299427b1e134ccd804b65",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5551e0ed34ca273412c57a824f71137cef3193b8691679c3a78d57da4a4bdd01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bfa95603-dc21-5ade-d073-b569605022d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_bot_of_not_nonempty (hi : ¬ Nonempty (Iio i)) : filtration i = ⊥ := by
  cases i
  · have := mk_ne_zero_iff.mp (rank_pos.trans_eq (mk_ord_toType <| Module.rank F E).symm).ne'
    rw [← range_coe] at hi; exact (hi inferInstance).elim
  · exact bot_unique <| adjoin_le_iff.mpr fun _ ⟨j, hj, _⟩ ↦ (hi ⟨j, coe_lt_coe.mpr hj⟩).elim

open Classical in
/-- If `i` is a limit, the type of embeddings of `E⟮<i⟯` into `Ē` is
the limit of the types of embeddings of `E⟮<j⟯` for `j < i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5551e0ed34ca273412c57a824f71137cef3193b8691679c3a78d57da4a4bdd01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5551e0ed34ca273412c57a824f71137cef3193b8691679c3a78d57da4a4bdd01.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9af5720d96e0495cfcc4308fcd0bb65f98e07f10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
