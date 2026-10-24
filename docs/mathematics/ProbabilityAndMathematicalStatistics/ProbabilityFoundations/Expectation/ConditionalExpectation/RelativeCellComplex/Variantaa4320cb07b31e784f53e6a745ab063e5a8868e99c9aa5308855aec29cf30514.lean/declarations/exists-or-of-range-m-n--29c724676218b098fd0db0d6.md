# exists_or_of_range_m_N

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b023b59b-b0dd-9d12-19c0-cb0cc8a581d2",
  "kind": "lemma",
  "lexical_name": "exists_or_of_range_m_N",
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
  "slug": "exists-or-of-range-m-n--29c724676218b098fd0db0d6",
  "source": {
    "blob": "c3c794563aaafa9d6e5e487aca9722e9cd217f1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 459,
    "line": 436,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/RelativeCellComplex/Variantaa4320cb07b31e784f53e6a745ab063e5a8868e99c9aa5308855aec29cf30514.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29c724676218b098fd0db0d60b17aa602cbe82b84614b70774b4ec91234062d0",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/RelativeCellComplex/Variantaa4320cb07b31e784f53e6a745ab063e5a8868e99c9aa5308855aec29cf30514.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b023b59b-b0dd-9d12-19c0-cb0cc8a581d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 436–459.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_or_of_range_m_N {j : ι} (s : (Subcomplex.range (f.m j)).N) :
    ∃ (c : f.Cell j), s = c.type₁ ∨ s = c.type₂ := by
  obtain ⟨d, s, hs, hs', rfl⟩ := s.mk_surjective
  obtain ⟨x, s, rfl⟩ := f.ιSigmaStdSimplex_jointly_surjective s
  replace hs' : s ∉ (horn _ x.index).obj _ :=
    fun h ↦ hs' ⟨x.ιSigmaHorn.app _ ⟨_, h⟩, by rw [← NatTrans.comp_app_apply]; simp⟩
  obtain ⟨g, rfl⟩ := stdSimplex.objEquiv.symm.surjective s
  rw [nonDegenerate_iff_of_mono, stdSimplex.mem_nonDegenerate_iff_mono,
    Equiv.apply_symm_apply] at hs
  obtain hd | rfl := (SimplexCategory.le_of_mono g).lt_or_eq
  · rw [Nat.lt_succ_iff] at hd
    obtain hd | rfl := hd.lt_or_eq
    · exact (hs' (by simp [horn_obj_eq_univ x.index d (by lia)])).elim
    · obtain ⟨i, rfl⟩ := SimplexCategory.eq_δ_of_mono g
      obtain rfl := (objEquiv_symm_δ_notMem_horn_iff _ _).mp hs'
      exact ⟨x, Or.inr rfl⟩
  · obtain rfl := SimplexCategory.eq_id_of_mono g
    exact ⟨x, Or.inl rfl⟩

variable [SuccOrder ι] [NoMaxOrder ι]

/-- Given a rank function `f : P.RankFunction ι` for a proper pairing `P`
of a subcomplex of a simplicial set, this is the induced morphism
`f.sigmaStdSimplex j ⟶ f.filtration (Order.succ j)` for any `j : ι`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/RelativeCellComplex/Variantaa4320cb07b31e784f53e6a745ab063e5a8868e99c9aa5308855aec29cf30514.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/RelativeCellComplex/Variantaa4320cb07b31e784f53e6a745ab063e5a8868e99c9aa5308855aec29cf30514.lean#L436).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3c794563aaafa9d6e5e487aca9722e9cd217f1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
