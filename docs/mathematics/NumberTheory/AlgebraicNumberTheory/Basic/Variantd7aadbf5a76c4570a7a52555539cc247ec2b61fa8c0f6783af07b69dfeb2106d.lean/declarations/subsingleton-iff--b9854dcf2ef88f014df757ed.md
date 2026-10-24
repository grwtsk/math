# subsingleton_iff

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
      "line": 157,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d7aadbf5a76c4570a7a52555539cc247ec2b61fa8c0f6783af07b69dfeb2106d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:65b1df5b-a36b-86f1-3012-aba01d59238d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1833069e-8f00-bc8c-ad6b-e135eaaa2ed7",
  "kind": "theorem",
  "lexical_name": "subsingleton_iff",
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
  "slug": "subsingleton-iff--b9854dcf2ef88f014df757ed",
  "source": {
    "blob": "785a5fef31b7119321077f221c4b335f05f447e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 157,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantd7aadbf5a76c4570a7a52555539cc247ec2b61fa8c0f6783af07b69dfeb2106d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9854dcf2ef88f014df757edcf31a2868fdbaa611892d0f1dd74008640017f7a",
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

Occurrence: `result:1833069e-8f00-bc8c-ad6b-e135eaaa2ed7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subsingleton_iff [Subsingleton B] : IsCyclotomicExtension S A B ↔ S = { } ∨ S = {1} := by
  constructor
  · rintro ⟨hprim, -⟩
    rw [← subset_singleton_iff_eq]
    intro t ht
    obtain ⟨ζ, hζ⟩ := hprim ht
    rw [mem_singleton_iff, ← PNat.coe_eq_one_iff]
    exact_mod_cast hζ.unique (IsPrimitiveRoot.of_subsingleton ζ)
  · rintro (rfl | rfl)
-- Porting note: `R := A` was not needed.
    · exact ⟨fun h => h.elim, fun x => by convert (mem_top (R := A) : x ∈ ⊤)⟩
    · rw [iff_singleton]
      exact ⟨⟨0, IsPrimitiveRoot.of_subsingleton 0⟩,
        fun x => by convert (mem_top (R := A) : x ∈ ⊤)⟩
#align is_cyclotomic_extension.subsingleton_iff IsCyclotomicExtension.subsingleton_iff

/-- If `B` is a cyclotomic extension of `A` given by roots of unity of order in `S ∪ T`, then `B`
is a cyclotomic extension of `adjoin A { b : B | ∃ a : ℕ+, a ∈ S ∧ b ^ (a : ℕ) = 1 } ` given by
roots of unity of order in `T`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantd7aadbf5a76c4570a7a52555539cc247ec2b61fa8c0f6783af07b69dfeb2106d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantd7aadbf5a76c4570a7a52555539cc247ec2b61fa8c0f6783af07b69dfeb2106d.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `785a5fef31b7119321077f221c4b335f05f447e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
