# Bornology.IsBounded.exists_pos_norm_lt'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2454c3d0987990656baee756b72fe22a1bb081dc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0e/0e2607968eeebd2b741937c4a21ccd85b4df4061f82cb165456af4fd77d0127a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3c649bb1-32c5-0695-4e09-62b003b17821",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6e80e407-67e7-7dd8-2fbb-09c180fdb7d4",
  "kind": "lemma",
  "lexical_name": "Bornology.IsBounded.exists_pos_norm_lt'",
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
  "slug": "bornology-isbounded-exists-pos-norm-lt--e87840f4647a3743ea02860e",
  "source": {
    "blob": "2454c3d0987990656baee756b72fe22a1bb081dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 83,
    "path": "GRWTSK/Topology/GeneralTopology/Bounded/Variant0e2607968eeebd2b741937c4a21ccd85b4df4061f82cb165456af4fd77d0127a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e87840f4647a3743ea02860e8370c6824530cd5970149c5cab454805f57d6570",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bounded/Variant0e2607968eeebd2b741937c4a21ccd85b4df4061f82cb165456af4fd77d0127a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e80e407-67e7-7dd8-2fbb-09c180fdb7d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Bornology.IsBounded.exists_pos_norm_lt' (hs : IsBounded s) : ∃ R > 0, ∀ x ∈ s, ‖x‖ < R :=
  let ⟨R, hR₀, hR⟩ := hs.exists_pos_norm_le'
  ⟨R + 1, by positivity, fun x hx ↦ (hR x hx).trans_lt (lt_add_one _)⟩

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bounded/Variant0e2607968eeebd2b741937c4a21ccd85b4df4061f82cb165456af4fd77d0127a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bounded/Variant0e2607968eeebd2b741937c4a21ccd85b4df4061f82cb165456af4fd77d0127a.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2454c3d0987990656baee756b72fe22a1bb081dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
