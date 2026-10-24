# existsUnique_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e58882feaf72ad0f238ef9c48f090eb4e4e66626",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 140,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1edd67d9d5fad1bfc4de80440e1bb8d4667d51797536b1c8479315af2e3aa049.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7b7f37d0-c94e-33c8-8840-c561e10dc9b4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:064ea074-113e-0060-4638-e057cc0216ea",
  "kind": "lemma",
  "lexical_name": "existsUnique_of_le",
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
  "slug": "existsunique-of-le--c8630797c75948bdef394fe2",
  "source": {
    "blob": "e58882feaf72ad0f238ef9c48f090eb4e4e66626",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 140,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Nonsingular/Variant1edd67d9d5fad1bfc4de80440e1bb8d4667d51797536b1c8479315af2e3aa049.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8630797c75948bdef394fe2a6e40dae59fbdaac785b0dcafe8bc7236ab73bed",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Nonsingular/Variant1edd67d9d5fad1bfc4de80440e1bb8d4667d51797536b1c8479315af2e3aa049.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:064ea074-113e-0060-4638-e057cc0216ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma existsUnique_of_le :
    ∃! (f : ⦋x.dim⦌ ⟶ ⦋y.dim⦌), Mono f ∧ X.map f.op y.1.2 = x.1.2 :=
  existsUnique_of_exists_of_unique (by
    obtain ⟨f, _, hf⟩ := le_iff_exists_mono.1 h
    exact ⟨f, inferInstance, hf⟩) (fun f₁ f₂ ⟨_, hf₁⟩ ⟨_, hf₂⟩ ↦ by
    exact Nonsingular.injective_map _ y.nonDegenerate (by rw [hf₁, hf₂]))

/-- Given an inequality `x ≤ y` between nondegenerate simplices of a
nonsingular simplicial set `X`, this is the corresponding morphism
`⦋x.dim⦌ ⟶ ⦋y.dim⦌` in the simplex category. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Nonsingular/Variant1edd67d9d5fad1bfc4de80440e1bb8d4667d51797536b1c8479315af2e3aa049.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Nonsingular/Variant1edd67d9d5fad1bfc4de80440e1bb8d4667d51797536b1c8479315af2e3aa049.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e58882feaf72ad0f238ef9c48f090eb4e4e66626` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
