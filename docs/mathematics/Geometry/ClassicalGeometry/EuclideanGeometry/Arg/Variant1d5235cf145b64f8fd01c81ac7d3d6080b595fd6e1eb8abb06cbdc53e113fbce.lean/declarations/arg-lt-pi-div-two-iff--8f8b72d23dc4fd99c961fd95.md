# arg_lt_pi_div_two_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3e35b6ce3ab150f4780e01b844751c642f0791e2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 384,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1d/1d5235cf145b64f8fd01c81ac7d3d6080b595fd6e1eb8abb06cbdc53e113fbce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c4221ecd-4fdf-06a0-4b2b-f85e6bfec018",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9641f93b-76bf-0a14-6af9-a74d14aa01a3",
  "kind": "lemma",
  "lexical_name": "arg_lt_pi_div_two_iff",
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
  "slug": "arg-lt-pi-div-two-iff--8f8b72d23dc4fd99c961fd95",
  "source": {
    "blob": "3e35b6ce3ab150f4780e01b844751c642f0791e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 384,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant1d5235cf145b64f8fd01c81ac7d3d6080b595fd6e1eb8abb06cbdc53e113fbce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f8b72d23dc4fd99c961fd95fa9f9c45e849bc719fbbbcc0f5f3b0b71088b484",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant1d5235cf145b64f8fd01c81ac7d3d6080b595fd6e1eb8abb06cbdc53e113fbce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9641f93b-76bf-0a14-6af9-a74d14aa01a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma arg_lt_pi_div_two_iff {z : ℂ} : arg z < π / 2 ↔ 0 < re z ∨ im z < 0 ∨ z = 0 := by
  rw [lt_iff_le_and_ne, arg_le_pi_div_two_iff, Ne, arg_eq_pi_div_two_iff]
  rcases lt_trichotomy z.re 0 with hre | hre | hre
  · have : z ≠ 0 := by simp [Complex.ext_iff, hre.ne]
    simp [hre.ne, hre.not_ge, hre.not_gt, this]
  · have : z = 0 ↔ z.im = 0 := by simp [Complex.ext_iff, hre]
    simp [hre, this, or_comm, le_iff_eq_or_lt]
  · simp [hre, hre.le, hre.ne']

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant1d5235cf145b64f8fd01c81ac7d3d6080b595fd6e1eb8abb06cbdc53e113fbce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant1d5235cf145b64f8fd01c81ac7d3d6080b595fd6e1eb8abb06cbdc53e113fbce.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e35b6ce3ab150f4780e01b844751c642f0791e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
