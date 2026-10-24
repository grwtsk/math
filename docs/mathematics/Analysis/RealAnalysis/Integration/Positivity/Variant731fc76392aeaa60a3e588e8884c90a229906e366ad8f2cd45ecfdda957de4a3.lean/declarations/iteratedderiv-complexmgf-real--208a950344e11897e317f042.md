# iteratedDeriv_complexMGF_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5db06c1f-8a52-ff84-9206-b4cad54f6dfc",
  "kind": "lemma",
  "lexical_name": "iteratedDeriv_complexMGF_real",
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
  "slug": "iteratedderiv-complexmgf-real--208a950344e11897e317f042",
  "source": {
    "blob": "fa1e6fbb41ce2aabcdf8ec6c4d001cf52eb33312",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 106,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Positivity/Variant731fc76392aeaa60a3e588e8884c90a229906e366ad8f2cd45ecfdda957de4a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:208a950344e11897e317f042305c718b89133a50aaaca90a8fac2048307f3978",
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

Occurrence: `result:5db06c1f-8a52-ff84-9206-b4cad54f6dfc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma iteratedDeriv_complexMGF_real (v : ℝ)
    (hv : v ∈ interior (ProbabilityTheory.integrableExpSet X μ)) (n : ℕ) :
    iteratedDeriv n (ProbabilityTheory.complexMGF X μ) (v : ℂ) =
      ((∫ ω, X ω ^ n * Real.exp (v * X ω) ∂μ : ℝ) : ℂ) := by
  rw [ProbabilityTheory.iteratedDeriv_complexMGF (by simpa using hv)]
  norm_cast
  exact integral_complex_ofReal

/-- A holomorphic disk extending the moment-generating function extends genuine
exponential integrability through every nonnegative real displacement in that disk. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Positivity/Variant731fc76392aeaa60a3e588e8884c90a229906e366ad8f2cd45ecfdda957de4a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Positivity/Variant731fc76392aeaa60a3e588e8884c90a229906e366ad8f2cd45ecfdda957de4a3.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa1e6fbb41ce2aabcdf8ec6c4d001cf52eb33312` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
