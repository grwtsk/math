# StrictMono.not_bddAbove_range_of_isSuccArchimedean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "23e44baa40f9e48c7a1c591de5d026a08c6f0638",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 164,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0fdd41efd9c50d3dfaef4088423b4b11de2d9c40952d42b11fe13095f70813d3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:47ec88c1-2435-f775-e85b-f2cf63f627db",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c7adc60f-4209-b252-66ea-ab1ccaf5d1cd",
  "kind": "lemma",
  "lexical_name": "StrictMono.not_bddAbove_range_of_isSuccArchimedean",
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
  "slug": "strictmono-not-bddabove-range-of-issuccarchimedean--0490a3735b4eb0fbcd1c6092",
  "source": {
    "blob": "23e44baa40f9e48c7a1c591de5d026a08c6f0638",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 164,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant0fdd41efd9c50d3dfaef4088423b4b11de2d9c40952d42b11fe13095f70813d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0490a3735b4eb0fbcd1c60928df5228be9d64bc3b9f5adb8f822a123fda7b257",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant0fdd41efd9c50d3dfaef4088423b4b11de2d9c40952d42b11fe13095f70813d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7adc60f-4209-b252-66ea-ab1ccaf5d1cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma StrictMono.not_bddAbove_range_of_isSuccArchimedean [NoMaxOrder α] [SuccOrder β]
    [IsSuccArchimedean β] (hf : StrictMono f) : ¬ BddAbove (Set.range f) := by
  rintro ⟨m, hm⟩
  have hm' : ∀ a, f a ≤ m := fun a ↦ hm <| Set.mem_range_self _
  obtain ⟨a₀⟩ := ‹Nonempty α›
  suffices ∀ b, f a₀ ≤ b → ∃ a, b < f a by
    obtain ⟨a, ha⟩ : ∃ a, m < f a := this m (hm' a₀)
    exact ha.not_ge (hm' a)
  have h : ∀ a, ∃ a', f a < f a' := fun a ↦ (exists_gt a).imp (fun a' h ↦ hf h)
  apply Succ.rec
  · exact h a₀
  rintro b _ ⟨a, hba⟩
  exact (h a).imp (fun a' ↦ (succ_le_of_lt hba).trans_lt)

@[to_dual]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant0fdd41efd9c50d3dfaef4088423b4b11de2d9c40952d42b11fe13095f70813d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant0fdd41efd9c50d3dfaef4088423b4b11de2d9c40952d42b11fe13095f70813d3.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23e44baa40f9e48c7a1c591de5d026a08c6f0638` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
