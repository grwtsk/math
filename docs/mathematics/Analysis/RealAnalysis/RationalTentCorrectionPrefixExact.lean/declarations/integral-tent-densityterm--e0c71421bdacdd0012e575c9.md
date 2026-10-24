# integral_tent_densityTerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:655af105-9b38-da4f-2742-ee3571dc818f",
  "kind": "theorem",
  "lexical_name": "integral_tent_densityTerm",
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
  "slug": "integral-tent-densityterm--e0c71421bdacdd0012e575c9",
  "source": {
    "blob": "410b2a3dc873896136a17bdb5985d2b8d1d33ff1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 199,
    "path": "GRWTSK/Analysis/Real/RationalTentCorrectionPrefixExact.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0c71421bdacdd0012e575c976111c7df47c88984e6ed9f5f10d543231f85be3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/RationalTentCorrectionPrefixExact.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:655af105-9b38-da4f-2742-ee3571dc818f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_tent_densityTerm
    (k : ℕ) (x h : ℚ) (hh : 0 < h) (ha : 1 < x - h) :
    (∫ t in ((x - h : ℚ) : ℝ)..((x + h : ℚ) : ℝ),
      tent (x : ℝ) (h : ℝ) t * densityTerm k t) =
        (termQ k x h : ℝ) := by
  have hhR : (0 : ℝ) < (h : ℝ) := by exact_mod_cast hh
  have haR : (1 : ℝ) < (x : ℝ) - (h : ℝ) := by exact_mod_cast ha
  have hleft : IntervalIntegrable
      (fun t => tent (x : ℝ) (h : ℝ) t * densityTerm k t)
      volume ((x : ℝ) - (h : ℝ)) (x : ℝ) := by
    apply ContinuousOn.intervalIntegrable_of_Icc (by linarith)
    exact (continuous_tent (x : ℝ) (h : ℝ)).continuousOn.mul
      (densityTerm_continuousOn k (by linarith))
  have hright : IntervalIntegrable
      (fun t => tent (x : ℝ) (h : ℝ) t * densityTerm k t)
      volume (x : ℝ) ((x : ℝ) + (h : ℝ)) := by
    apply ContinuousOn.intervalIntegrable_of_Icc (by linarith)
    exact (continuous_tent (x : ℝ) (h : ℝ)).continuousOn.mul
      (densityTerm_continuousOn k (by linarith))
  have hformula := integral_tent_of_second_antiderivative
    (x : ℝ) (h : ℝ) hhR (primitive k) (primitiveSlope k) (densityTerm k)
    (fun t ht => hasDerivAt_primitive k t
      (ne_of_gt ((lt_trans zero_lt_one haR).trans_le ht.1)))
    (fun t ht => hasDerivAt_primitiveSlope k t
      (ne_of_gt ((lt_trans zero_lt_one haR).trans_le ht.1)))
    hleft hright
  have hh0 : h ≠ 0 := ne_of_gt hh
  have ha0 : x - h ≠ 0 := ne_of_gt (lt_trans zero_lt_one ha)
  have hx0 : x ≠ 0 := by linarith
  have hb0 : x + h ≠ 0 := by linarith
  rw [cast_termQ k x h hh0 ha0 hx0 hb0]
  simpa only [Rat.cast_sub, Rat.cast_add] using hformula

/-- Exact rational recursion for the complete finite correction prefix. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/RealAnalysis/RationalTentCorrectionPrefixExact.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Real/RationalTentCorrectionPrefixExact.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `410b2a3dc873896136a17bdb5985d2b8d1d33ff1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
