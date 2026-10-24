# continuous_zeta_tent_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d1a178d-ae21-221d-e302-82f13d30ec36",
  "kind": "theorem",
  "lexical_name": "continuous_zeta_tent_left",
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
  "slug": "continuous-zeta-tent-left--5971bff3e6edf13acd7d7235",
  "source": {
    "blob": "216d2cc455ed15f2e44489611b76a2efeabd6a35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 52,
    "path": "GRWTSK/NumberTheory/Chebyshev/TentEdgeBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5971bff3e6edf13acd7d7235a8d6a804e00550302e55ab5c58ba075c75274b79",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/TentEdgeBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d1a178d-ae21-221d-e302-82f13d30ec36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_zeta_tent_left (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) (N : ℕ) :
    Continuous (fun t : ℝ => integrand x h ((leftEdge N : ℂ) + (t : ℂ) * Complex.I)) := by
  apply continuous_iff_continuousAt.mpr
  intro t
  let s : ℂ := (leftEdge N : ℂ) + (t : ℂ) * Complex.I
  have hs : s.re = leftEdge N := by simp [s]
  have hp : s ≠ 1 := by
    intro he
    have hr := congrArg Complex.re he
    rw [hs, Complex.one_re] at hr
    linarith [leftEdge_neg N]
  have hpath : ContinuousAt (fun u : ℝ =>
      (leftEdge N : ℂ) + (u : ℂ) * Complex.I) t := by fun_prop
  exact (analyticAt_integrand x h hh ha s hp (zeta_ne_zero_on_left N s hs)).continuousAt.comp
    (f := fun u : ℝ => (leftEdge N : ℂ) + (u : ℂ) * Complex.I) (x := t) hpath

/-- Actual source regularity supplies the finite vertical integrability premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/TentEdgeBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/TentEdgeBounds.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `216d2cc455ed15f2e44489611b76a2efeabd6a35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
