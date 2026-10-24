# Alon.of_mem_P_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dc70f3e92ea646dda9adf1fcb8dbfc96c8e6951e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 169,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8c6a5b90f760632864a5b93a9ce05db0bb996d4734fb6f65c9ea1269c723e36f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:db829851-7aa1-f659-2d4c-844f0c02eb39",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c673e25b-8199-be42-debf-89da5d6e453d",
  "kind": "lemma",
  "lexical_name": "Alon.of_mem_P_support",
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
  "slug": "alon-of-mem-p-support--94bd93d75a0d1070691d8a12",
  "source": {
    "blob": "dc70f3e92ea646dda9adf1fcb8dbfc96c8e6951e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 169,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variant8c6a5b90f760632864a5b93a9ce05db0bb996d4734fb6f65c9ea1269c723e36f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94bd93d75a0d1070691d8a12a8c071b5c46295a77715ba6661d63ed202d52559",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variant8c6a5b90f760632864a5b93a9ce05db0bb996d4734fb6f65c9ea1269c723e36f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c673e25b-8199-be42-debf-89da5d6e453d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma Alon.of_mem_P_support {ι : Type*} (i : ι) (S : Finset R) (m : ι →₀ ℕ)
    (hm : m ∈ (Alon.P S i).support) :
    ∃ e ≤ S.card, m = single i e := by
  classical
  have hP : Alon.P S i = .rename (fun _ ↦ i) (Alon.P S ()) := by simp [Alon.P, map_prod]
  rw [hP, support_rename_of_injective (Function.injective_of_subsingleton _)] at hm
  simp only [Finset.mem_image, mem_support_iff, ne_eq] at hm
  obtain ⟨e, he, hm⟩ := hm
  haveI : Nontrivial R := nontrivial_of_ne _ _ he
  refine ⟨e (), ?_, ?_⟩
  · suffices e ≼[lex] single () #S by
      simpa [MonomialOrder.lex_le_iff_of_unique] using this
    rw [← Alon.degree_P]
    apply MonomialOrder.le_degree
    rw [mem_support_iff]
    convert he
  · rw [← hm]
    ext j
    by_cases hj : j = i
    · rw [hj, mapDomain_apply (Function.injective_of_subsingleton _), single_eq_same]
    · rw [mapDomain_notin_range, single_eq_of_ne (Ne.symm hj)]
      simp [Set.range_const, Set.mem_singleton_iff, hj]

variable [Finite σ]

open scoped BigOperators

/-- The **Combinatorial Nullstellensatz**.

If `f` vanishes at every point `x : σ → R` such that `x s ∈ S s` for all `s`,
then it can be written as a linear combination
`f = linearCombination (MvPolynomial σ R) (fun i ↦ (∏ r ∈ S i, (X i - C r))) h`,
for some `h : σ →₀ MvPolynomial σ R` such that
`((∏ r ∈ S s, (X i - C r)) * h i).totalDegree ≤ f.totalDegree` for all `s`.

[Alon_1999], theorem 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variant8c6a5b90f760632864a5b93a9ce05db0bb996d4734fb6f65c9ea1269c723e36f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variant8c6a5b90f760632864a5b93a9ce05db0bb996d4734fb6f65c9ea1269c723e36f.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc70f3e92ea646dda9adf1fcb8dbfc96c8e6951e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
