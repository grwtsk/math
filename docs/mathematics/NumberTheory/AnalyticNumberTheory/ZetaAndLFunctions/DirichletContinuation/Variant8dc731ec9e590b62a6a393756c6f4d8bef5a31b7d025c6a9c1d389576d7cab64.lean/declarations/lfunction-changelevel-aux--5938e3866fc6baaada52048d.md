# LFunction_changeLevel_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa0335d8-05c5-21ae-d53e-016df01de4ac",
  "kind": "lemma",
  "lexical_name": "LFunction_changeLevel_aux",
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
  "slug": "lfunction-changelevel-aux--5938e3866fc6baaada52048d",
  "source": {
    "blob": "b8f5c55347e64f60429f6a522419008fed860222",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 129,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant8dc731ec9e590b62a6a393756c6f4d8bef5a31b7d025c6a9c1d389576d7cab64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5938e3866fc6baaada52048d2650b5a0917f21669f54bbf3ba7f055bf9200596",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant8dc731ec9e590b62a6a393756c6f4d8bef5a31b7d025c6a9c1d389576d7cab64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa0335d8-05c5-21ae-d53e-016df01de4ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma LFunction_changeLevel_aux {M N : ℕ} [NeZero M] [NeZero N] (hMN : M ∣ N)
    (χ : DirichletCharacter ℂ M) {s : ℂ} (hs : s ≠ 1) :
    LFunction (changeLevel hMN χ) s =
      LFunction χ s * ∏ p ∈ N.primeFactors, (1 - χ p * p ^ (-s)) := by
  have hpc : IsPreconnected ({1}ᶜ : Set ℂ) :=
    (isConnected_compl_singleton_of_one_lt_rank (rank_real_complex ▸ Nat.one_lt_ofNat) _)
      |>.isPreconnected
  have hne : 2 ∈ ({1}ᶜ : Set ℂ) := by norm_num
  refine AnalyticOnNhd.eqOn_of_preconnected_of_eventuallyEq (𝕜 := ℂ)
    (g := fun s ↦ LFunction χ s * ∏ p ∈ N.primeFactors, (1 - χ p * p ^ (-s))) ?_ ?_ hpc hne ?_ hs
  · refine DifferentiableOn.analyticOnNhd (fun s hs ↦ ?_) isOpen_compl_singleton
    exact (differentiableAt_LFunction _ _ (.inl hs)).differentiableWithinAt
  · refine DifferentiableOn.analyticOnNhd (fun s hs ↦ ?_) isOpen_compl_singleton
    refine ((differentiableAt_LFunction _ _ (.inl hs)).mul ?_).differentiableWithinAt
    refine .finset_prod fun i h ↦ ?_
    have : NeZero i := ⟨(Nat.pos_of_mem_primeFactors h).ne'⟩
    fun_prop
  · refine eventually_of_mem ?_  (fun t (ht : 1 < t.re) ↦ ?_)
    · exact (continuous_re.isOpen_preimage _ isOpen_Ioi).mem_nhds (by norm_num : 1 < (2 : ℂ).re)
    · simpa [LFunction_eq_LSeries _ ht] using LSeries_changeLevel hMN χ ht

/-- If `χ` is a Dirichlet character and its level `M` divides `N`, then we obtain the L function
of `χ` considered as a Dirichlet character of level `N` from the L function of `χ` by multiplying
with `∏ p ∈ N.primeFactors, (1 - χ p * p ^ (-s))`.
(Note that `1 - χ p * p ^ (-s) = 1` when `p` divides `M`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant8dc731ec9e590b62a6a393756c6f4d8bef5a31b7d025c6a9c1d389576d7cab64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant8dc731ec9e590b62a6a393756c6f4d8bef5a31b7d025c6a9c1d389576d7cab64.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8f5c55347e64f60429f6a522419008fed860222` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
