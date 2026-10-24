# kfun_facts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "71a45b411c154e05a52f3a8952886c53a6dd6e09",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 194,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5d6f606e6771daab20daa9c3868d1fb541ac38ce401674c9c84f05cfb2aa14b7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:47113c42-c3af-41e2-cdb5-66a5d8b15cbd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:29b7af5a-1afa-171e-ed68-9b276a66d9d0",
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
  "slug": "kfun-facts--41fb128e8b3850edf0a4d883",
  "source": {
    "blob": "71a45b411c154e05a52f3a8952886c53a6dd6e09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 194,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFWeights/Variant5d6f606e6771daab20daa9c3868d1fb541ac38ce401674c9c84f05cfb2aa14b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41fb128e8b3850edf0a4d88395f30c2c206d274b3225e48ec18ff12199115faa",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFWeights/Variant5d6f606e6771daab20daa9c3868d1fb541ac38ce401674c9c84f05cfb2aa14b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29b7af5a-1afa-171e-ed68-9b276a66d9d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–216.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFWeights/Variant5d6f606e6771daab20daa9c3868d1fb541ac38ce401674c9c84f05cfb2aa14b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFWeights/Variant5d6f606e6771daab20daa9c3868d1fb541ac38ce401674c9c84f05cfb2aa14b7.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71a45b411c154e05a52f3a8952886c53a6dd6e09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
