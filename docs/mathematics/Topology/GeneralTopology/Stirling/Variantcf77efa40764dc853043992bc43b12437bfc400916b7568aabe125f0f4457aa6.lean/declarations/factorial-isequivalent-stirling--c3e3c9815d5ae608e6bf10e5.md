# factorial_isEquivalent_stirling

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f9f23b701269fb0b377e0695f952e7e55f7aac81",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 234,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cf77efa40764dc853043992bc43b12437bfc400916b7568aabe125f0f4457aa6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b7b66157-56b4-eab6-aca2-3616e3868be7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:37f51f48-2003-0a54-dd37-4a5ef3b4384e",
  "kind": "lemma",
  "lexical_name": "factorial_isEquivalent_stirling",
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
  "slug": "factorial-isequivalent-stirling--c3e3c9815d5ae608e6bf10e5",
  "source": {
    "blob": "f9f23b701269fb0b377e0695f952e7e55f7aac81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 234,
    "path": "GRWTSK/Topology/GeneralTopology/Stirling/Variantcf77efa40764dc853043992bc43b12437bfc400916b7568aabe125f0f4457aa6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3e3c9815d5ae608e6bf10e5dbfa887f7cf5fff55c4848cd0f12e59b77fc1390",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Stirling/Variantcf77efa40764dc853043992bc43b12437bfc400916b7568aabe125f0f4457aa6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37f51f48-2003-0a54-dd37-4a5ef3b4384e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma factorial_isEquivalent_stirling :
    (fun n ↦ n ! : ℕ → ℝ) ~[atTop] fun n ↦ Real.sqrt (2 * n * π) * (n / exp 1) ^ n := by
  refine Asymptotics.isEquivalent_of_tendsto_one ?_ ?_
  · filter_upwards [eventually_ne_atTop 0] with n hn h
    exact absurd h (by positivity)
  · have : sqrt π ≠ 0 := by positivity
    nth_rewrite 2 [← div_self this]
    convert tendsto_stirlingSeq_sqrt_pi.div tendsto_const_nhds this using 1
    ext n
    field_simp [stirlingSeq, mul_right_comm]

end Stirling
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Stirling/Variantcf77efa40764dc853043992bc43b12437bfc400916b7568aabe125f0f4457aa6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Stirling/Variantcf77efa40764dc853043992bc43b12437bfc400916b7568aabe125f0f4457aa6.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9f23b701269fb0b377e0695f952e7e55f7aac81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
