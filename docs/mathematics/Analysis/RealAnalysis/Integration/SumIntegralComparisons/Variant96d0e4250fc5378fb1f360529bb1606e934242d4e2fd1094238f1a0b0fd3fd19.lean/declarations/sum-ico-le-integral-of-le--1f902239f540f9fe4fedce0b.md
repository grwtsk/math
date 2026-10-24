# sum_Ico_le_integral_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6819ec5c-1c6d-68b5-5ec7-8be819c03a09",
  "kind": "lemma",
  "lexical_name": "sum_Ico_le_integral_of_le",
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
  "slug": "sum-ico-le-integral-of-le--1f902239f540f9fe4fedce0b",
  "source": {
    "blob": "b8fd71d7496685894762dfb5ad2b07fda3fce7a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 56,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant96d0e4250fc5378fb1f360529bb1606e934242d4e2fd1094238f1a0b0fd3fd19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f902239f540f9fe4fedce0b350f9eab199ec2bfacd70dee3f7f9de220a358ac",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant96d0e4250fc5378fb1f360529bb1606e934242d4e2fd1094238f1a0b0fd3fd19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6819ec5c-1c6d-68b5-5ec7-8be819c03a09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_Ico_le_integral_of_le
    (hab : a ≤ b) (h : ∀ i ∈ Ico a b, ∀ x ∈ Ico (i : ℝ) (i + 1 : ℕ), f i ≤ g x)
    (hg : IntegrableOn g (Set.Ico a b)) :
    ∑ i ∈ Finset.Ico a b, f i ≤ ∫ x in a..b, g x := by
  have A i (hi : i ∈ Finset.Ico a b) : IntervalIntegrable g volume i (i + 1 : ℕ) := by
    rw [intervalIntegrable_iff_integrableOn_Ico_of_le (by simp)]
    apply hg.mono _ le_rfl
    rintro x ⟨hx, h'x⟩
    simp only [Finset.mem_Ico, mem_Ico] at hi ⊢
    exact ⟨le_trans (mod_cast hi.1) hx, h'x.trans_le (mod_cast hi.2)⟩
  calc
  ∑ i ∈ Finset.Ico a b, f i
  _ = ∑ i ∈ Finset.Ico a b, (∫ x in (i : ℝ)..(i + 1 : ℕ), f i) := by simp
  _ ≤ ∑ i ∈ Finset.Ico a b, (∫ x in (i : ℝ)..(i + 1 : ℕ), g x) := by
    gcongr with i hi
    apply intervalIntegral.integral_mono_on_of_le_Ioo (by simp) (by simp) (A _ hi) (fun x hx ↦ ?_)
    exact h _ (by simpa using hi) _ (Ioo_subset_Ico_self hx)
  _ = ∫ x in a..b, g x := by
    rw [intervalIntegral.sum_integral_adjacent_intervals_Ico (a := fun i ↦ i) hab]
    intro i hi
    exact A _ (by simpa using hi)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant96d0e4250fc5378fb1f360529bb1606e934242d4e2fd1094238f1a0b0fd3fd19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant96d0e4250fc5378fb1f360529bb1606e934242d4e2fd1094238f1a0b0fd3fd19.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8fd71d7496685894762dfb5ad2b07fda3fce7a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
