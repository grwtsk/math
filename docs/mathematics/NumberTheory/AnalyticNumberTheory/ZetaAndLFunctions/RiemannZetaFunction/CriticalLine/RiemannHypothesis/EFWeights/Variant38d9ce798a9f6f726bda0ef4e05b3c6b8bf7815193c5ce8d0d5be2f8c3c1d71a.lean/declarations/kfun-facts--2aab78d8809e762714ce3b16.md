# kfun_facts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05b5589c-443f-710c-3d4d-63265b23e58f",
  "kind": "theorem",
  "lexical_name": "kfun_facts",
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
  "slug": "kfun-facts--2aab78d8809e762714ce3b16",
  "source": {
    "blob": "989e3cba3f152f630a41de9f9ad775f9ec0a9611",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 202,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFWeights/Variant38d9ce798a9f6f726bda0ef4e05b3c6b8bf7815193c5ce8d0d5be2f8c3c1d71a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2aab78d8809e762714ce3b16e3b81eaaae5dfbdb96498618debf8321c35c163e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFWeights/Variant38d9ce798a9f6f726bda0ef4e05b3c6b8bf7815193c5ce8d0d5be2f8c3c1d71a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05b5589c-443f-710c-3d4d-63265b23e58f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kfun_facts {Pf : ℝ → Params} (hPf : FamilyHyps Pf) :
    ∃ C T₁ : ℝ, 0 ≤ C ∧ ∀ T : ℝ, T₁ ≤ T → ∀ k l : ℤ,
      (ContDiff ℝ 2 (kfun (Pf T) T k l) ∧ HasCompactSupport (kfun (Pf T) T k l) ∧
        tsupport (kfun (Pf T) T k l) ⊆ Icc (-(Pf T).L T) ((Pf T).L T)) ∧
      (ContDiff ℝ 2 (fun u => kfun (Pf T) T k l (-u)) ∧ HasCompactSupport (fun u => kfun (Pf T) T k l (-u)) ∧
        tsupport (fun u => kfun (Pf T) T k l (-u)) ⊆ Icc (-(Pf T).L T) ((Pf T).L T)) ∧
      1 ≤ (Pf T).L T ∧
      ∀ z : ℂ, |z.im| ≤ 3/4 →
        ‖paperFT (kfun (Pf T) T k l) z‖
            ≤ C * (Pf T).X T ^ (3/4 : ℝ) * (Pf T).L T ^ 2 *
              (cauchyK ((Pf T).tau T k) z.re * cauchyK ((Pf T).tau T l) z.re) ∧
        (|z.re - (Pf T).tau T k| + |z.re - (Pf T).tau T l|) * ‖paperFT (kfun (Pf T) T k l) z‖
            ≤ C * (Pf T).X T ^ (3/4 : ℝ) * (Pf T).L T *
              (cauchyK ((Pf T).tau T k) z.re * cauchyK ((Pf T).tau T l) z.re) := by
  obtain ⟨T₀, h0⟩ := kfun_regular' hPf
  obtain ⟨C, T₁, hC, h1⟩ := paperFT_kfun_bounds hPf
  refine ⟨C, max T₀ T₁, hC, fun T hT k l => ?_⟩
  obtain ⟨a, b, c⟩ := h0 T (le_trans (le_max_left _ _) hT) k l
  exact ⟨a, b, c, fun z hz => h1 T (le_trans (le_max_right _ _) hT) k l z hz⟩

end HW
end XiPrime
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFWeights/Variant38d9ce798a9f6f726bda0ef4e05b3c6b8bf7815193c5ce8d0d5be2f8c3c1d71a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFWeights/Variant38d9ce798a9f6f726bda0ef4e05b3c6b8bf7815193c5ce8d0d5be2f8c3c1d71a.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `989e3cba3f152f630a41de9f9ad775f9ec0a9611` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
