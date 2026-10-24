# refinement_interval_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0a0eb09-aedf-e5d2-5279-c8392b89ef10",
  "kind": "lemma",
  "lexical_name": "refinement_interval_subset",
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
  "slug": "refinement-interval-subset--901493fbef6dded224996818",
  "source": {
    "blob": "3b06a0570821a48a2e65208640ff2e5af25d4cbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 573,
    "line": 550,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variantfc7199f0e351d125be2481ab78fe7011c1466f7f71b608246feeb2ab50165331.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:901493fbef6dded2249968185ba4eb554e9e76afc9f9d74283361a2e2a152118",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variantfc7199f0e351d125be2481ab78fe7011c1466f7f71b608246feeb2ab50165331.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0a0eb09-aedf-e5d2-5279-c8392b89ef10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 550–573.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma refinement_interval_subset {a b : ℝ} {P R : IPartition a b}
  (h : IsRefinement R P) (hn : P.n > 0) (j : Fin R.n) :
  ∃ i : Fin P.n, P.x i.castSucc ≤ R.x j.castSucc ∧ R.x j.succ ≤ P.x i.succ := by
    have h_max : ∃ i : Fin P.n, P.x i.castSucc ≤ R.x j.castSucc ∧ ∀ k : Fin P.n, P.x k.castSucc ≤ R.x j.castSucc → k ≤ i := by
      have h_max : ∃ i ∈ Finset.univ.filter (fun k : Fin P.n => P.x k.castSucc ≤ R.x j.castSucc), ∀ k ∈ Finset.univ.filter (fun k : Fin P.n => P.x k.castSucc ≤ R.x j.castSucc), i ≥ k := by
        apply_rules [ Finset.exists_max_image ];
        exact ⟨ ⟨ 0, hn ⟩, by simpa using by linarith [ P.monotone ( show 0 ≤ Fin.last _ from Nat.zero_le _ ), P.left, P.right, R.monotone ( show 0 ≤ Fin.castSucc j from Nat.zero_le _ ), R.left, R.right ] ⟩;
      aesop;
    obtain ⟨ i, hi₁, hi₂ ⟩ := h_max;
    by_cases hi₃ : P.x i.succ ≤ R.x j.castSucc;
    · contrapose! hi₂;
      use ⟨ i + 1, by
        by_contra h_contra;
        have := hi₂ i hi₁; simp_all +decide [ Fin.eq_last_of_not_lt ] ;
        linarith [ P.right, R.left, R.right, R.monotone ( show j.succ ≤ Fin.last R.n from Fin.le_last _ ) ] ⟩
      generalize_proofs at *;
      exact ⟨ hi₃, Nat.lt_succ_self _ ⟩;
    · refine' ⟨ i, hi₁, _ ⟩;
      contrapose! hi₂;
      exact False.elim <| no_P_point_between h j ( i.succ ) ⟨ by linarith, by linarith ⟩

/-
Every subinterval of a refinement R has length at most the mesh of P.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variantfc7199f0e351d125be2481ab78fe7011c1466f7f71b608246feeb2ab50165331.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variantfc7199f0e351d125be2481ab78fe7011c1466f7f71b608246feeb2ab50165331.lean#L550).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b06a0570821a48a2e65208640ff2e5af25d4cbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
