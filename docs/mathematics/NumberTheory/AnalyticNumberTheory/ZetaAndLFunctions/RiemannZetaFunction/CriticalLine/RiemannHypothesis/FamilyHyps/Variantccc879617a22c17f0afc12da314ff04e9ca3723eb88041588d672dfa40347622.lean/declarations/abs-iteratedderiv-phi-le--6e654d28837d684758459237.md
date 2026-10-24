# abs_iteratedDeriv_phi_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e8809a5400e3378f2b0ff197da0aa74786efc02a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 167,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/ccc879617a22c17f0afc12da314ff04e9ca3723eb88041588d672dfa40347622.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b23f4504-db1c-d276-c5e1-bb819c0bc4ec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fcc9568b-f13a-bf63-1815-4a215118fc2a",
  "kind": "lemma",
  "lexical_name": "abs_iteratedDeriv_phi_le",
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
  "slug": "abs-iteratedderiv-phi-le--6e654d28837d684758459237",
  "source": {
    "blob": "e8809a5400e3378f2b0ff197da0aa74786efc02a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 167,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHyps/Variantccc879617a22c17f0afc12da314ff04e9ca3723eb88041588d672dfa40347622.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e654d28837d684758459237f57db409f185dbd9f192ef25320baa8b66b044bb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHyps/Variantccc879617a22c17f0afc12da314ff04e9ca3723eb88041588d672dfa40347622.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fcc9568b-f13a-bf63-1815-4a215118fc2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma abs_iteratedDeriv_phi_le (hϱ : TaperProfile ϱ) (hw : 0 < w) (hwL : 2 * w ≤ L)
    {k : ℕ} (hk : 1 ≤ k) (hk3 : k ≤ 3) (u : ℝ) :
    |iteratedDeriv k (phi ϱ L w) u|
      ≤ |iteratedDeriv k (fP ϱ L w) u| + |iteratedDeriv k (fM ϱ L w) u| := by
  have hprod : phi ϱ L w = fP ϱ L w * fM ϱ L w := by
    funext u; exact phi_eq_mul hϱ hw hwL u
  have hPk : ContDiffAt ℝ k (fP ϱ L w) u := (fP_contDiffAt hϱ u).of_le (by exact_mod_cast hk3)
  have hMk : ContDiffAt ℝ k (fM ϱ L w) u := (fM_contDiffAt hϱ u).of_le (by exact_mod_cast hk3)
  rw [hprod, iteratedDeriv_mul hPk hMk]
  have hk0 : (0:ℕ) ≠ k := by omega
  rw [Finset.sum_eq_add 0 k hk0]
  · simp only [Nat.choose_zero_right, Nat.cast_one, one_mul, iteratedDeriv_zero, Nat.sub_zero,
      Nat.choose_self, Nat.sub_self]
    have h0 : |fP ϱ L w u| ≤ 1 := by
      unfold fP; rw [abs_of_nonneg (hϱ.nonneg _)]; exact hϱ.le_one _
    have h1 : |fM ϱ L w u| ≤ 1 := by
      unfold fM; rw [abs_of_nonneg (hϱ.nonneg _)]; exact hϱ.le_one _
    calc |fP ϱ L w u * iteratedDeriv k (fM ϱ L w) u + iteratedDeriv k (fP ϱ L w) u * fM ϱ L w u|
        ≤ |fP ϱ L w u * iteratedDeriv k (fM ϱ L w) u| + |iteratedDeriv k (fP ϱ L w) u * fM ϱ L w u| :=
          abs_add_le _ _
      _ = |fP ϱ L w u| * |iteratedDeriv k (fM ϱ L w) u| + |iteratedDeriv k (fP ϱ L w) u| * |fM ϱ L w u| := by
          rw [abs_mul, abs_mul]
      _ ≤ 1 * |iteratedDeriv k (fM ϱ L w) u| + |iteratedDeriv k (fP ϱ L w) u| * 1 := by
          gcongr
      _ = _ := by ring
  · intro c hc hne
    have hc1 : 1 ≤ c := Nat.one_le_iff_ne_zero.mpr hne.1
    have hcr := Finset.mem_range.mp hc
    have hc2 : 1 ≤ k - c := by omega
    rw [mul_assoc, iteratedDeriv_fP_mul_fM_eq_zero hϱ hw hwL hc1 (by omega) hc2 (by omega), mul_zero]
  · intro h; exact absurd (Finset.mem_range.mpr (by omega)) h
  · intro h; exact absurd (Finset.mem_range.mpr (by omega)) h

open Taper in
/-- pointwise ramp majorant for φ^{(k)}. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHyps/Variantccc879617a22c17f0afc12da314ff04e9ca3723eb88041588d672dfa40347622.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHyps/Variantccc879617a22c17f0afc12da314ff04e9ca3723eb88041588d672dfa40347622.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8809a5400e3378f2b0ff197da0aa74786efc02a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
