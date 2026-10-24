# actualPsiComplexMellin_mul_eq_LSeries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c797701-c262-3492-c190-22891c54dbe3",
  "kind": "theorem",
  "lexical_name": "actualPsiComplexMellin_mul_eq_LSeries",
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
  "slug": "actualpsicomplexmellin-mul-eq-lseries--37967e9feecfd08aceb6624b",
  "source": {
    "blob": "052def51559967c6b086b7f7eeb92e5764cbb7d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 79,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt02/Variantb5d9009c1beb20a11a6247097968ebffb546721dafeb61515565d7e8cc2c224c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37967e9feecfd08aceb6624b2362e2b1c23ad68307e8ea2616787e5cc6da1b89",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt02/Variantb5d9009c1beb20a11a6247097968ebffb546721dafeb61515565d7e8cc2c224c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c797701-c262-3492-c190-22891c54dbe3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPsiComplexMellin_mul_eq_LSeries {s : ℂ} (hs : 1 < s.re) :
    s * actualPsiComplexMellin s =
      LSeries (fun n => ((ArithmeticFunction.vonMangoldt n : ℝ) : ℂ)) s := by
  have hh := LSeries_eq_mul_integral_of_nonneg
    (fun n => (ArithmeticFunction.vonMangoldt n : ℝ)) (by norm_num : (0 : ℝ) ≤ 1)
      hs actual_vonMangoldt_prefix_bigO (fun n => ArithmeticFunction.vonMangoldt_nonneg)
  rw [hh]
  unfold actualPsiComplexMellin
  congr 1
  apply setIntegral_congr_fun measurableSet_Ioi
  intro x _
  dsimp only
  rw [psi_eq_closed_sum, ofReal_sum]

/-- The actual complex Chebyshev Mellin transform is the genuine zeta logarithmic derivative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt02/Variantb5d9009c1beb20a11a6247097968ebffb546721dafeb61515565d7e8cc2c224c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Attempt02/Variantb5d9009c1beb20a11a6247097968ebffb546721dafeb61515565d7e8cc2c224c.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `052def51559967c6b086b7f7eeb92e5764cbb7d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
