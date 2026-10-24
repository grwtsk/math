# actual_half_upper_quotient_exp_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e35dc646-6cd9-3aa5-bca3-c1c70e4eb66d",
  "kind": "theorem",
  "lexical_name": "actual_half_upper_quotient_exp_lower",
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
  "slug": "actual-half-upper-quotient-exp-lower--a3f6eb87e5effbaae8deaf79",
  "source": {
    "blob": "cd8b6da4d40ceef733eeabc96f9b8163d7a1a7eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 49,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variant8ff20f3a72cb04094831eb92342e98d75aa861895c552e1aa53b9a8afa7ad05e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3f6eb87e5effbaae8deaf79f808e6ed806a15aad3b091e107df9fc276e90644",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variant8ff20f3a72cb04094831eb92342e98d75aa861895c552e1aa53b9a8afa7ad05e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e35dc646-6cd9-3aa5-bca3-c1c70e4eb66d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_half_upper_quotient_exp_lower {A : ℝ} (hA : 4 ≤ A) :
    Real.exp (2 * A) ≤ 4 * ((vaughanCutoff A + 1 : ℕ) : ℝ) *
      ((sourceKernelCutoff A / (vaughanCutoff A + 1) - 1 : ℕ) : ℝ) := by
  let a := vaughanCutoff A + 1
  let N := sourceKernelCutoff A
  let K := N / a
  let L := K - 1
  have ha0 : 0 < a := by dsimp [a]; omega
  have ha1 : (1 : ℝ) ≤ (a : ℝ) := by exact_mod_cast (show 1 ≤ a by omega)
  have hK : a ≤ K := actual_column_window_nonempty (by linarith)
  have hK0 : 1 ≤ K := by omega
  have hKL : K = L + 1 := by omega
  have he := Nat.mod_add_div N a
  have hm := Nat.mod_lt N ha0
  have heR : ((N % a : ℕ) : ℝ) + (a : ℝ) * (K : ℝ) = (N : ℝ) := by
    exact_mod_cast he
  have hmR : ((N % a : ℕ) : ℝ) < (a : ℝ) := by exact_mod_cast hm
  have hNR : (N : ℝ) < (a : ℝ) * ((L : ℝ) + 2) := by
    have hKLR : (K : ℝ) = (L : ℝ) + 1 := by exact_mod_cast hKL
    nlinarith
  have hfloor : Real.exp (2 * A) < (N : ℝ) + 1 := Nat.lt_floor_add_one _
  have hg : 6 * (a : ℝ) ≤ Real.exp (2 * A) := exp_lower_cutoff hA
  change Real.exp (2 * A) ≤ 4 * (a : ℝ) * (L : ℝ)
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variant8ff20f3a72cb04094831eb92342e98d75aa861895c552e1aa53b9a8afa7ad05e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variant8ff20f3a72cb04094831eb92342e98d75aa861895c552e1aa53b9a8afa7ad05e.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd8b6da4d40ceef733eeabc96f9b8163d7a1a7eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
