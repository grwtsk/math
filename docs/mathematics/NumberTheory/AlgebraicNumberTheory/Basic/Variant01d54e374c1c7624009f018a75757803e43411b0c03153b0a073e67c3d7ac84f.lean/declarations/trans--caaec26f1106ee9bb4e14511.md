# trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3c04b79552195d58566ee5f066c8dabc47ce044c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 130,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/01d54e374c1c7624009f018a75757803e43411b0c03153b0a073e67c3d7ac84f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:08848d31-5bd4-0197-a859-8b24c2b611cc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:26df62fb-8810-2752-064b-00c2ae8f359f",
  "kind": "theorem",
  "lexical_name": "trans",
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
  "slug": "trans--caaec26f1106ee9bb4e14511",
  "source": {
    "blob": "3c04b79552195d58566ee5f066c8dabc47ce044c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 130,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant01d54e374c1c7624009f018a75757803e43411b0c03153b0a073e67c3d7ac84f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:caaec26f1106ee9bb4e14511794c75d2b08813ddece7fb55195b2bd51abc5897",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant01d54e374c1c7624009f018a75757803e43411b0c03153b0a073e67c3d7ac84f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26df62fb-8810-2752-064b-00c2ae8f359f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trans (C : Type w) [CommRing C] [Algebra A C] [Algebra B C] [IsScalarTower A B C]
    [hS : IsCyclotomicExtension S A B] [hT : IsCyclotomicExtension T B C]
    (h : Function.Injective (algebraMap B C)) : IsCyclotomicExtension (S ∪ T) A C := by
  refine ⟨fun hn => ?_, fun x => ?_⟩
  · rcases hn with hn | hn
    · obtain ⟨b, hb⟩ := ((isCyclotomicExtension_iff _ _ _).1 hS).1 hn
      refine ⟨algebraMap B C b, ?_⟩
      exact hb.map_of_injective h
    · exact ((isCyclotomicExtension_iff _ _ _).1 hT).1 hn
  · refine adjoin_induction (hx := ((isCyclotomicExtension_iff T B _).1 hT).2 x)
      (fun c ⟨n, hn⟩ => subset_adjoin ⟨n, Or.inr hn.1, hn.2⟩) (fun b => ?_)
      (fun x y _ _ hx hy => Subalgebra.add_mem _ hx hy)
      fun x y _ _ hx hy => Subalgebra.mul_mem _ hx hy
    let f := IsScalarTower.toAlgHom A B C
    have hb : f b ∈ (adjoin A {b : B | ∃ a : ℕ+, a ∈ S ∧ b ^ (a : ℕ) = 1}).map f :=
      ⟨b, ((isCyclotomicExtension_iff _ _ _).1 hS).2 b, rfl⟩
    rw [IsScalarTower.toAlgHom_apply, ← adjoin_image] at hb
    refine adjoin_mono (fun y hy => ?_) hb
    obtain ⟨b₁, ⟨⟨n, hn⟩, h₁⟩⟩ := hy
    exact ⟨n, ⟨mem_union_left T hn.1, by rw [← h₁, ← map_pow, hn.2, map_one]⟩⟩

@[nontriviality]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant01d54e374c1c7624009f018a75757803e43411b0c03153b0a073e67c3d7ac84f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant01d54e374c1c7624009f018a75757803e43411b0c03153b0a073e67c3d7ac84f.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c04b79552195d58566ee5f066c8dabc47ce044c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
