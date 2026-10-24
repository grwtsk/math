# ofJ_j

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "13eeae718fcd47f29c5d00bebee176a8cc5d94f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 183,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/91/91e38c9ef7469478188b9db5bdf60b66e288541575b84caf9f539b87a0e9ab96.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cd8ccc19-76e4-6e73-06d3-5111b73ee51d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3db16a1c-5d56-f94a-5330-47eb77e46f00",
  "kind": "lemma",
  "lexical_name": "ofJ_j",
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
  "slug": "ofj-j--9e841b53eaba500c6e9aefab",
  "source": {
    "blob": "13eeae718fcd47f29c5d00bebee176a8cc5d94f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 183,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/ModelsWithJ/Variant91e38c9ef7469478188b9db5bdf60b66e288541575b84caf9f539b87a0e9ab96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e841b53eaba500c6e9aefab71c669de4e3222f5b1b15c055f53bc9ae4030c9d",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/ModelsWithJ/Variant91e38c9ef7469478188b9db5bdf60b66e288541575b84caf9f539b87a0e9ab96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3db16a1c-5d56-f94a-5330-47eb77e46f00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ofJ_j : (ofJ j).j = j := by
  by_cases h0 : j = 0
  · by_cases h3 : (3 : F) = 0
    · have : Fact <| IsUnit (2 : F) := ⟨.of_mul_eq_one 2 <| by linear_combination h3⟩
      simp_rw [h0, ofJ_0_of_three_eq_zero h3, ofJ1728_j]
      linear_combination 576 * h3
    · have := Fact.mk (Ne.isUnit h3)
      simp_rw [h0, ofJ_0_of_three_ne_zero h3, ofJ0_j]
  · by_cases h1728 : j = 1728
    · have h2 : (2 : F) ≠ 0 := fun h ↦ h0 (by linear_combination h1728 + 864 * h)
      have := Fact.mk h2.isUnit
      simp_rw [h1728, ofJ_1728_of_two_ne_zero h2, ofJ1728_j]
    · have := Fact.mk (Ne.isUnit h0)
      have := Fact.mk (sub_ne_zero.2 h1728).isUnit
      simp_rw [ofJ_ne_0_ne_1728 j h0 h1728, ofJNe0Or1728_j]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/ModelsWithJ/Variant91e38c9ef7469478188b9db5bdf60b66e288541575b84caf9f539b87a0e9ab96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/ModelsWithJ/Variant91e38c9ef7469478188b9db5bdf60b66e288541575b84caf9f539b87a0e9ab96.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13eeae718fcd47f29c5d00bebee176a8cc5d94f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
