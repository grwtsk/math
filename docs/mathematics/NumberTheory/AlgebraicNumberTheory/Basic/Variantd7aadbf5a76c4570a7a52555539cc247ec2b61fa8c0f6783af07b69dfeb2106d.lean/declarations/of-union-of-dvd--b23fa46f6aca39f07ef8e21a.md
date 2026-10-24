# of_union_of_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "785a5fef31b7119321077f221c4b335f05f447e9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 211,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d7aadbf5a76c4570a7a52555539cc247ec2b61fa8c0f6783af07b69dfeb2106d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c943509d-6563-2854-7fca-5a392c6e34b9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c8b20ad4-7efc-4d87-809e-4034e80f7843",
  "kind": "theorem",
  "lexical_name": "of_union_of_dvd",
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
  "slug": "of-union-of-dvd--b23fa46f6aca39f07ef8e21a",
  "source": {
    "blob": "785a5fef31b7119321077f221c4b335f05f447e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 211,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantd7aadbf5a76c4570a7a52555539cc247ec2b61fa8c0f6783af07b69dfeb2106d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b23fa46f6aca39f07ef8e21a810f2a9b71bf9b34d51c804bb0e8bda01b8d9093",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantd7aadbf5a76c4570a7a52555539cc247ec2b61fa8c0f6783af07b69dfeb2106d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8b20ad4-7efc-4d87-809e-4034e80f7843`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_union_of_dvd (h : ∀ s ∈ S, n ∣ s) (hS : S.Nonempty) [H : IsCyclotomicExtension S A B] :
    IsCyclotomicExtension (S ∪ {n}) A B := by
  refine' (iff_adjoin_eq_top _ A _).2 ⟨fun s hs => _, _⟩
  · rw [mem_union, mem_singleton_iff] at hs
    obtain hs | rfl := hs
    · exact H.exists_prim_root hs
    · obtain ⟨m, hm⟩ := hS
      obtain ⟨x, rfl⟩ := h m hm
      obtain ⟨ζ, hζ⟩ := H.exists_prim_root hm
      refine' ⟨ζ ^ (x : ℕ), _⟩
      convert hζ.pow_of_dvd x.ne_zero (dvd_mul_left (x : ℕ) s)
      simp only [PNat.mul_coe, Nat.mul_div_left, PNat.pos]
  · refine' _root_.eq_top_iff.2 _
    rw [← ((iff_adjoin_eq_top S A B).1 H).2]
    refine' adjoin_mono fun x hx => _
    simp only [union_singleton, mem_insert_iff, mem_setOf_eq] at hx ⊢
    obtain ⟨m, hm⟩ := hx
    exact ⟨m, ⟨Or.inr hm.1, hm.2⟩⟩
#align is_cyclotomic_extension.of_union_of_dvd IsCyclotomicExtension.of_union_of_dvd

/-- If `∀ s ∈ S, n ∣ s` and `S` is not empty, then `IsCyclotomicExtension S A B` if and only if
`IsCyclotomicExtension (S ∪ {n}) A B`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantd7aadbf5a76c4570a7a52555539cc247ec2b61fa8c0f6783af07b69dfeb2106d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantd7aadbf5a76c4570a7a52555539cc247ec2b61fa8c0f6783af07b69dfeb2106d.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `785a5fef31b7119321077f221c4b335f05f447e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
