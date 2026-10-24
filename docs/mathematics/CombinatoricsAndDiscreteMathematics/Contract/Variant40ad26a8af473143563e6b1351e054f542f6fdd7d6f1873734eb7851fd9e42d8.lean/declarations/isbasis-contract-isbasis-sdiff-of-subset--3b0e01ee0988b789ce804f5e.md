# IsBasis'.contract_isBasis'_sdiff_of_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:098e8650-fc8c-7929-eade-12f8d3407836",
  "kind": "lemma",
  "lexical_name": "IsBasis'.contract_isBasis'_sdiff_of_subset",
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
  "slug": "isbasis-contract-isbasis-sdiff-of-subset--3b0e01ee0988b789ce804f5e",
  "source": {
    "blob": "5cf243172922d9312efb2df3db6e4286acb35f8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 217,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Contract/Variant40ad26a8af473143563e6b1351e054f542f6fdd7d6f1873734eb7851fd9e42d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b0e01ee0988b789ce804f5e14035658059b39d32fc7d0a0a799d1bb91cae584",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Contract/Variant40ad26a8af473143563e6b1351e054f542f6fdd7d6f1873734eb7851fd9e42d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:098e8650-fc8c-7929-eade-12f8d3407836`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsBasis'.contract_isBasis'_sdiff_of_subset (hIX : M.IsBasis' I X) (hJI : J ⊆ I) :
    (M ／ J).IsBasis' (I \ J) X := by
  simpa [isBasis'_iff_isBasis_inter_ground, inter_sdiff_assoc, ← sdiff_inter_distrib_right] using
    (hIX.contract_isBasis'_sdiff_sdiff_of_subset hJI).isBasis_inter_ground

@[deprecated (since := "2026-06-03")]
alias IsBasis'.contract_isBasis'_diff_of_subset := IsBasis'.contract_isBasis'_sdiff_of_subset

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Contract/Variant40ad26a8af473143563e6b1351e054f542f6fdd7d6f1873734eb7851fd9e42d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Contract/Variant40ad26a8af473143563e6b1351e054f542f6fdd7d6f1873734eb7851fd9e42d8.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cf243172922d9312efb2df3db6e4286acb35f8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
