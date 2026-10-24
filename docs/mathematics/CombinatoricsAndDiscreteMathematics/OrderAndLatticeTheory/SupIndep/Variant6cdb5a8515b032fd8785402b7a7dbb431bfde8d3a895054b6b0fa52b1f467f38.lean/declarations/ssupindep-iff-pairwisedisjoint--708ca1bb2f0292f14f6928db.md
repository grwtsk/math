# sSupIndep_iff_pairwiseDisjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d2ccc134437fcca8b4feaf484e6937a68e85d041",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 521,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6cdb5a8515b032fd8785402b7a7dbb431bfde8d3a895054b6b0fa52b1f467f38.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8786c0f7-4166-8084-2711-39d7b7e08f93",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ed88e606-d4f9-0f82-166f-f7f42b83dd23",
  "kind": "theorem",
  "lexical_name": "sSupIndep_iff_pairwiseDisjoint",
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
  "slug": "ssupindep-iff-pairwisedisjoint--708ca1bb2f0292f14f6928db",
  "source": {
    "blob": "d2ccc134437fcca8b4feaf484e6937a68e85d041",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 530,
    "line": 521,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SupIndep/Variant6cdb5a8515b032fd8785402b7a7dbb431bfde8d3a895054b6b0fa52b1f467f38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:708ca1bb2f0292f14f6928db9bc673ef411690bfca1b26af9b606ec67198a7af",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SupIndep/Variant6cdb5a8515b032fd8785402b7a7dbb431bfde8d3a895054b6b0fa52b1f467f38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed88e606-d4f9-0f82-166f-f7f42b83dd23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 521–530.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sSupIndep_iff_pairwiseDisjoint {s : Set α} : sSupIndep s ↔ s.PairwiseDisjoint id :=
  ⟨sSupIndep.pairwiseDisjoint, fun hs _ hi =>
    disjoint_sSup_iff.2 fun _ hj => hs hi hj.1 <| Ne.symm hj.2⟩

@[deprecated (since := "2024-11-24")]
alias setIndependent_iff_pairwiseDisjoint := sSupIndep_iff_pairwiseDisjoint

alias ⟨_, _root_.Set.PairwiseDisjoint.sSupIndep⟩ := sSupIndep_iff_pairwiseDisjoint

open scoped Function in -- required for scoped `on` notation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SupIndep/Variant6cdb5a8515b032fd8785402b7a7dbb431bfde8d3a895054b6b0fa52b1f467f38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SupIndep/Variant6cdb5a8515b032fd8785402b7a7dbb431bfde8d3a895054b6b0fa52b1f467f38.lean#L521).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2ccc134437fcca8b4feaf484e6937a68e85d041` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
