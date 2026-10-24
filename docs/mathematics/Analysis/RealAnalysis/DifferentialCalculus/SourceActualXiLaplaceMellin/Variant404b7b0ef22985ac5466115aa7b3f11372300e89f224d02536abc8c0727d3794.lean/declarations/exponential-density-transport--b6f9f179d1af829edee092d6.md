# exponential_density_transport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a11b7b8-e5f6-2dcb-9ca7-57a56e5a90c0",
  "kind": "theorem",
  "lexical_name": "exponential_density_transport",
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
  "slug": "exponential-density-transport--b6f9f179d1af829edee092d6",
  "source": {
    "blob": "f96ff651f9962615462a9d840d9ddf59fa1f7a45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 104,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualXiLaplaceMellin/Variant404b7b0ef22985ac5466115aa7b3f11372300e89f224d02536abc8c0727d3794.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6f9f179d1af829edee092d68e4bb497c2a7991ba48f0aea4e0f55b71bd60246",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualXiLaplaceMellin/Variant404b7b0ef22985ac5466115aa7b3f11372300e89f224d02536abc8c0727d3794.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a11b7b8-e5f6-2dcb-9ca7-57a56e5a90c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem exponential_density_transport (z : ℂ) (t : ℝ) :
    Real.exp t • ((shiftedActualChebyshev (Real.exp t) : ℂ) *
      ((Real.exp t : ℝ) : ℂ) ^ (-((z + 1 / 2) + 1))) =
      (actualXiTailTimeDensity t : ℂ) * Complex.exp (-z * (t : ℂ)) := by
  rw [Complex.cpow_def_of_ne_zero (Complex.ofReal_ne_zero.mpr (Real.exp_pos t).ne')]
  rw [← Complex.ofReal_log (Real.exp_pos t).le, Real.log_exp]
  simp only [real_smul, actualXiTailTimeDensity, ofReal_mul]
  rw [Complex.ofReal_exp, Complex.ofReal_exp]
  push_cast
  calc
    _ = (shiftedActualChebyshev (Real.exp t) : ℂ) *
        Complex.exp ((t : ℂ) + (t : ℂ) * (-((z + 1 / 2) + 1))) := by
      rw [Complex.exp_add]
      ring
    _ = _ := by
      rw [show (t : ℂ) + (t : ℂ) * (-((z + 1 / 2) + 1)) =
        -(t : ℂ) / 2 + -z * (t : ℂ) by ring, Complex.exp_add]
      ring

/-- Positive exponential substitution preserves the same actual closed-seven Mellin source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualXiLaplaceMellin/Variant404b7b0ef22985ac5466115aa7b3f11372300e89f224d02536abc8c0727d3794.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualXiLaplaceMellin/Variant404b7b0ef22985ac5466115aa7b3f11372300e89f224d02536abc8c0727d3794.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f96ff651f9962615462a9d840d9ddf59fa1f7a45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
