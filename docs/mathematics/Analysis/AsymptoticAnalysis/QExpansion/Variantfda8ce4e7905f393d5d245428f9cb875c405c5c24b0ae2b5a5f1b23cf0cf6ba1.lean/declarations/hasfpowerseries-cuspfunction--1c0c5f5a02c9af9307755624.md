# hasFPowerSeries_cuspFunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0a5a19f40b768a39f9aa6cf3a51b18122a9eac72",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 161,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fda8ce4e7905f393d5d245428f9cb875c405c5c24b0ae2b5a5f1b23cf0cf6ba1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d6e67a05-16ac-8d1f-5e4a-722eb7cc4b72",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cffbdff8-7cc3-02c3-8b83-f6f7b6145a34",
  "kind": "lemma",
  "lexical_name": "hasFPowerSeries_cuspFunction",
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
  "slug": "hasfpowerseries-cuspfunction--1c0c5f5a02c9af9307755624",
  "source": {
    "blob": "0a5a19f40b768a39f9aa6cf3a51b18122a9eac72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 161,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/QExpansion/Variantfda8ce4e7905f393d5d245428f9cb875c405c5c24b0ae2b5a5f1b23cf0cf6ba1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c0c5f5a02c9af930775562417164c36bf4bd84a0c3a7599a402e31a7dee5587",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/QExpansion/Variantfda8ce4e7905f393d5d245428f9cb875c405c5c24b0ae2b5a5f1b23cf0cf6ba1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cffbdff8-7cc3-02c3-8b83-f6f7b6145a34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasFPowerSeries_cuspFunction [NeZero n] [ModularFormClass F Γ(n) k] :
    HasFPowerSeriesOnBall (cuspFunction n f) (qExpansionFormalMultilinearSeries n f) 0 1 := by
  refine ⟨qExpansionFormalMultilinearSeries_radius n f, zero_lt_one, fun hy ↦ ?_⟩
  rw [EMetric.mem_ball, edist_zero_right, enorm_eq_nnnorm, ENNReal.coe_lt_one_iff,
    ← NNReal.coe_lt_one, coe_nnnorm] at hy
  simpa [qExpansionFormalMultilinearSeries] using hasSum_qExpansion_of_abs_lt n f hy

end ModularFormClass

open ModularFormClass

namespace CuspFormClass

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/QExpansion/Variantfda8ce4e7905f393d5d245428f9cb875c405c5c24b0ae2b5a5f1b23cf0cf6ba1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/QExpansion/Variantfda8ce4e7905f393d5d245428f9cb875c405c5c24b0ae2b5a5f1b23cf0cf6ba1.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a5a19f40b768a39f9aa6cf3a51b18122a9eac72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
