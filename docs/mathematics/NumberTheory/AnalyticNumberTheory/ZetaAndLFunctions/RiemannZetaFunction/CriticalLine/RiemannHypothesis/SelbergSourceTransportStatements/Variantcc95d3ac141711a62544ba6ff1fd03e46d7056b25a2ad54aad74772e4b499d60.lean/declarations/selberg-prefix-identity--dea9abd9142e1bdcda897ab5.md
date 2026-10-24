# selberg_prefix_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66fa1e7e-7509-88e6-dab8-aaccbe2da4bf",
  "kind": "theorem",
  "lexical_name": "selberg_prefix_identity",
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
  "slug": "selberg-prefix-identity--dea9abd9142e1bdcda897ab5",
  "source": {
    "blob": "de20f8ead3a0ccddd1d9f995dbf387315aabd11d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 125,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceTransportStatements/Variantcc95d3ac141711a62544ba6ff1fd03e46d7056b25a2ad54aad74772e4b499d60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dea9abd9142e1bdcda897ab58b0e379152a39274c2ce0ac93aaa8061d5fe1b4a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceTransportStatements/Variantcc95d3ac141711a62544ba6ff1fd03e46d7056b25a2ad54aad74772e4b499d60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66fa1e7e-7509-88e6-dab8-aaccbe2da4bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem selberg_prefix_identity (x : ℝ) :
    selbergPrefix x = ∑ n ∈ Icc 1 ⌊x⌋₊, selbergCoefficient n := by
  symm
  calc
    _ = ∑ n ∈ Icc 1 ⌊x⌋₊, ∑ q ∈ n.divisorsAntidiagonal,
        (ArithmeticFunction.moebius q.1 : ℝ) * Real.log (q.2 : ℝ) ^ 2 := by
      apply sum_congr rfl
      intro n _
      exact (selberg_antidiagonal_identity n).symm
    _ = ∑ d ∈ Icc 1 ⌊x⌋₊, ∑ m ∈ Icc 1 ⌊x⌋₊,
        if d * m ∈ Icc 1 ⌊x⌋₊ then
          (ArithmeticFunction.moebius d : ℝ) * Real.log (m : ℝ) ^ 2 else 0 :=
      divisors_sum_eq_filtered_product ⌊x⌋₊ (Icc 1 ⌊x⌋₊) (fun _ h ↦ h)
        (fun q ↦ (ArithmeticFunction.moebius q.1 : ℝ) * Real.log (q.2 : ℝ) ^ 2)
    _ = _ := by
      unfold selbergPrefix
      apply sum_congr rfl
      intro d hd
      rw [← sum_filter, closed_factor_cutoff_eq x d (mem_Icc.mp hd).1, mul_sum]

/-- The entire signed Möbius prefix is nonnegative because the exact coefficients are nonnegative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceTransportStatements/Variantcc95d3ac141711a62544ba6ff1fd03e46d7056b25a2ad54aad74772e4b499d60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceTransportStatements/Variantcc95d3ac141711a62544ba6ff1fd03e46d7056b25a2ad54aad74772e4b499d60.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de20f8ead3a0ccddd1d9f995dbf387315aabd11d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
