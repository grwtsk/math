# weightedCorrelation_deriv_formula

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a69dc96-b75c-3bf9-77f2-23cd481b0f1b",
  "kind": "theorem",
  "lexical_name": "weightedCorrelation_deriv_formula",
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
  "slug": "weightedcorrelation-deriv-formula--398719dc52dc8a4f4e40c235",
  "source": {
    "blob": "389c43efe21fe1f622cfde800bdb458d8872bb9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 25,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoPositiveWindow/Varianta8514300c8501079ec1299c1c0c77772ceedeae37e71fe153df4019d6630a89f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:398719dc52dc8a4f4e40c2353c0349aca6466ac056eb408df0e6088543a322af",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoPositiveWindow/Varianta8514300c8501079ec1299c1c0c77772ceedeae37e71fe153df4019d6630a89f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a69dc96-b75c-3bf9-77f2-23cd481b0f1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedCorrelation_deriv_formula (A u : ℝ) (hA : 1 ≤ A) :
    deriv (weightedCorrelation A) u =
      (deriv (sourceCorrelation explicitSecondDerivative A) u +
        (3 / 2) * sourceCorrelation explicitSecondDerivative A u) * Real.exp (3 * u / 2) := by
  have hc := SourceCorrelationCurvature.sourceCorrelation_contDiff_two
    (show 0 < A by linarith)
  have hd := (hc.differentiable (by norm_num) u).hasDerivAt
  have he : HasDerivAt (fun x : ℝ ↦ Real.exp (3 * x / 2))
      (Real.exp (3 * u / 2) * (3 / 2)) u := by
    convert (((hasDerivAt_id u).const_mul 3).div_const 2).exp using 1 <;> simp
  have hm := (hd.mul he).deriv
  change deriv (weightedCorrelation A) u = _ at hm
  rw [hm]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoPositiveWindow/Varianta8514300c8501079ec1299c1c0c77772ceedeae37e71fe153df4019d6630a89f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoPositiveWindow/Varianta8514300c8501079ec1299c1c0c77772ceedeae37e71fe153df4019d6630a89f.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `389c43efe21fe1f622cfde800bdb458d8872bb9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
