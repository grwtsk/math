# weighted_exp_eq_term

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43212018-b7e4-17a2-e012-347ac3f92912",
  "kind": "theorem",
  "lexical_name": "weighted_exp_eq_term",
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
  "slug": "weighted-exp-eq-term--a0cfe0d636d7a6f92bad34f1",
  "source": {
    "blob": "30d6b53b3195808e30643c8a038bb87a0bdcd5d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 190,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant6280a677c82124eec6d607384c24c758f3c6f066ec57fad6e104699c11a360ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0cfe0d636d7a6f92bad34f1ad9248e9c42f77c804e9c0fd63e28a4752294803",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant6280a677c82124eec6d607384c24c758f3c6f066ec57fad6e104699c11a360ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43212018-b7e4-17a2-e012-347ac3f92912`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_exp_eq_term (s : ℝ) (n : ℕ) :
    ((mangoldtWeight n * Real.exp (-s * Real.log ((n+2 : ℕ) : ℝ)) : ℝ) : ℂ) =
      LSeries.term (fun k : ℕ => (ArithmeticFunction.vonMangoldt k : ℂ))
        ((s+1 : ℝ) : ℂ) (n+2) := by
  rw [weighted_exp_eq_norm_term,LSeries.norm_term_eq,if_neg (by omega : n+2 ≠ 0),
    LSeries.term_of_ne_zero (by omega : n+2 ≠ 0)]
  simp only [Complex.norm_real,Real.norm_eq_abs,abs_of_nonneg ArithmeticFunction.vonMangoldt_nonneg,
    Complex.ofReal_re]
  change ((ArithmeticFunction.vonMangoldt (n+2) / ((n+2:ℕ):ℝ)^(s+1) : ℝ):ℂ) =
    (ArithmeticFunction.vonMangoldt (n+2):ℂ) / (((n+2:ℕ):ℝ):ℂ)^((s+1:ℝ):ℂ)
  rw [←Complex.ofReal_cpow (by positivity : 0 ≤ ((n+2:ℕ):ℝ)),Complex.ofReal_div]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant6280a677c82124eec6d607384c24c758f3c6f066ec57fad6e104699c11a360ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant6280a677c82124eec6d607384c24c758f3c6f066ec57fad6e104699c11a360ae.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30d6b53b3195808e30643c8a038bb87a0bdcd5d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
