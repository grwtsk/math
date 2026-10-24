# sumA2gCoprime_close

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:46a4afcf-a134-46ce-a3ef-cf4a631125d6",
  "kind": "theorem",
  "lexical_name": "sumA2gCoprime_close",
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
  "slug": "suma2gcoprime-close--18a35227bfbb876672320973",
  "source": {
    "blob": "bc984741e5ee19bd29db4d56de2e8a959d67a045",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 33,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant1c461fa2c52bc393ac2e6afb712dd62adb40d53c949f30785b64f999b6226b20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18a35227bfbb876672320973eb3037d10ef9c6775e50d6994bd0f172ca343186",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant1c461fa2c52bc393ac2e6afb712dd62adb40d53c949f30785b64f999b6226b20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46a4afcf-a134-46ce-a3ef-cf4a631125d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sumA2gCoprime_close {q : ℕ} (hchebq : ThmE.ChebyshevMertensCoprime q) :
    ∃ C : ℝ, 0 < C ∧ ∀ (L X : ℝ) (g : ℝ → ℝ), 8 ≤ L → X = Real.exp L →
      Differentiable ℝ g → Continuous (deriv g) → (∀ y : ℝ, |deriv g y| ≤ 2) →
      (∀ y : ℝ, L ≤ y → g y = 0) →
      |ThmE.sumA2gCoprime q X g - ∫ y in (0:ℝ)..L, g y * y| ≤ C * L ^ 2 := by
  classical
  obtain ⟨C₀, hC₀⟩ := hchebq.cheb2a
  set c : ℕ → ℝ := fun n => if Nat.Coprime n q then (Λ n : ℝ) ^ 2 / n else 0 with hcdef
  have hC₀' : ∀ t : ℝ, 2 ≤ t →
      |(∑ k ∈ Finset.Ioc 0 ⌊t⌋₊, c k) - Real.log t ^ 2 / 2| ≤ C₀ * Real.log t := by
    intro t ht
    have := hC₀ t ht
    rwa [Finset.sum_filter] at this
  refine ⟨2 * |C₀| + 10, by positivity, fun L X g hL hX hgd hg'c hg'le hgsupp => ?_⟩
  have h := ThmD.abel_sum_close (c := c) (by simp [hcdef]) (by simp [hcdef]) hC₀' L X g hL hX
    hgd hg'c hg'le hgsupp
  have e : ThmE.sumA2gCoprime q X g = ∑ n ∈ PrimeSide.primeRange X, c n * g (Real.log n) := by
    unfold ThmE.sumA2gCoprime PrimeSide.primeRange
    rw [Finset.sum_filter]
    refine Finset.sum_congr rfl fun n _ => ?_
    simp only [hcdef]
    split_ifs <;> simp
  rw [e]
  exact h

end ThmDE
end Zeta23

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant1c461fa2c52bc393ac2e6afb712dd62adb40d53c949f30785b64f999b6226b20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant1c461fa2c52bc393ac2e6afb712dd62adb40d53c949f30785b64f999b6226b20.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc984741e5ee19bd29db4d56de2e8a959d67a045` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
