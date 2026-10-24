# uniformOn_apply_finset'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49b54010-1b38-4dd0-b0e3-7f3e96da1eaf",
  "kind": "lemma",
  "lexical_name": "uniformOn_apply_finset'",
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
  "slug": "uniformon-apply-finset--59deb036aad1f7016355cd40",
  "source": {
    "blob": "975ad2cadd13f6330eb311cf9cdd1f8bf8c88843",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 105,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/UniformOn/Variant20e48bcdce228e4f613bb0382f21be7d4b866e407f51eb874410f6f725d4ad35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59deb036aad1f7016355cd401326c18b4057ce8e6ee1e4b9ae7158584f6f54b6",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/UniformOn/Variant20e48bcdce228e4f613bb0382f21be7d4b866e407f51eb874410f6f725d4ad35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49b54010-1b38-4dd0-b0e3-7f3e96da1eaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma uniformOn_apply_finset' {Ω : Type*} [DecidableEq Ω] {_ : MeasurableSpace Ω} {s t : Finset Ω}
    (hs : MeasurableSet (s : Set Ω)) (ht : MeasurableSet (t : Set Ω)) :
    uniformOn (s : Set Ω) (t : Set Ω) = #(s ∩ t) / #s := by
  rw [uniformOn, cond_apply hs, Measure.count_apply_finset' hs, ← coe_inter,
    Measure.count_apply_finset']
  · rw [div_eq_mul_inv, mul_comm]
  rw [coe_inter]
  exact hs.inter ht

variable [MeasurableSingletonClass Ω]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/UniformOn/Variant20e48bcdce228e4f613bb0382f21be7d4b866e407f51eb874410f6f725d4ad35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/UniformOn/Variant20e48bcdce228e4f613bb0382f21be7d4b866e407f51eb874410f6f725d4ad35.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `975ad2cadd13f6330eb311cf9cdd1f8bf8c88843` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
