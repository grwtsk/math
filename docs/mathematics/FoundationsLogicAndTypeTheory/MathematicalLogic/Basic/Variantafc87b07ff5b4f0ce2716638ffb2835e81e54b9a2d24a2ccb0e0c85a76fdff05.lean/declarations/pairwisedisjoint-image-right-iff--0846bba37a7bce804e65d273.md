# pairwiseDisjoint_image_right_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9fb1aaa7bd41d8b4a1b3faeae6b0534f29432664",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 392,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/afc87b07ff5b4f0ce2716638ffb2835e81e54b9a2d24a2ccb0e0c85a76fdff05.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:005cf2da-e675-a1eb-034c-a0cae77cf2c8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0b4a9a70-0482-fe05-b803-0a910c07e337",
  "kind": "theorem",
  "lexical_name": "pairwiseDisjoint_image_right_iff",
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
  "slug": "pairwisedisjoint-image-right-iff--0846bba37a7bce804e65d273",
  "source": {
    "blob": "9fb1aaa7bd41d8b4a1b3faeae6b0534f29432664",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 405,
    "line": 392,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantafc87b07ff5b4f0ce2716638ffb2835e81e54b9a2d24a2ccb0e0c85a76fdff05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0846bba37a7bce804e65d273c484fdf866373e2aa8cf56d7ec5cfbe2f1283dd9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantafc87b07ff5b4f0ce2716638ffb2835e81e54b9a2d24a2ccb0e0c85a76fdff05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b4a9a70-0482-fe05-b803-0a910c07e337`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 392–405.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairwiseDisjoint_image_right_iff {f : α → β → γ} {s : Set α} {t : Set β}
    (hf : ∀ a ∈ s, Injective (f a)) :
    (s.PairwiseDisjoint fun a => f a '' t) ↔ (s ×ˢ t).InjOn fun p => f p.1 p.2 := by
  refine ⟨fun hs x hx y hy (h : f _ _ = _) => ?_, fun hs x hx y hy h => ?_⟩
  · suffices x.1 = y.1 by exact Prod.ext this (hf _ hx.1 <| h.trans <| by rw [this])
    refine hs.elim hx.1 hy.1 (not_disjoint_iff.2 ⟨_, mem_image_of_mem _ hx.2, ?_⟩)
    rw [h]
    exact mem_image_of_mem _ hy.2
  · refine disjoint_iff_inf_le.mpr ?_
    rintro _ ⟨⟨a, ha, hab⟩, b, hb, rfl⟩
    exact h (congr_arg Prod.fst <| hs (mk_mem_prod hx ha) (mk_mem_prod hy hb) hab)

/-- The partial images of a binary function `f` whose partial evaluations are injective are pairwise
disjoint iff `f` is injective . -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantafc87b07ff5b4f0ce2716638ffb2835e81e54b9a2d24a2ccb0e0c85a76fdff05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantafc87b07ff5b4f0ce2716638ffb2835e81e54b9a2d24a2ccb0e0c85a76fdff05.lean#L392).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fb1aaa7bd41d8b4a1b3faeae6b0534f29432664` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
