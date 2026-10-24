# log_term_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a03be41-bb15-860b-1aa7-b09b52403e7c",
  "kind": "theorem",
  "lexical_name": "log_term_hasDerivAt",
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
  "slug": "log-term-hasderivat--c852b5e04b5bb15e32f4c543",
  "source": {
    "blob": "92b0132906a855b7f51c8f84e67bcbf8de92fed9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 38,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEulerLogarithmicPrimitiveNative02/Variant097b674a00587e56e498881496be249d97cc0b119e95a729e4781840a7f33fc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c852b5e04b5bb15e32f4c5439737fa51b747dd3e381eef2062bbffdafcd62d5c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEulerLogarithmicPrimitiveNative02/Variant097b674a00587e56e498881496be249d97cc0b119e95a729e4781840a7f33fc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a03be41-bb15-860b-1aa7-b09b52403e7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem log_term_hasDerivAt (n : ℕ) (s : ℂ) :
    HasDerivAt (fun z : ℂ =>
      ((ArithmeticFunction.vonMangoldt n / Real.log n : ℝ):ℂ) *
        Complex.exp (-z*(Real.log n:ℂ)))
      (-LSeries.term actualMangoldtCoefficients s n) s := by
  have h := (((hasDerivAt_id s).neg.mul_const (Real.log n:ℂ)).cexp).const_mul
    ((ArithmeticFunction.vonMangoldt n / Real.log n : ℝ):ℂ)
  convert! h using 1
  rcases eq_or_ne n 0 with rfl | hn0
  · simp [actualMangoldtCoefficients]
  rcases eq_or_ne n 1 with rfl | hn1
  · simp [actualMangoldtCoefficients]
  have hn2 : 2 ≤ n := by omega
  have hl : Real.log (n:ℝ) ≠ 0 := (Real.log_pos (by exact_mod_cast hn2)).ne'
  rw [term_eq_exp]
  push_cast
  field_simp

/-- Genuine derivative of the literal potential, with all closed actual coefficients. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEulerLogarithmicPrimitiveNative02/Variant097b674a00587e56e498881496be249d97cc0b119e95a729e4781840a7f33fc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEulerLogarithmicPrimitiveNative02/Variant097b674a00587e56e498881496be249d97cc0b119e95a729e4781840a7f33fc0.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92b0132906a855b7f51c8f84e67bcbf8de92fed9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
