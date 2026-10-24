# primeHarmonicPrefix_mul_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48b59d86-9276-82de-2332-fe36474fe0b7",
  "kind": "theorem",
  "lexical_name": "primeHarmonicPrefix_mul_intervalIntegrable",
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
  "slug": "primeharmonicprefix-mul-intervalintegrable--7d780823555293c9ee1c77a7",
  "source": {
    "blob": "2a784c05d3092f4296615592e3c99e847fa5bd5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 94,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbelStatements/Variantcdc15a19bd6cbf998ad63ede378bc442ffea83313931eb0f6b701f782bc3f33e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d780823555293c9ee1c77a72b21e5bf408a5e1ce7c05e2bec423c44bb5c126d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbelStatements/Variantcdc15a19bd6cbf998ad63ede378bc442ffea83313931eb0f6b701f782bc3f33e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48b59d86-9276-82de-2332-fe36474fe0b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeHarmonicPrefix_mul_intervalIntegrable (A : ℝ) (hA : 0 ≤ A)
    (g : ℝ → ℝ) (hg : Continuous g) :
    IntervalIntegrable (fun u ↦ primeHarmonicPrefix u * g u) volume 0 A := by
  classical
  let H := (Finset.Icc 2 ⌊Real.exp A⌋₊).filter Nat.Prime
  let f (p : ℕ) (u : ℝ) := (Real.log (p : ℝ) / (p : ℝ)) *
    (if Real.log (p : ℝ) ≤ u then g u else 0)
  have hi (p : ℕ) : IntervalIntegrable (f p) volume 0 A :=
    (closed_tail_intervalIntegrable g A _ hA hg.integrableOn_Icc).const_mul _
  have hs : IntervalIntegrable (fun u ↦ ∑ p ∈ H, f p u) volume 0 A := by
    have he : (∑ p ∈ H, f p) = (fun u ↦ ∑ p ∈ H, f p u) :=
      funext (fun u ↦ Finset.sum_apply u H f)
    rw [← he]
    exact IntervalIntegrable.sum H (fun p _ ↦ hi p)
  apply hs.congr
  intro u hu
  rw [uIoc_of_le hA] at hu
  dsimp only
  symm
  rw [primeHarmonicPrefix_eq_threshold_sum A u hu.2, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro p _
  simp only [f]
  split_ifs <;> simp

/-- Exact finite logarithmic Abel summation for a differentiable weight vanishing at A. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbelStatements/Variantcdc15a19bd6cbf998ad63ede378bc442ffea83313931eb0f6b701f782bc3f33e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbelStatements/Variantcdc15a19bd6cbf998ad63ede378bc442ffea83313931eb0f6b701f782bc3f33e.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a784c05d3092f4296615592e3c99e847fa5bd5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
