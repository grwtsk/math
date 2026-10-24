# autEmbedding_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0894b48571e413247e1e9d8c0a8f51d1def46940",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/db6bf75c2dd445fc72114037ea2aa9cda354bec8631310b7d1b501d0d99c0446.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3400ae42-9c9a-4616-b078-b36ca85a7a80",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eaf4760c-77e1-f888-20c2-35e2c82e348f",
  "kind": "lemma",
  "lexical_name": "autEmbedding_range",
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
  "slug": "autembedding-range--a945a0206a5a1767b7643cd2",
  "source": {
    "blob": "0894b48571e413247e1e9d8c0a8f51d1def46940",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 70,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variantdb6bf75c2dd445fc72114037ea2aa9cda354bec8631310b7d1b501d0d99c0446.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a945a0206a5a1767b7643cd2046d6c1a34c21ce047b5228b7a4d20f9f94e600c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variantdb6bf75c2dd445fc72114037ea2aa9cda354bec8631310b7d1b501d0d99c0446.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eaf4760c-77e1-f888-20c2-35e2c82e348f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma autEmbedding_range :
    Set.range (autEmbedding F) =
      ⋂ (f : Arrow C), { a | F.map f.hom ≫ (a f.right).hom = (a f.left).hom ≫ F.map f.hom } := by
  ext a
  simp only [Set.mem_range, id_obj, Set.mem_iInter, Set.mem_setOf_eq]
  refine ⟨fun ⟨σ, h⟩ i ↦ h.symm ▸ σ.hom.naturality i.hom, fun h ↦ ?_⟩
  · use NatIso.ofComponents a (fun {X Y} f ↦ h ⟨X, Y, f⟩)
    rfl

/-- The image of `Aut F` in `∀ X, Aut (F.obj X)` is closed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variantdb6bf75c2dd445fc72114037ea2aa9cda354bec8631310b7d1b501d0d99c0446.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variantdb6bf75c2dd445fc72114037ea2aa9cda354bec8631310b7d1b501d0d99c0446.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0894b48571e413247e1e9d8c0a8f51d1def46940` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
