# Alon.of_mem_P_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f2bc6efd-5be1-cf52-c5b6-45924f1b4662",
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
  "slug": "alon-of-mem-p-support--198f5bdaa18a7e7be5909377",
  "source": {
    "blob": "d9b6a543c689ef366f1d783ea3e2418b687303d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 179,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variantc2c57561ba6d48b4a831e3fcdd377c3b430715584da0bf6b88a8d7f0bede27f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:198f5bdaa18a7e7be5909377dbaf2714efaccf6f6b04a75c1ebc3e819dcb0039",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variantc2c57561ba6d48b4a831e3fcdd377c3b430715584da0bf6b88a8d7f0bede27f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2bc6efd-5be1-cf52-c5b6-45924f1b4662`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma Alon.of_mem_P_support {ι : Type*} (i : ι) (S : Finset R) (m : ι →₀ ℕ)
    (hm : m ∈ (Alon.P S i).support) :
    ∃ e ≤ S.card, m = single i e := by
  classical
  have hP : Alon.P S i = .rename (fun _ ↦ i) (Alon.P S ()) := by simp [Alon.P]
  rw [hP, support_rename_of_injective (Function.injective_of_subsingleton _)] at hm
  simp only [Finset.mem_image, mem_support_iff, ne_eq] at hm
  obtain ⟨e, he, hm⟩ := hm
  have : Nontrivial R := nontrivial_of_ne _ _ he
  refine ⟨e (), ?_, ?_⟩
  · suffices e ≼[lex] single () #S by
      simpa [MonomialOrder.lex_le_iff_of_unique] using this
    rw [← Alon.degree_P]
    apply MonomialOrder.le_degree
    rw [mem_support_iff]
    convert! he
  · rw [← hm]
    ext j
    by_cases hj : j = i
    · rw [hj, mapDomain_apply_of_injective (Function.injective_of_subsingleton _), single_eq_same]
    · rw [mapDomain_of_notMem_range, single_eq_of_ne hj]
      simp [Set.range_const, Set.mem_singleton_iff, hj]

variable [Finite σ]

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variantc2c57561ba6d48b4a831e3fcdd377c3b430715584da0bf6b88a8d7f0bede27f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variantc2c57561ba6d48b4a831e3fcdd377c3b430715584da0bf6b88a8d7f0bede27f6.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9b6a543c689ef366f1d783ea3e2418b687303d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
