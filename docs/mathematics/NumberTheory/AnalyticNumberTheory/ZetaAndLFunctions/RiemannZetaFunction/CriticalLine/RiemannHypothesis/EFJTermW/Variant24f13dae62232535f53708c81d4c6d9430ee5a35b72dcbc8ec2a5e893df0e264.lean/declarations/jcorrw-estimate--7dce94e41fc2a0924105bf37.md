# JcorrW_estimate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "78e33bd9eac267eae7841a9776c68083ca01bf89",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 42,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/24f13dae62232535f53708c81d4c6d9430ee5a35b72dcbc8ec2a5e893df0e264.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6166fd14-3e1c-fecf-0906-1661904dd244",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6f69a894-de49-ec98-a985-96768c610c9e",
  "kind": "theorem",
  "lexical_name": "JcorrW_estimate",
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
  "slug": "jcorrw-estimate--7dce94e41fc2a0924105bf37",
  "source": {
    "blob": "78e33bd9eac267eae7841a9776c68083ca01bf89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 42,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFJTermW/Variant24f13dae62232535f53708c81d4c6d9430ee5a35b72dcbc8ec2a5e893df0e264.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7dce94e41fc2a0924105bf37f90b2b65e257587b8367b15348a07f2f520425c2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFJTermW/Variant24f13dae62232535f53708c81d4c6d9430ee5a35b72dcbc8ec2a5e893df0e264.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f69a894-de49-ec98-a985-96768c610c9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem JcorrW_estimate {c : ℝ} (_hc1 : 1 < c) (_hc2 : c ≤ 5/4) (hE2 : E2LineFacts c) (hF : FreezeFactsW c) :
    ∃ K T₀ : ℝ, 0 ≤ K ∧ 8 ≤ T₀ ∧
    ∀ {k : ℝ → ℂ} (hk : ContDiff ℝ 2 k) (hkc : HasCompactSupport k)
      {T a b W W' : ℝ} (hT : T₀ ≤ T) (ha : T ≤ a) (hb : T ≤ b) (hW : 0 ≤ W) (hW' : 0 ≤ W')
      (hw1 : ∀ t : ℝ, ‖Hfn k ((c:ℂ) + t * I)‖ ≤ W * (cauchyK a t * cauchyK b t))
      (hw2 : ∀ t : ℝ, (|t - a| + |t - b|) * ‖Hfn k ((c:ℂ) + t * I)‖ ≤ W' * (cauchyK a t * cauchyK b t))
      (hw1' : ∀ t : ℝ, ‖Hfn k (1 - (c:ℂ) - t * I)‖ ≤ W * (cauchyK (-a) t * cauchyK (-b) t))
      (hw2' : ∀ t : ℝ, (|t + a| + |t + b|) * ‖Hfn k (1 - (c:ℂ) - t * I)‖ ≤ W' * (cauchyK (-a) t * cauchyK (-b) t))
      {cJ : ℕ → ℂ} (hcs : Summable (fun N : ℕ => ‖cJ N‖ * (N : ℝ) ^ (-c)))
      (hC1 : ∀ t : ℝ, LSeries cJ ((c:ℂ) + t * I) = DfroC c ((a + b) / 2) t)
      (hC1' : ∀ t : ℝ, LSeries (fun N => conj (cJ N)) ((c:ℂ) + t * I) = DfroC c ((a + b) / 2) t),
      ‖JcorrW c k - ((∑' N : ℕ, cJ N / ((Real.sqrt N : ℝ) : ℂ) * k (Real.log N))
          + ∑' N : ℕ, conj (cJ N) / ((Real.sqrt N : ℝ) : ℂ) * k (-Real.log N))‖
        ≤ K * ((W + W') / (T * Real.log T) / (4 + (a - b) ^ 2) + W / T ^ 2) := by
  obtain ⟨K, T₀, hK, hT₀, h⟩ := JcorrG_estimate (c := c) (dE := dE2 c) (Lpar := fun τ => ((L2star τ : ℝ) : ℂ))
    hE2.cont hE2.bound hF.conj_symm hF.freeze hF.unif
  refine ⟨K, T₀, hK, hT₀, ?_⟩
  intro k hk hkc T a b W W' hT ha hb hW hW' hw1 hw2 hw1' hw2' cJ hcs hC1 hC1'
  have hC1'' : ∀ t : ℝ, LSeries (fun N => conj (cJ N)) ((c:ℂ) + t * I)
      = DfroG c (conj (((L2star ((a + b) / 2) : ℝ) : ℂ))) t := fun t => by
    rw [Complex.conj_ofReal]; exact hC1' t
  exact h hk hkc hT ha hb hW hW' hw1 hw2 hw1' hw2' hcs hC1 hC1''

end XiPrime
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFJTermW/Variant24f13dae62232535f53708c81d4c6d9430ee5a35b72dcbc8ec2a5e893df0e264.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFJTermW/Variant24f13dae62232535f53708c81d4c6d9430ee5a35b72dcbc8ec2a5e893df0e264.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78e33bd9eac267eae7841a9776c68083ca01bf89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
