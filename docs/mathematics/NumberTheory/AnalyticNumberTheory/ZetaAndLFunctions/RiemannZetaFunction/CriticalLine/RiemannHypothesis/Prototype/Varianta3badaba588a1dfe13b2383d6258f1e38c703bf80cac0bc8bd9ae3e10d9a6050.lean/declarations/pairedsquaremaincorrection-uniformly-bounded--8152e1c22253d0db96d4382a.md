# pairedSquareMainCorrection_uniformly_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e474d08-4059-da11-ddb9-4ae1219aa5ad",
  "kind": "theorem",
  "lexical_name": "pairedSquareMainCorrection_uniformly_bounded",
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
  "slug": "pairedsquaremaincorrection-uniformly-bounded--8152e1c22253d0db96d4382a",
  "source": {
    "blob": "5d5501b686f2f16916df3744ace77e18ba77754b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 54,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Varianta3badaba588a1dfe13b2383d6258f1e38c703bf80cac0bc8bd9ae3e10d9a6050.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8152e1c22253d0db96d4382ac8a20515a440477176daed3413f8f3ce39b9ef14",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Varianta3badaba588a1dfe13b2383d6258f1e38c703bf80cac0bc8bd9ae3e10d9a6050.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e474d08-4059-da11-ddb9-4ae1219aa5ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairedSquareMainCorrection_uniformly_bounded :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ A : ℝ, 1 ≤ A → |pairedSquareMainCorrection A| ≤ C := by
  obtain ⟨C, hC0, _, hC⟩ := primeSquareMoment_uniform_main_term_error
  refine ⟨11 * C + squarePrefixBaseline, ?_, ?_⟩
  · have hb := squarePrefixBaseline_nonneg
    linarith
  · intro A hA
    have hm0 : 0 ≤ squarePrefixBaseline - squareTailNegativeMean A :=
      sub_nonneg.mpr (squareTailNegativeMean_le_baseline hA)
    have hm : squarePrefixBaseline - squareTailNegativeMean A ≤ squarePrefixBaseline :=
      sub_le_self _ (squareTailNegativeMean_nonneg hA)
    have hs : |diagonalMainCoefficient A * A - primeSquareMoment A| ≤ 11 * C := by
      rw [abs_sub_comm]
      exact hC A hA
    unfold pairedSquareMainCorrection
    exact (abs_add_le _ _).trans (add_le_add hs (by rwa [abs_of_nonneg hm0]))

/-- No piece of the full time-mean minus continuous-half drift is absorbed into a budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Varianta3badaba588a1dfe13b2383d6258f1e38c703bf80cac0bc8bd9ae3e10d9a6050.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Varianta3badaba588a1dfe13b2383d6258f1e38c703bf80cac0bc8bd9ae3e10d9a6050.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d5501b686f2f16916df3744ace77e18ba77754b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
