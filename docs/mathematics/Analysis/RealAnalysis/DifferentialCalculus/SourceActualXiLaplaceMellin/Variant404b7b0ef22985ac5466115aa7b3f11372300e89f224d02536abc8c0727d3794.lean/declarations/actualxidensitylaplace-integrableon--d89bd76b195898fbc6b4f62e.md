# actualXiDensityLaplace_integrableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:231bf3a5-9fb8-631f-addb-1fc230696bd3",
  "kind": "theorem",
  "lexical_name": "actualXiDensityLaplace_integrableOn",
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
  "slug": "actualxidensitylaplace-integrableon--d89bd76b195898fbc6b4f62e",
  "source": {
    "blob": "f96ff651f9962615462a9d840d9ddf59fa1f7a45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 134,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualXiLaplaceMellin/Variant404b7b0ef22985ac5466115aa7b3f11372300e89f224d02536abc8c0727d3794.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d89bd76b195898fbc6b4f62ecc560578b3fb86b31479c7c18bee58f575390cd4",
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

Occurrence: `result:231bf3a5-9fb8-631f-addb-1fc230696bd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiDensityLaplace_integrableOn {z : ℂ} (hz : 1 / 2 < z.re) :
    IntegrableOn (fun t : ℝ => (actualXiTailTimeDensity t : ℂ) *
      Complex.exp (-z * (t : ℂ))) (Ioi (Real.log 7)) := by
  have hs : 1 < (z + 1 / 2).re := by norm_num; linarith
  have hi := (integrableOn_comp_exp_Ioi (fun y : ℝ => (shiftedActualChebyshev y : ℂ) *
    (y : ℂ) ^ (-((z + 1 / 2) + 1))) (Real.log 7)).mpr
      (by simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 7)] using
        (actualXiComplexMellinTailSeven_integrableOn hs))
  simp_rw [exponential_density_transport z] at hi
  exact hi

/-- Genuine finite Abel uses the actual AE derivative and its zero lower anchor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualXiLaplaceMellin/Variant404b7b0ef22985ac5466115aa7b3f11372300e89f224d02536abc8c0727d3794.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualXiLaplaceMellin/Variant404b7b0ef22985ac5466115aa7b3f11372300e89f224d02536abc8c0727d3794.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f96ff651f9962615462a9d840d9ddf59fa1f7a45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
