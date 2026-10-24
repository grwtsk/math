# exponentialTerm_hasSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee6c1ba1-be41-0775-d2e6-db9cb832efa3",
  "kind": "lemma",
  "lexical_name": "exponentialTerm_hasSum",
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
  "slug": "exponentialterm-hassum--8bdaa4f590d3e66901ce9a42",
  "source": {
    "blob": "fa1e6fbb41ce2aabcdf8ec6c4d001cf52eb33312",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 42,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Positivity/Variant731fc76392aeaa60a3e588e8884c90a229906e366ad8f2cd45ecfdda957de4a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bdaa4f590d3e66901ce9a423d80384ff134bb731395cebbc85f1da5e14c3a1e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Positivity/Variant731fc76392aeaa60a3e588e8884c90a229906e366ad8f2cd45ecfdda957de4a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee6c1ba1-be41-0775-d2e6-db9cb832efa3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma exponentialTerm_hasSum (v r : ℝ) (ω : Ω) :
    HasSum (fun n ↦ exponentialTerm (X := X) v r n ω)
      (Real.exp ((v + r) * X ω)) := by
  have h := (NormedSpace.expSeries_div_hasSum_exp (r * X ω)).mul_right
    (Real.exp (v * X ω))
  rw [← Real.exp_eq_exp_ℝ] at h
  convert! h using 1
  · ext n
    simp only [exponentialTerm, mul_pow]
    ring
  · rw [← Real.exp_add]
    congr 1
    ring

/-- Summable nonnegative tilted moments yield genuine exponential integrability at
an additional nonnegative parameter. This is the positivity step in Landau's argument. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Positivity/Variant731fc76392aeaa60a3e588e8884c90a229906e366ad8f2cd45ecfdda957de4a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Positivity/Variant731fc76392aeaa60a3e588e8884c90a229906e366ad8f2cd45ecfdda957de4a3.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa1e6fbb41ce2aabcdf8ec6c4d001cf52eb33312` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
