# k_residue_heat_nonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7df30316b31c2fcd970a2ded7014546e0b374be9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 8,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f9b19543bd6586c1a40f2897900bec79a0eba61bb0f27c5c2bf9010ecc774733.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b986f198-9566-6684-47ca-a179aeb88e35",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b174c023-3142-7685-f594-49a53c2bb592",
  "kind": "theorem",
  "lexical_name": "k_residue_heat_nonnegative",
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
  "slug": "k-residue-heat-nonnegative--cfc0374fadf9a8d6238a1bfa",
  "source": {
    "blob": "7df30316b31c2fcd970a2ded7014546e0b374be9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 16,
    "line": 8,
    "path": "GRWTSK/Topology/MetricTopology/K128Transport/Variantf9b19543bd6586c1a40f2897900bec79a0eba61bb0f27c5c2bf9010ecc774733.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfc0374fadf9a8d6238a1bfa1a1af664f6d7dfa778efe5ca3c92bb0f5e30aea2",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/K128Transport/Variantf9b19543bd6586c1a40f2897900bec79a0eba61bb0f27c5c2bf9010ecc774733.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b174c023-3142-7685-f594-49a53c2bb592`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 8–16.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem k_residue_heat_nonnegative
  (eps dist : ℝ) :
  0 ≤ KResidueHeat128 eps dist := by
  unfold KResidueHeat128
  split
  · decide
  · exact Rat.not_lt.mp ‹¬dist - eps < 0›

end Think.Kakeya.Crystalline
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/K128Transport/Variantf9b19543bd6586c1a40f2897900bec79a0eba61bb0f27c5c2bf9010ecc774733.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/K128Transport/Variantf9b19543bd6586c1a40f2897900bec79a0eba61bb0f27c5c2bf9010ecc774733.lean#L8).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7df30316b31c2fcd970a2ded7014546e0b374be9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
