# monodromy_successor_mem_of_normal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f0ef87f8ce62f0adb1e6b97d3ee99a1ef632c3d2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 305,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/ab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:59053164-89e5-dcb6-50da-963683e7558e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:07028164-45c4-4d49-c1e0-b72a00d9e5cb",
  "kind": "theorem",
  "lexical_name": "monodromy_successor_mem_of_normal",
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
  "slug": "monodromy-successor-mem-of-normal--250b3b1973d0a0d3b970df88",
  "source": {
    "blob": "f0ef87f8ce62f0adb1e6b97d3ee99a1ef632c3d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 305,
    "path": "GRWTSK/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:250b3b1973d0a0d3b970df88a0f310290f1862fae40607ebdd611edce3addaec",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07028164-45c4-4d49-c1e0-b72a00d9e5cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem monodromy_successor_mem_of_normal (system : StepSystem h)
    (G : Subgroup (Fiber3 ≃ₗ[ℝ] Fiber3)) [G.Normal] (p : CoverPhase h)
    (hmonodromy : monodromy system p ∈ G) :
    monodromy system (successor h p) ∈ G := by
  apply monodromy_successor_mem_of_mem_normalizer system G p hmonodromy
  rw [Subgroup.normalizer_eq_top G]
  exact Subgroup.mem_top _

/-- A fiber closes after one circuit exactly when monodromy fixes it. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0ef87f8ce62f0adb1e6b97d3ee99a1ef632c3d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
