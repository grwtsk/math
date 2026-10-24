# logDeriv_canonicalProduct_one_eq_tsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c5e75cb4e32039c193ea54a23e37deb70d711d13",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 237,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fe9a5bf0b2d4690134a04a69e38661cee99bc0b77dd3401b3b11321f6814715f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4b9f913c-7076-11f7-7678-b10fb0a0e55d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:68a9c5c8-0450-7d0f-1ce0-ac26a642df08",
  "kind": "theorem",
  "lexical_name": "logDeriv_canonicalProduct_one_eq_tsum",
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
  "slug": "logderiv-canonicalproduct-one-eq-tsum--c5f5b44eccac22c76e496993",
  "source": {
    "blob": "c5e75cb4e32039c193ea54a23e37deb70d711d13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 237,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantfe9a5bf0b2d4690134a04a69e38661cee99bc0b77dd3401b3b11321f6814715f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5f5b44eccac22c76e496993c8bd8134dfcf737e1a70425fc5fb441a0a128d74",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantfe9a5bf0b2d4690134a04a69e38661cee99bc0b77dd3401b3b11321f6814715f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68a9c5c8-0450-7d0f-1ce0-ac26a642df08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logDeriv_canonicalProduct_one_eq_tsum {a : ℕ → ℂ}
    (h_sum : Summable (fun n : ℕ => ‖a n‖⁻¹ ^ (2 : ℕ))) (h_nonzero : ∀ n, a n ≠ 0)
    {z : ℂ} (hz : z ∉ Set.range a)
    (hm : Summable (fun n : ℕ => 1 / (z - a n) + 1 / a n)) :
    logDeriv (canonicalProduct 1 a) z =
      ∑' n : ℕ, (1 / (z - a n) + 1 / a n) := by
  let Φ : ℕ → ℂ → ℂ := fun n w => weierstrassFactor 1 (w / a n)
  have hf : ∀ n, Φ n z ≠ 0 := by
    intro n
    refine weierstrassFactor_ne_zero_of_ne_one 1 ?_
    intro h
    have hza : z = a n := (div_eq_one_iff_eq (h_nonzero n)).1 h
    exact hz ⟨n, hza.symm⟩
  have hd : ∀ n, DifferentiableOn ℂ (Φ n) (Set.univ : Set ℂ) := by
    intro n
    exact ((differentiable_weierstrassFactor 1).comp
      (differentiable_id.div_const (a n))).differentiableOn
  have hm' : Summable fun n => logDeriv (Φ n) z := by
    refine hm.congr ?_
    intro n
    have hza : z ≠ a n := by
      intro h
      exact hz ⟨n, h.symm⟩
    simpa [Φ] using
      (logDeriv_weierstrassFactor_one_div (a := a n) (z := z) (h_nonzero n) hza).symm
  have htend : MultipliableLocallyUniformlyOn Φ (Set.univ : Set ℂ) := by
    simpa [Φ] using multipliableLocallyUniformlyOn_canonicalProduct h_sum h_nonzero
  have hnez : (∏' n, Φ n z) ≠ 0 := by
    simpa [Φ, canonicalProduct] using canonicalProduct_ne_zero h_sum h_nonzero hz
  have hlog :
      logDeriv (∏' n, Φ n ·) z = ∑' n, logDeriv (Φ n) z :=
    logDeriv_tprod_eq_tsum (s := (Set.univ : Set ℂ)) isOpen_univ (by simp)
      hf hd hm' htend hnez
  calc
    logDeriv (canonicalProduct 1 a) z = ∑' n, logDeriv (Φ n) z := by
      simpa [Φ, canonicalProduct] using hlog
    _ = ∑' n : ℕ, (1 / (z - a n) + 1 / a n) := by
      refine tsum_congr fun n => ?_
      have hza : z ≠ a n := by
        intro h
        exact hz ⟨n, h.symm⟩
      simpa [Φ] using logDeriv_weierstrassFactor_one_div (a := a n) (z := z) (h_nonzero n) hza

end Complex
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantfe9a5bf0b2d4690134a04a69e38661cee99bc0b77dd3401b3b11321f6814715f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantfe9a5bf0b2d4690134a04a69e38661cee99bc0b77dd3401b3b11321f6814715f.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5e75cb4e32039c193ea54a23e37deb70d711d13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
