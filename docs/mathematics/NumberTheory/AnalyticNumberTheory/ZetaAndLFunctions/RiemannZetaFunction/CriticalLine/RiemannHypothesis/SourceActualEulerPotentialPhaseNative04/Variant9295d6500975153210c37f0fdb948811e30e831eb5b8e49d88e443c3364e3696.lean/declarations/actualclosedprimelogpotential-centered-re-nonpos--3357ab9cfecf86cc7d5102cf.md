# actualClosedPrimeLogPotential_centered_re_nonpos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec956c28-2ffe-9d8e-360e-7fb69d653bab",
  "kind": "theorem",
  "lexical_name": "actualClosedPrimeLogPotential_centered_re_nonpos",
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
  "slug": "actualclosedprimelogpotential-centered-re-nonpos--3357ab9cfecf86cc7d5102cf",
  "source": {
    "blob": "6325e3e97c76b9bf02d96145689df6e8fb0061c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 49,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerPotentialPhaseNative04/Variant9295d6500975153210c37f0fdb948811e30e831eb5b8e49d88e443c3364e3696.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3357ab9cfecf86cc7d5102cf4c6861fe76da09ecb704481a6e6ec7de639de7a7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerPotentialPhaseNative04/Variant9295d6500975153210c37f0fdb948811e30e831eb5b8e49d88e443c3364e3696.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec956c28-2ffe-9d8e-360e-7fb69d653bab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualClosedPrimeLogPotential_centered_re_nonpos (A c t : ℝ) :
    (actualClosedPrimeLogPotential A ((c:ℂ)+(t:ℂ)*I) -
      actualClosedPrimeLogPotential A (c:ℂ)).re ≤ 0 := by
  have ht := actualClosedPrimeLogPotential_re A c t
  have hz := actualClosedPrimeLogPotential_re A c 0
  change _ = ∑ n ∈ Finset.range (⌊Real.exp (2*A)⌋₊+1), a c n * Real.cos (t * Real.log n) at ht
  change _ = ∑ n ∈ Finset.range (⌊Real.exp (2*A)⌋₊+1), a c n * Real.cos (0 * Real.log n) at hz
  simp only [Complex.ofReal_zero, zero_mul, add_zero, zero_mul, Real.cos_zero,
    mul_one] at hz
  simp only [Complex.sub_re, ht, hz]
  exact sub_nonpos.mpr (Finset.sum_le_sum fun n _ =>
    mul_le_of_le_one_right (a_nonneg c n) (Real.cos_le_one _))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerPotentialPhaseNative04/Variant9295d6500975153210c37f0fdb948811e30e831eb5b8e49d88e443c3364e3696.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerPotentialPhaseNative04/Variant9295d6500975153210c37f0fdb948811e30e831eb5b8e49d88e443c3364e3696.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6325e3e97c76b9bf02d96145689df6e8fb0061c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
