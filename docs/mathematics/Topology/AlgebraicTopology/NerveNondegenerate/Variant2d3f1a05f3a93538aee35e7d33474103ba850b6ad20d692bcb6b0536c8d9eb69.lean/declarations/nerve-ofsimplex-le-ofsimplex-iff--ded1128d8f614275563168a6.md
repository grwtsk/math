# nerve_ofSimplex_le_ofSimplex_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ecaa80b3f4cc15a8adf2a655ce9e82d5e82f01a6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2d3f1a05f3a93538aee35e7d33474103ba850b6ad20d692bcb6b0536c8d9eb69.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0b94c863-fc45-6e0b-9cd7-91a2f828233e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d1f08171-4d11-0ad2-594e-467e13172246",
  "kind": "lemma",
  "lexical_name": "nerve_ofSimplex_le_ofSimplex_iff",
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
  "slug": "nerve-ofsimplex-le-ofsimplex-iff--ded1128d8f614275563168a6",
  "source": {
    "blob": "ecaa80b3f4cc15a8adf2a655ce9e82d5e82f01a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 78,
    "path": "GRWTSK/Topology/AlgebraicTopology/NerveNondegenerate/Variant2d3f1a05f3a93538aee35e7d33474103ba850b6ad20d692bcb6b0536c8d9eb69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ded1128d8f614275563168a65b64fd30300105adc47ad431ccffc15079e06cc5",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/NerveNondegenerate/Variant2d3f1a05f3a93538aee35e7d33474103ba850b6ad20d692bcb6b0536c8d9eb69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1f08171-4d11-0ad2-594e-467e13172246`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nerve_ofSimplex_le_ofSimplex_iff
    (s : (nerve X) _⦋n⦌) (t : (nerve X) _⦋m⦌) :
    Subcomplex.ofSimplex s ≤ Subcomplex.ofSimplex t ↔
      Set.range s.obj ⊆ Set.range t.obj := by
  refine ⟨?_, ?_⟩
  · rintro hst _ ⟨i, rfl⟩
    rw [Subcomplex.ofSimplex_le_iff] at hst
    obtain ⟨⟨f⟩, rfl⟩ := hst
    exact ⟨_, rfl⟩
  · wlog ht : t ∈ (nerve X).nonDegenerate m generalizing m t
    · intro hst
      obtain ⟨m', f, _, ⟨t', h₁⟩, rfl⟩ := exists_nonDegenerate _ t
      rw [Subcomplex.ofSimplex_map_of_epi]
      refine this _ h₁ ?_
      rintro _ ⟨i, rfl⟩
      obtain ⟨j, hj⟩ := hst (Set.mem_range_self i)
      aesop
    rw [mem_nerve_nonDegenerate_iff_strictMono] at ht
    intro hst
    rw [Subcomplex.ofSimplex_le_iff]
    have (i : Fin (n + 1)) : ∃ (j : Fin (m + 1)), t.obj j = s.obj i := by aesop
    choose f hf using this
    have hf' : Monotone f := fun i₁ i₂ hi ↦ by
      rw [← ht.le_iff_le, hf, hf]
      exact s.monotone hi
    exact ⟨Quiver.Hom.op (SimplexCategory.Hom.mk ⟨f, hf'⟩), by aesop⟩

end PartialOrder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/NerveNondegenerate/Variant2d3f1a05f3a93538aee35e7d33474103ba850b6ad20d692bcb6b0536c8d9eb69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/NerveNondegenerate/Variant2d3f1a05f3a93538aee35e7d33474103ba850b6ad20d692bcb6b0536c8d9eb69.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecaa80b3f4cc15a8adf2a655ce9e82d5e82f01a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
