# IsChain.exists_maxChain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e21cd254-f63a-6efe-cbcd-ebf4e7dfd132",
  "kind": "theorem",
  "lexical_name": "IsChain.exists_maxChain",
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
  "slug": "ischain-exists-maxchain--70811cb7c4b77bb8a9ec61c3",
  "source": {
    "blob": "24e88af4c76edce5a22a6d587dbc37ea0b88cee1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 220,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant3228ab23060bf7933082faa7d5734bcf59bccfef7c8d2f8aaa21c54d9e2006ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70811cb7c4b77bb8a9ec61c38294d34340a6be8ffb9ba803929dd089b7a03d5f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant3228ab23060bf7933082faa7d5734bcf59bccfef7c8d2f8aaa21c54d9e2006ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e21cd254-f63a-6efe-cbcd-ebf4e7dfd132`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsChain.exists_maxChain (hc : IsChain r c) : ∃ M, @IsMaxChain _ r M ∧ c ⊆ M := by
  -- Porting note: the first three lines replace the following two lines in mathlib3.
  -- The mathlib3 `obtain` supports holes for proof obligations, this is not yet implemented in 4.
  -- obtain ⟨M, ⟨_, hM₀⟩, hM₁, hM₂⟩ :=
  --   zorn_subset_nonempty { s | c ⊆ s ∧ IsChain r s } _ c ⟨Subset.rfl, hc⟩
  have H := zorn_subset_nonempty { s | c ⊆ s ∧ IsChain r s } ?_ c ⟨Subset.rfl, hc⟩
  · obtain ⟨M, ⟨_, hM₀⟩, hM₁, hM₂⟩ := H
    exact ⟨M, ⟨hM₀, fun d hd hMd => (hM₂ _ ⟨hM₁.trans hMd, hd⟩ hMd).symm⟩, hM₁⟩
  rintro cs hcs₀ hcs₁ ⟨s, hs⟩
  refine'
    ⟨⋃₀cs, ⟨fun _ ha => Set.mem_sUnion_of_mem ((hcs₀ hs).left ha) hs, _⟩, fun _ =>
      Set.subset_sUnion_of_mem⟩
  rintro y ⟨sy, hsy, hysy⟩ z ⟨sz, hsz, hzsz⟩ hyz
  obtain rfl | hsseq := eq_or_ne sy sz
  · exact (hcs₀ hsy).right hysy hzsz hyz
  cases' hcs₁ hsy hsz hsseq with h h
  · exact (hcs₀ hsz).right (h hysy) hzsz hyz
  · exact (hcs₀ hsy).right hysy (h hzsz) hyz
#align is_chain.exists_max_chain IsChain.exists_maxChain
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant3228ab23060bf7933082faa7d5734bcf59bccfef7c8d2f8aaa21c54d9e2006ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant3228ab23060bf7933082faa7d5734bcf59bccfef7c8d2f8aaa21c54d9e2006ec.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24e88af4c76edce5a22a6d587dbc37ea0b88cee1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
