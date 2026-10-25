# Injective.nonempty_apply_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "40ab92de2d60b6a367c88356d9ecd7531ca3d8f4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2770,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/12c8616f65c35ae8354461a0f493642652f491da8f17b440cebebc52ac469e25.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a2e4ae12-c366-b914-edca-a2a10ecb8244",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:192c6aee-5093-f4fa-543c-39b205a1479e",
  "kind": "theorem",
  "lexical_name": "Injective.nonempty_apply_iff",
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
  "slug": "injective-nonempty-apply-iff--1cbed0d8a78bd8818fb38482",
  "source": {
    "blob": "40ab92de2d60b6a367c88356d9ecd7531ca3d8f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2788,
    "line": 2770,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant12c8616f65c35ae8354461a0f493642652f491da8f17b440cebebc52ac469e25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1cbed0d8a78bd8818fb3848279e6e162f30e2738ef4ae724f99cc47c8a483788",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant12c8616f65c35ae8354461a0f493642652f491da8f17b440cebebc52ac469e25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:192c6aee-5093-f4fa-543c-39b205a1479e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2770–2788.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Injective.nonempty_apply_iff {f : Set α → Set β} (hf : Injective f) (h2 : f ∅ = ∅)
    {s : Set α} : (f s).Nonempty ↔ s.Nonempty := by
  rw [nonempty_iff_ne_empty, ← h2, nonempty_iff_ne_empty, hf.ne_iff]
#align function.injective.nonempty_apply_iff Function.Injective.nonempty_apply_iff

end Function

open Function

namespace Set

/-! ### Lemmas about `inclusion`, the injection of subtypes induced by `⊆` -/


section Inclusion

variable {α : Type*} {s t u : Set α}

/-- `inclusion` is the "identity" function between two subsets `s` and `t`, where `s ⊆ t` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant12c8616f65c35ae8354461a0f493642652f491da8f17b440cebebc52ac469e25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant12c8616f65c35ae8354461a0f493642652f491da8f17b440cebebc52ac469e25.lean#L2770).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40ab92de2d60b6a367c88356d9ecd7531ca3d8f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
