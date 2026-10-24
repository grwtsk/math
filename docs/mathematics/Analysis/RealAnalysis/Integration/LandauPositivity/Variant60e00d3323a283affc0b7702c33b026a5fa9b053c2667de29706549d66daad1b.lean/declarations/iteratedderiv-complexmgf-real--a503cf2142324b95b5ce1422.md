# iteratedDeriv_complexMGF_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e66a5e08-55be-8b62-8ca7-89b0e7d1b74a",
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
  "slug": "iteratedderiv-complexmgf-real--a503cf2142324b95b5ce1422",
  "source": {
    "blob": "5fdf91b24f980e077f93f0ccb3c85bf3e4aa89bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 90,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LandauPositivity/Variant60e00d3323a283affc0b7702c33b026a5fa9b053c2667de29706549d66daad1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a503cf2142324b95b5ce1422c6c617846e1ac0c4fe39f12389b2e1f8a866a63a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LandauPositivity/Variant60e00d3323a283affc0b7702c33b026a5fa9b053c2667de29706549d66daad1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e66a5e08-55be-8b62-8ca7-89b0e7d1b74a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–99.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LandauPositivity/Variant60e00d3323a283affc0b7702c33b026a5fa9b053c2667de29706549d66daad1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LandauPositivity/Variant60e00d3323a283affc0b7702c33b026a5fa9b053c2667de29706549d66daad1b.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fdf91b24f980e077f93f0ccb3c85bf3e4aa89bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
