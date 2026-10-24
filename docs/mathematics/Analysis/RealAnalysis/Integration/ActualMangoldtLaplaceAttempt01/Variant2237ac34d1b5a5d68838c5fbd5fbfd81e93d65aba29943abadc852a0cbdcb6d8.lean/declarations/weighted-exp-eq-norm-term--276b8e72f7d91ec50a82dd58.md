# weighted_exp_eq_norm_term

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1fc6f5bd-e73e-e494-61f6-6bd90d27b5cb",
  "kind": "theorem",
  "lexical_name": "weighted_exp_eq_norm_term",
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
  "slug": "weighted-exp-eq-norm-term--276b8e72f7d91ec50a82dd58",
  "source": {
    "blob": "8f9bbd35d3926f57acb2ca95d73643c7a424a26e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 55,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variant2237ac34d1b5a5d68838c5fbd5fbfd81e93d65aba29943abadc852a0cbdcb6d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:276b8e72f7d91ec50a82dd588029137c3f2832d928767d87519f0fa1b11b1afa",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variant2237ac34d1b5a5d68838c5fbd5fbfd81e93d65aba29943abadc852a0cbdcb6d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fc6f5bd-e73e-e494-61f6-6bd90d27b5cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_exp_eq_norm_term (s : ℝ) (n : ℕ) :
    mangoldtWeight n * Real.exp (-s * Real.log ((n+2 : ℕ) : ℝ)) =
      ‖LSeries.term (fun k : ℕ => (ArithmeticFunction.vonMangoldt k : ℂ))
        ((s+1 : ℝ) : ℂ) (n+2)‖ := by
  rw [LSeries.norm_term_eq,if_neg (by omega : n+2 ≠ 0)]
  simp only [Complex.norm_real,Real.norm_eq_abs,abs_of_nonneg ArithmeticFunction.vonMangoldt_nonneg,
    Complex.ofReal_re]
  have hc : 0 < ((n+2 : ℕ) : ℝ) := by positivity
  rw [Real.rpow_add hc,Real.rpow_one,Real.rpow_def_of_pos hc]
  simp only [mangoldtWeight,neg_mul,Real.exp_neg]
  rw [mul_comm (Real.log ((n+2 : ℕ) : ℝ)) s]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variant2237ac34d1b5a5d68838c5fbd5fbfd81e93d65aba29943abadc852a0cbdcb6d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variant2237ac34d1b5a5d68838c5fbd5fbfd81e93d65aba29943abadc852a0cbdcb6d8.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f9bbd35d3926f57acb2ca95d73643c7a424a26e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
