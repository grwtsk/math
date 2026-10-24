# dampedDivisorCoefficient_real_prefix_first_order

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56658e95-c883-3978-51fa-f3a81b0f97f1",
  "kind": "theorem",
  "lexical_name": "dampedDivisorCoefficient_real_prefix_first_order",
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
  "slug": "dampeddivisorcoefficient-real-prefix-first-order--4e783a510553f2340ec1e2e1",
  "source": {
    "blob": "970a5d1234df03056cfa5f1d946e87c2f6c68b9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 98,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TaylorAudit/Variante596eba8e531083faed09414a03b469c260f7b5e1996131b816f07825c75cfdb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e783a510553f2340ec1e2e1d0895202a7e3a2f32122f52a1c440427e758af79",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TaylorAudit/Variante596eba8e531083faed09414a03b469c260f7b5e1996131b816f07825c75cfdb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56658e95-c883-3978-51fa-f3a81b0f97f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dampedDivisorCoefficient_real_prefix_first_order (ε : ℝ) (hε : 0 ≤ ε)
    (x : ℝ) (hx : 1 ≤ x) :
    |(∑ n ∈ Icc 1 ⌊x⌋₊, dampedDivisorCoefficient ε n) - 1 -
      ε * ∑ n ∈ Icc 1 ⌊x⌋₊, ArithmeticFunction.vonMangoldt n| ≤
        ε ^ 2 * x * Real.log x ^ 2 := by
  have hN : 1 ≤ ⌊x⌋₊ := (Nat.le_floor_iff (by linarith)).mpr (by simpa using hx)
  have hb := dampedDivisorCoefficient_prefix_first_order ε hε ⌊x⌋₊ hN
  have hle : (⌊x⌋₊ : ℝ) ≤ x := Nat.floor_le (by linarith)
  have h0 : 0 ≤ Real.log (⌊x⌋₊ : ℝ) := Real.log_nonneg (by exact_mod_cast hN)
  have hl : Real.log (⌊x⌋₊ : ℝ) ≤ Real.log x :=
    Real.log_le_log (by exact_mod_cast (show 0 < ⌊x⌋₊ by omega)) hle
  have hs : Real.log (⌊x⌋₊ : ℝ) ^ 2 ≤ Real.log x ^ 2 := by nlinarith
  exact hb.trans (mul_le_mul (mul_le_mul_of_nonneg_left hle (sq_nonneg ε)) hs
    (sq_nonneg _) (by positivity))

/-- Before the actual cutoff, the signed source differs from its exact prime prefix by this
budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TaylorAudit/Variante596eba8e531083faed09414a03b469c260f7b5e1996131b816f07825c75cfdb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TaylorAudit/Variante596eba8e531083faed09414a03b469c260f7b5e1996131b816f07825c75cfdb.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `970a5d1234df03056cfa5f1d946e87c2f6c68b9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
