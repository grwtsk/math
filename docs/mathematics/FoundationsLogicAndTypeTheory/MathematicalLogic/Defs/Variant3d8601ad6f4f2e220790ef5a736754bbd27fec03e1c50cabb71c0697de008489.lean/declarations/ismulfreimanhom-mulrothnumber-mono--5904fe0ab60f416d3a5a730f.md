# IsMulFreimanHom.mulRothNumber_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "90f54a67c2dc9bff1eaa1aae5bbbb9cd62a12a91",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 339,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3d8601ad6f4f2e220790ef5a736754bbd27fec03e1c50cabb71c0697de008489.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b8673c12-fcc0-6c4f-1d4c-b88d2b100326",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:380f3b2e-8a78-c8bd-6bf1-307fb5f0e79b",
  "kind": "lemma",
  "lexical_name": "IsMulFreimanHom.mulRothNumber_mono",
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
  "slug": "ismulfreimanhom-mulrothnumber-mono--5904fe0ab60f416d3a5a730f",
  "source": {
    "blob": "90f54a67c2dc9bff1eaa1aae5bbbb9cd62a12a91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 351,
    "line": 339,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3d8601ad6f4f2e220790ef5a736754bbd27fec03e1c50cabb71c0697de008489.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5904fe0ab60f416d3a5a730fc98955f430f3f4998971dd85f4058c681054e0f0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3d8601ad6f4f2e220790ef5a736754bbd27fec03e1c50cabb71c0697de008489.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:380f3b2e-8a78-c8bd-6bf1-307fb5f0e79b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–351.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsMulFreimanHom.mulRothNumber_mono (hf : IsMulFreimanHom 2 A B f) (hf' : Set.BijOn f A B) :
    mulRothNumber B ≤ mulRothNumber A := by
  obtain ⟨s, hsB, hcard, hs⟩ := mulRothNumber_spec B
  have hsA : invFunOn f A '' s ⊆ A :=
    (hf'.surjOn.mapsTo_invFunOn.mono (coe_subset.2 hsB) Subset.rfl).image_subset
  have hfsA : Set.SurjOn f A s := hf'.surjOn.mono Subset.rfl (coe_subset.2 hsB)
  rw [← hcard, ← s.card_image_of_injOn ((invFunOn_injOn_image f _).mono hfsA)]
  refine ThreeGPFree.le_mulRothNumber ?_ (mod_cast hsA)
  rw [coe_image]
  simpa using (hf.subset hsA hfsA.bijOn_subset.mapsTo).threeGPFree (hf'.injOn.mono hsA) hs

/-- Arithmetic progressions are preserved under 2-Freiman isos. -/
@[to_additive /-- Arithmetic progressions are preserved under 2-Freiman isos. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3d8601ad6f4f2e220790ef5a736754bbd27fec03e1c50cabb71c0697de008489.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3d8601ad6f4f2e220790ef5a736754bbd27fec03e1c50cabb71c0697de008489.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90f54a67c2dc9bff1eaa1aae5bbbb9cd62a12a91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
