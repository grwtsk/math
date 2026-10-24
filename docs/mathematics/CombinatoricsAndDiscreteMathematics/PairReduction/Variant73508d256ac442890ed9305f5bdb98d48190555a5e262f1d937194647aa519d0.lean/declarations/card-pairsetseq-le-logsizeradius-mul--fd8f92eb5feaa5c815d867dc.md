# card_pairSetSeq_le_logSizeRadius_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e337258e-11de-357a-ceb1-af5a04efb84e",
  "kind": "lemma",
  "lexical_name": "card_pairSetSeq_le_logSizeRadius_mul",
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
  "slug": "card-pairsetseq-le-logsizeradius-mul--fd8f92eb5feaa5c815d867dc",
  "source": {
    "blob": "b34ec5b4da347b2b4ecd0adfffeaa09ad2cfe742",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 343,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PairReduction/Variant73508d256ac442890ed9305f5bdb98d48190555a5e262f1d937194647aa519d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd8f92eb5feaa5c815d867dc9439bc5695ec344c7a58e9a23d0162f2585ccd54",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PairReduction/Variant73508d256ac442890ed9305f5bdb98d48190555a5e262f1d937194647aa519d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e337258e-11de-357a-ceb1-af5a04efb84e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 343–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma card_pairSetSeq_le_logSizeRadius_mul (hJ : J.Nonempty) (i : ℕ) (ha : 1 < a) :
    ↑(#(pairSetSeq J a c i)) ≤ (if (logSizeBallSeq J hJ a c i).finset.Nonempty then 1 else 0)
    * a ^ (logSizeBallSeq J hJ a c i).radius := by
  induction i with
  | zero =>
    simpa [pairSetSeq, hJ, finset_logSizeBallSeq_zero, logSizeBallStruct.ball,
      radius_logSizeBallSeq_zero] using! card_le_logSizeRadius_le_pow_logSizeRadius ha
  | succ i ih =>
    by_cases! h : (logSizeBallSeq J hJ a c (i + 1)).finset.Nonempty
    · simpa [pairSetSeq, logSizeBallStruct.ball, h, hJ]
        using! card_le_logSizeRadius_le_pow_logSizeRadius ha
    simp [pairSetSeq, logSizeBallStruct.ball, h, hJ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PairReduction/Variant73508d256ac442890ed9305f5bdb98d48190555a5e262f1d937194647aa519d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PairReduction/Variant73508d256ac442890ed9305f5bdb98d48190555a5e262f1d937194647aa519d0.lean#L343).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b34ec5b4da347b2b4ecd0adfffeaa09ad2cfe742` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
