# abs_trG2integrand_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0351060-e31f-4145-063e-3274d19c92c1",
  "kind": "theorem",
  "lexical_name": "abs_trG2integrand_le",
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
  "slug": "abs-trg2integrand-le--644684f6804856b3a82b6ad8",
  "source": {
    "blob": "b5f23d8eb71ee49598a67dfbfdc8d83be3542a04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 37,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsE2/Variant882c42387d3e86e9627a0e81af08001f6ca3b952d72c53fa6f64a3e0b2879567.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:644684f6804856b3a82b6ad888f081f182216bd8869a75471edd249f798e1a2b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EndsE2/Variant882c42387d3e86e9627a0e81af08001f6ca3b952d72c53fa6f64a3e0b2879567.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0351060-e31f-4145-063e-3274d19c92c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_trG2integrand_le (hF : LocalHypsCoreW cϱ p F) (q : ℝ × ℝ) :
    |trG2integrand p F ν q| ≤ p.L ^ 2 *
      (∑ k ∈ Finset.range p.d, psiA cϱ p (q.1 - p.tau k) * psiA cϱ p (q.2 - p.tau k))
      * (|ν q.1| * |ν q.2|) := by
  have hK2 : Kfun p F q.1 q.2 ^ 2 ≤ p.L ^ 2 *
      ∑ k ∈ Finset.range p.d, psiA cϱ p (q.1 - p.tau k) * psiA cϱ p (q.2 - p.tau k) := by
    have h1 := abs_Kfun_le hF q.1 q.2
    have h2 := abs_Kfun_le_sum_psiA hF q.1 q.2
    rw [Fin.sum_univ_eq_sum_range
      (fun i : ℕ => psiA cϱ p (q.1 - p.tau i) * psiA cϱ p (q.2 - p.tau i)) p.d] at h2
    calc Kfun p F q.1 q.2 ^ 2 = |Kfun p F q.1 q.2| * |Kfun p F q.1 q.2| := by
          rw [← sq_abs]; ring
      _ ≤ p.L ^ 2 * ∑ k ∈ Finset.range p.d,
            psiA cϱ p (q.1 - p.tau k) * psiA cϱ p (q.2 - p.tau k) := by
          exact mul_le_mul h1 h2 (abs_nonneg _) (by positivity)
  calc |trG2integrand p F ν q|
      = Kfun p F q.1 q.2 ^ 2 * (|ν q.1| * |ν q.2|) := by
        unfold trG2integrand
        rw [abs_mul, abs_mul, abs_of_nonneg (sq_nonneg _), mul_assoc]
    _ ≤ _ := by
        gcongr

/-- the 𝓔₂ majorant kernel with its ν-weights: `L²·(Σ_{k<d} ψ(τ−τ_k)ψ(τ'−τ_k))·|ν(τ)||ν(τ')|`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EndsE2/Variant882c42387d3e86e9627a0e81af08001f6ca3b952d72c53fa6f64a3e0b2879567.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EndsE2/Variant882c42387d3e86e9627a0e81af08001f6ca3b952d72c53fa6f64a3e0b2879567.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5f23d8eb71ee49598a67dfbfdc8d83be3542a04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
