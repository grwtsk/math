# IsCorner.image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "327af7bb763c0bc160aa31f490758333de7e31a6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8e/8ea2e1a0d47f658aa7dc02ed72e52a5804f5fd6bf577f0014bf6c8337b94277e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bb28c907-16d9-ea1c-3b2d-9bd77a3cda33",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:947aadb0-a8c8-a89a-7463-58b9890940dd",
  "kind": "lemma",
  "lexical_name": "IsCorner.image",
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
  "slug": "iscorner-image--3efeb34166abbae11826503c",
  "source": {
    "blob": "327af7bb763c0bc160aa31f490758333de7e31a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 71,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8ea2e1a0d47f658aa7dc02ed72e52a5804f5fd6bf577f0014bf6c8337b94277e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3efeb34166abbae11826503c95762e75703dbd34014ee604fec8414ddf49ef99",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8ea2e1a0d47f658aa7dc02ed72e52a5804f5fd6bf577f0014bf6c8337b94277e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:947aadb0-a8c8-a89a-7463-58b9890940dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsCorner.image (hf : IsAddFreimanHom 2 s t f) (hAs : (A : Set (G × G)) ⊆ s ×ˢ s)
    (hA : IsCorner A x₁ y₁ x₂ y₂) : IsCorner (Prod.map f f '' A) (f x₁) (f y₁) (f x₂) (f y₂) := by
  obtain ⟨hx₁y₁, hx₁y₂, hx₂y₁, hxy⟩ := hA
  exact ⟨mem_image_of_mem _ hx₁y₁, mem_image_of_mem _ hx₁y₂, mem_image_of_mem _ hx₂y₁,
    hf.add_eq_add (hAs hx₁y₁).1 (hAs hx₁y₂).2 (hAs hx₂y₁).1 (hAs hx₁y₁).2 hxy⟩

/-- Corners are preserved under `2`-Freiman homomorphisms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8ea2e1a0d47f658aa7dc02ed72e52a5804f5fd6bf577f0014bf6c8337b94277e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8ea2e1a0d47f658aa7dc02ed72e52a5804f5fd6bf577f0014bf6c8337b94277e.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `327af7bb763c0bc160aa31f490758333de7e31a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
