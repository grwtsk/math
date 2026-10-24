# pwFilter_sublist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f4127590d32d7e175d2235600f401a801d5959bd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 388,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bedaacb3-6062-65dc-363d-e1c53246744f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:01303716-ebc9-1cd4-f5ed-ed499bbb292d",
  "kind": "theorem",
  "lexical_name": "pwFilter_sublist",
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
  "slug": "pwfilter-sublist--192d0aeedc9623e8d4b4602a",
  "source": {
    "blob": "f4127590d32d7e175d2235600f401a801d5959bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 397,
    "line": 388,
    "path": "GRWTSK/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:192d0aeedc9623e8d4b4602a33c722ab55f945f6fc672629fb42dda12fb8ba81",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01303716-ebc9-1cd4-f5ed-ed499bbb292d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–397.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pwFilter_sublist : ∀ l : List α, pwFilter R l <+ l
  | [] => nil_sublist _
  | x :: l => by
    by_cases h : ∀ y ∈ pwFilter R l, R x y
    · rw [pwFilter_cons_of_pos h]
      exact (pwFilter_sublist l).cons_cons _
    · rw [pwFilter_cons_of_neg h]
      exact sublist_cons_of_sublist _ (pwFilter_sublist l)
#align list.pw_filter_sublist List.pwFilter_sublist

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4127590d32d7e175d2235600f401a801d5959bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
