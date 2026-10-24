# a_four_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9ac92174-2527-9521-6586-f5dcef714a2e",
  "kind": "theorem",
  "lexical_name": "a_four_le",
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
  "slug": "a-four-le--bdfc623e1d684bcae36d1290",
  "source": {
    "blob": "6325e3e97c76b9bf02d96145689df6e8fb0061c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 131,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerPotentialPhaseNative04/Variant9295d6500975153210c37f0fdb948811e30e831eb5b8e49d88e443c3364e3696.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bdfc623e1d684bcae36d12901a9b5540ccac4a8b42b806a1ec4090d0787857a3",
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

Occurrence: `result:9ac92174-2527-9521-6586-f5dcef714a2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem a_four_le (n : ℕ) (hn : 2 ≤ n) : a 4 n ≤ 1/(n:ℝ)^4 := by
  have hp : 0 < (n:ℝ) := by exact_mod_cast lt_of_lt_of_le (by norm_num : 0 < 2) hn
  have hl : 0 < Real.log (n:ℝ) := Real.log_pos (by exact_mod_cast hn)
  have hc : ArithmeticFunction.vonMangoldt n / Real.log (n:ℝ) ≤ 1 :=
    (div_le_one hl).mpr ArithmeticFunction.vonMangoldt_le_log
  have he : Real.exp (-4*Real.log (n:ℝ)) = 1/(n:ℝ)^4 := by
    rw [show -4*Real.log (n:ℝ) = -(Real.log (n:ℝ)*4) by ring,
      Real.exp_neg, ← Real.rpow_def_of_pos hp, Real.rpow_natCast]
    rfl
  rw [a, ← he]
  exact mul_le_of_le_one_left (Real.exp_pos _).le hc

/-- A genuine actual-source phase counterexample on a right line, at every real A≥1.
The complete remaining closed inventory is paid by a telescoping fourth-power tail. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerPotentialPhaseNative04/Variant9295d6500975153210c37f0fdb948811e30e831eb5b8e49d88e443c3364e3696.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerPotentialPhaseNative04/Variant9295d6500975153210c37f0fdb948811e30e831eb5b8e49d88e443c3364e3696.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6325e3e97c76b9bf02d96145689df6e8fb0061c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
