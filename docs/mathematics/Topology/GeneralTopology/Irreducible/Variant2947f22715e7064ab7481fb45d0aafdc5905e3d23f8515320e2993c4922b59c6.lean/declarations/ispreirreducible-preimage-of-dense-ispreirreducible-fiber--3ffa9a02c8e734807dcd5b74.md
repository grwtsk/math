# IsPreirreducible.preimage_of_dense_isPreirreducible_fiber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a04a9d2ee81a1b2496e17675a035a0ec021b2f8c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 339,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:171ed76f-e060-ac37-9d4b-901bd2ebb810",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db232b59-40ce-b990-4f8a-38080af689fb",
  "kind": "lemma",
  "lexical_name": "IsPreirreducible.preimage_of_dense_isPreirreducible_fiber",
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
  "slug": "ispreirreducible-preimage-of-dense-ispreirreducible-fiber--3ffa9a02c8e734807dcd5b74",
  "source": {
    "blob": "a04a9d2ee81a1b2496e17675a035a0ec021b2f8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 350,
    "line": 339,
    "path": "GRWTSK/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ffa9a02c8e734807dcd5b74c530b7b5227c1e7aa3059567f4aa1200b3f5d4ce",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db232b59-40ce-b990-4f8a-38080af689fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsPreirreducible.preimage_of_dense_isPreirreducible_fiber
    {V : Set Y} (hV : IsPreirreducible V) (f : X → Y) (hf' : IsOpenMap f)
    (hf'' : V ⊆ closure (V ∩ { x | IsPreirreducible (f ⁻¹' {x}) })) :
    IsPreirreducible (f ⁻¹' V) := by
  rintro U₁ U₂ hU₁ hU₂ ⟨x, hxV, hxU₁⟩ ⟨y, hyV, hyU₂⟩
  obtain ⟨z, hzV, hz₁, hz₂⟩ :=
    hV _ _ (hf' _ hU₁) (hf' _ hU₂) ⟨f x, hxV, x, hxU₁, rfl⟩ ⟨f y, hyV, y, hyU₂, rfl⟩
  obtain ⟨z, ⟨⟨z₁, hz₁, e₁⟩, ⟨z₂, hz₂, e₂⟩⟩, hzV, hz⟩ :=
    mem_closure_iff.mp (hf'' hzV) _ ((hf' _ hU₁).inter (hf' _ hU₂)) ⟨hz₁, hz₂⟩
  obtain ⟨z₃, hz₃, hz₃'⟩ := hz _ _ hU₁ hU₂ ⟨z₁, e₁, hz₁⟩ ⟨z₂, e₂, hz₂⟩
  refine ⟨z₃, show f z₃ ∈ _ from (show f z₃ = z from hz₃) ▸ hzV, hz₃'⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a04a9d2ee81a1b2496e17675a035a0ec021b2f8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
