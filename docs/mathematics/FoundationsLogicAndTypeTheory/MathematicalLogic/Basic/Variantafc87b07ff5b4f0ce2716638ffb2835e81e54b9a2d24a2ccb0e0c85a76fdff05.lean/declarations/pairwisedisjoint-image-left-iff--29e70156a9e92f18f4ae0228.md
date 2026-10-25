# pairwiseDisjoint_image_left_iff

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
      "line": 406,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/afc87b07ff5b4f0ce2716638ffb2835e81e54b9a2d24a2ccb0e0c85a76fdff05.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:19ba4774-2ed3-8b8c-0cc5-00772490f6cd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0cba766a-0a19-e054-3d1e-1609899b15c2",
  "kind": "theorem",
  "lexical_name": "pairwiseDisjoint_image_left_iff",
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
  "slug": "pairwisedisjoint-image-left-iff--29e70156a9e92f18f4ae0228",
  "source": {
    "blob": "9fb1aaa7bd41d8b4a1b3faeae6b0534f29432664",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 417,
    "line": 406,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantafc87b07ff5b4f0ce2716638ffb2835e81e54b9a2d24a2ccb0e0c85a76fdff05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29e70156a9e92f18f4ae022863ddcb8c47ba5fad4ecf95c795b7b8d73ecd635b",
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

Occurrence: `result:0cba766a-0a19-e054-3d1e-1609899b15c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 406–417.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairwiseDisjoint_image_left_iff {f : α → β → γ} {s : Set α} {t : Set β}
    (hf : ∀ b ∈ t, Injective fun a => f a b) :
    (t.PairwiseDisjoint fun b => (fun a => f a b) '' s) ↔ (s ×ˢ t).InjOn fun p => f p.1 p.2 := by
  refine ⟨fun ht x hx y hy (h : f _ _ = _) => ?_, fun ht x hx y hy h => ?_⟩
  · suffices x.2 = y.2 by exact Prod.ext (hf _ hx.2 <| h.trans <| by rw [this]) this
    refine ht.elim hx.2 hy.2 (not_disjoint_iff.2 ⟨_, mem_image_of_mem _ hx.1, ?_⟩)
    rw [h]
    exact mem_image_of_mem _ hy.1
  · refine disjoint_iff_inf_le.mpr ?_
    rintro _ ⟨⟨a, ha, hab⟩, b, hb, rfl⟩
    exact h (congr_arg Prod.snd <| ht (mk_mem_prod ha hx) (mk_mem_prod hb hy) hab)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantafc87b07ff5b4f0ce2716638ffb2835e81e54b9a2d24a2ccb0e0c85a76fdff05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantafc87b07ff5b4f0ce2716638ffb2835e81e54b9a2d24a2ccb0e0c85a76fdff05.lean#L406).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fb1aaa7bd41d8b4a1b3faeae6b0534f29432664` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
