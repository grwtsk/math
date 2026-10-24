# betaIntegral_nat_factorials

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7fdd56e8-40be-0ad5-cc5f-1f4e8e4325ef",
  "kind": "theorem",
  "lexical_name": "betaIntegral_nat_factorials",
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
  "slug": "betaintegral-nat-factorials--182e7fe5e8ec5461473a4385",
  "source": {
    "blob": "5cbfd06db41234b08f7a577f1021be4cd067c1c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 18,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c22ee5db04cb846172e201994d5a331c01d576f8a732d5148cd83d6c2eff0bBeta/Variant9cc4b5243919af9518132caa7b1898fcee9690b49c984e16e624b0086e2a1a40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:182e7fe5e8ec5461473a438549d309c6b39575d42338b0895053d888fb519bda",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c22ee5db04cb846172e201994d5a331c01d576f8a732d5148cd83d6c2eff0bBeta/Variant9cc4b5243919af9518132caa7b1898fcee9690b49c984e16e624b0086e2a1a40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7fdd56e8-40be-0ad5-cc5f-1f4e8e4325ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem betaIntegral_nat_factorials (a b : ℕ) :
    Complex.betaIntegral ((a : ℂ) + 1) ((b : ℂ) + 1) =
      (a.factorial : ℂ) * (b.factorial : ℂ) / ((a + b + 1).factorial : ℂ) := by
  have h := Complex.Gamma_mul_Gamma_eq_betaIntegral
    (s := (a : ℂ) + 1) (t := (b : ℂ) + 1) (by simp; positivity) (by simp; positivity)
  have hsum : (a : ℂ) + 1 + ((b : ℂ) + 1) = ((a + b + 1 : ℕ) : ℂ) + 1 := by
    push_cast
    ring
  rw [hsum, Complex.Gamma_nat_eq_factorial, Complex.Gamma_nat_eq_factorial,
    Complex.Gamma_nat_eq_factorial] at h
  apply (eq_div_iff (by exact_mod_cast Nat.factorial_ne_zero (a + b + 1))).mpr
  simpa only [mul_comm] using h.symm

/-- Natural polynomial specialization of Mathlib's scaled complex beta integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c22ee5db04cb846172e201994d5a331c01d576f8a732d5148cd83d6c2eff0bBeta/Variant9cc4b5243919af9518132caa7b1898fcee9690b49c984e16e624b0086e2a1a40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c22ee5db04cb846172e201994d5a331c01d576f8a732d5148cd83d6c2eff0bBeta/Variant9cc4b5243919af9518132caa7b1898fcee9690b49c984e16e624b0086e2a1a40.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cbfd06db41234b08f7a577f1021be4cd067c1c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
