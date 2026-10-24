# ChebyshevMertens

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7bfd98c8d25922fe72f0febb3290135281779967ad4ec793e846ce9532b52d0f",
  "kind": "structure",
  "lexical_name": "ChebyshevMertens",
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
  "slug": "chebyshevmertens--ec7d6b0789a29e4b31286333",
  "source": {
    "blob": "d81d0ae15629e3345e6a1d9235fc21ac491425a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 91,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variant1e604b4f29fb39971a7d8f28e4371bc6950752e37174d261527c19336d70ff2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec7d6b0789a29e4b312863337091c15afa46744e09decde64af32cc2e11acaf0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variant1e604b4f29fb39971a7d8f28e4371bc6950752e37174d261527c19336d70ff2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7bfd98c8d25922fe72f0febb3290135281779967ad4ec793e846ce9532b52d0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ChebyshevMertens : Prop where
  cheb1a : ∃ C : ℝ, ∀ x : ℝ, 2 ≤ x → ∑ n ∈ Finset.Ioc 0 ⌊x⌋₊, Λ n ≤ C * x
  cheb1b : ∃ x₀ : ℝ, ∀ x : ℝ, x₀ ≤ x →
    ∑ n ∈ Finset.Ioc 0 ⌊x⌋₊, Λ n / Real.sqrt n ≤ 3 * Real.sqrt x
  cheb1c : ∃ C : ℝ, ∀ x : ℝ, 2 ≤ x →
    ∑ n ∈ Finset.Ioc 0 ⌊x⌋₊, Λ n / (Real.sqrt n * Real.log n) ≤ C * Real.sqrt x / Real.log x
  cheb1d : ∃ C : ℝ, ∀ x : ℝ, 2 ≤ x → ∑ n ∈ Finset.Ioc 0 ⌊x⌋₊, Λ n ^ 2 ≤ C * x * Real.log x
  cheb2a : ∃ C : ℝ, ∀ x : ℝ, 2 ≤ x →
    |∑ n ∈ Finset.Ioc 0 ⌊x⌋₊, Λ n ^ 2 / n - Real.log x ^ 2 / 2| ≤ C * Real.log x
  cheb2b : ∃ C : ℝ, ∀ x : ℝ, 2 ≤ x →
    |∑ n ∈ Finset.Ioc 0 ⌊x⌋₊, Λ n ^ 2 / n * (Real.log x - Real.log n) - Real.log x ^ 3 / 6|
      ≤ C * Real.log x ^ 2

/-! ## H-MV — Montgomery–Vaughan weighted Hilbert inequality  [lem:MV] -/

/-- The weighted ("generalised") Hilbert inequality with constant C [lem:MV], verbatim:
"Let λ_1,…,λ_R be distinct real numbers, δ_r := min_{s≠r} |λ_r − λ_s|, and x_r, z_r ∈ ℂ. Then
  |Σ_{r≠s} x_r conj(z_s)/(λ_r − λ_s)| ≤ (3π/2) (Σ_r |x_r|²/δ_r)^{1/2} (Σ_r |z_r|²/δ_r)^{1/2}."
Source: [MV74, Theorem 2] for z = x (the paper citation); the bilinear form is derived in the paper by a
3-line operator-norm argument. "Any absolute constant in place of 3π/2 would suffice below."
Shape notes: index set = any Fintype ι with DecidableEq; distinctness = injectivity of freq; instead
of δ_r := min_{s≠r}|λ_r−λ_s| (undefined for R = 1) we allow ANY admissible weights 0 < δ_r ≤
|λ_r − λ_s| (s ≠ r) — equivalent to the paper's statement since the right side is antitone in δ.
The bilinear (x,z) form is assumed directly (it is what prop:PP/prop:cross consume). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variant1e604b4f29fb39971a7d8f28e4371bc6950752e37174d261527c19336d70ff2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variant1e604b4f29fb39971a7d8f28e4371bc6950752e37174d261527c19336d70ff2c.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d81d0ae15629e3345e6a1d9235fc21ac491425a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
