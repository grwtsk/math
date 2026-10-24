# betaIntegral_nat_factorials

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "750d168c84f4b3d56dcba3ddd3dc30ae681463df",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 10,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/08c22ee5db04cb846172e201994d5a331c01d576f8a732d5148cd83d6c2eff0b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c11a4b7-d419-8db1-2228-b5a5c3e3533e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b6fc5c9f-480a-a64b-d421-f2e95b1fada7",
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
  "slug": "betaintegral-nat-factorials--dfe5c6bd39651a2dd5c0cf81",
  "source": {
    "blob": "750d168c84f4b3d56dcba3ddd3dc30ae681463df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 23,
    "line": 10,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c22ee5db04cb846172e201994d5a331c01d576f8a732d5148cd83d6c2eff0bBeta/Variant08c22ee5db04cb846172e201994d5a331c01d576f8a732d5148cd83d6c2eff0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfe5c6bd39651a2dd5c0cf81afa0cf83b622d41eaa54befe67a521690904a0ef",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c22ee5db04cb846172e201994d5a331c01d576f8a732d5148cd83d6c2eff0bBeta/Variant08c22ee5db04cb846172e201994d5a331c01d576f8a732d5148cd83d6c2eff0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6fc5c9f-480a-a64b-d421-f2e95b1fada7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 10–23.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c22ee5db04cb846172e201994d5a331c01d576f8a732d5148cd83d6c2eff0bBeta/Variant08c22ee5db04cb846172e201994d5a331c01d576f8a732d5148cd83d6c2eff0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c22ee5db04cb846172e201994d5a331c01d576f8a732d5148cd83d6c2eff0bBeta/Variant08c22ee5db04cb846172e201994d5a331c01d576f8a732d5148cd83d6c2eff0b.lean#L10).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `750d168c84f4b3d56dcba3ddd3dc30ae681463df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
