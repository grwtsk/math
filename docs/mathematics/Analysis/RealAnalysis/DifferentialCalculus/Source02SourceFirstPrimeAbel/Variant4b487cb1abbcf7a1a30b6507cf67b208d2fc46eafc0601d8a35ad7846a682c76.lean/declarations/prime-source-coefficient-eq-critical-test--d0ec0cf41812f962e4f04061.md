# prime_source_coefficient_eq_critical_test

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32b2e794-00ce-f8db-c386-ffbd8d31dac2",
  "kind": "theorem",
  "lexical_name": "prime_source_coefficient_eq_critical_test",
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
  "slug": "prime-source-coefficient-eq-critical-test--d0ec0cf41812f962e4f04061",
  "source": {
    "blob": "29de7ed49e75d3b6b29b212ae699fbbfc78fdc95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 70,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Source02SourceFirstPrimeAbel/Variant4b487cb1abbcf7a1a30b6507cf67b208d2fc46eafc0601d8a35ad7846a682c76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0ec0cf41812f962e4f04061b2a187f220a7364cfb1fc32e2dc750cf38bd521c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Source02SourceFirstPrimeAbel/Variant4b487cb1abbcf7a1a30b6507cf67b208d2fc46eafc0601d8a35ad7846a682c76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32b2e794-00ce-f8db-c386-ffbd8d31dac2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_source_coefficient_eq_critical_test (A : ℝ) {p : ℕ} (hp : p.Prime) :
    ArithmeticFunction.vonMangoldt p * closedPrimeWeight A p =
      Real.log (p : ℝ) / (p : ℝ) * criticalPrimeTest A (Real.log p) := by
  have hp0 : 0 < (p : ℝ) := by exact_mod_cast hp.pos
  have he : Real.exp (-Real.log (p : ℝ) / 2) =
      Real.exp (Real.log (p : ℝ) / 2) / (p : ℝ) := by
    calc
      Real.exp (-Real.log (p : ℝ) / 2) =
          Real.exp (Real.log (p : ℝ) / 2 - Real.log p) := by congr 1; ring
      _ = Real.exp (Real.log (p : ℝ) / 2) / Real.exp (Real.log p) :=
        Real.exp_sub _ _
      _ = Real.exp (Real.log (p : ℝ) / 2) / (p : ℝ) := by rw [Real.exp_log hp0]
  rw [ArithmeticFunction.vonMangoldt_apply_prime hp]
  unfold closedPrimeWeight exponentialTest criticalPrimeTest
  rw [he]
  ring

/-- The first-prime sector is exactly the critical logarithmic quadrature,
with the original closed floor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Source02SourceFirstPrimeAbel/Variant4b487cb1abbcf7a1a30b6507cf67b208d2fc46eafc0601d8a35ad7846a682c76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Source02SourceFirstPrimeAbel/Variant4b487cb1abbcf7a1a30b6507cf67b208d2fc46eafc0601d8a35ad7846a682c76.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29de7ed49e75d3b6b29b212ae699fbbfc78fdc95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
