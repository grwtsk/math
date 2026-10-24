# no_smaller_solutions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5222d280a93717b0f7340f50c3261afb25262f58",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 112,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/91/91f0618d12f4e531ddc19c750dc9060b4117d7c5e9ff4d46cc38fb5b6d05ab51.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bd4547b3-b1ac-c76b-2065-b96d79e54512",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fbba14fc-c1c0-5e07-ece9-f129a65f65cf",
  "kind": "lemma",
  "lexical_name": "no_smaller_solutions",
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
  "slug": "no-smaller-solutions--c8d44a58fa0777f7d8e4ca22",
  "source": {
    "blob": "5222d280a93717b0f7340f50c3261afb25262f58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 112,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant91f0618d12f4e531ddc19c750dc9060b4117d7c5e9ff4d46cc38fb5b6d05ab51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8d44a58fa0777f7d8e4ca223610f1ecca6dda97237ac5af22a9332a6e544c67",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant91f0618d12f4e531ddc19c750dc9060b4117d7c5e9ff4d46cc38fb5b6d05ab51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fbba14fc-c1c0-5e07-ece9-f129a65f65cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma no_smaller_solutions (n : ℕ) (hn : ProblemPredicate n) : n ≥ 153846 := by
  have ⟨c, hcn⟩ := without_digits hn
  cases lt_or_ge (digits 10 c).length 6 with
  | inl =>
    interval_cases hc : (digits 10 c).length
    · exfalso; exact case_0_digits hc hcn
    · exfalso; exact case_1_digits hc hcn
    · exfalso; exact case_2_digits hc hcn
    · exfalso; exact case_3_digits hc hcn
    · exfalso; exact case_4_digits hc hcn
    · exact (case_5_digits hc hcn ▸ hcn.left).ge
  | inr hge => exact case_more_digits hge hcn

end Imo1962Q1

open Imo1962Q1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant91f0618d12f4e531ddc19c750dc9060b4117d7c5e9ff4d46cc38fb5b6d05ab51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant91f0618d12f4e531ddc19c750dc9060b4117d7c5e9ff4d46cc38fb5b6d05ab51.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5222d280a93717b0f7340f50c3261afb25262f58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
