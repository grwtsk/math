# raw_mode_dilation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2edcc3a2-ae83-1be5-9e6a-2243faa8fcd4",
  "kind": "theorem",
  "lexical_name": "raw_mode_dilation",
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
  "slug": "raw-mode-dilation--17597038c1dc4ed5a0cdd57d",
  "source": {
    "blob": "7b03f2b29b02dd3e260727a314538eff2c805304",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 63,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FiveModeCorrelationAdapter/Variantcf8852b81581ccb879c8d5af5dd2adf933e2c24013a18dad83e0907c4a70ee3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17597038c1dc4ed5a0cdd57de365c080c90ba6d01a19ff878a9f0fe74f42cf26",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FiveModeCorrelationAdapter/Variantcf8852b81581ccb879c8d5af5dd2adf933e2c24013a18dad83e0907c4a70ee3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2edcc3a2-ae83-1be5-9e6a-2243faa8fcd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem raw_mode_dilation (A h : ℝ) (i j : Fin 5) (hA : 0 < A) :
    (∫ x in (A*(h-1))..A, mode i (x/A) * mode j ((x-A*h)/A)) =
      A * rawCorrelation i j h := by
  have heq : (fun x : ℝ => mode i (x/A) * mode j ((x-A*h)/A)) =
      (fun x => mode i (x/A) * mode j (x/A-h)) := by
    funext x
    have hs : (x-A*h)/A = x/A-h := by field_simp
    rw [hs]
  rw [heq, intervalIntegral.integral_comp_div (fun y => mode i y * mode j (y-h))
    hA.ne']
  have hl : A*(h-1)/A = h-1 := by field_simp
  simp only [hl, div_self hA.ne', smul_eq_mul, rawCorrelation]

/-- The original normalization factors combine to the archived Legendre coefficient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FiveModeCorrelationAdapter/Variantcf8852b81581ccb879c8d5af5dd2adf933e2c24013a18dad83e0907c4a70ee3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FiveModeCorrelationAdapter/Variantcf8852b81581ccb879c8d5af5dd2adf933e2c24013a18dad83e0907c4a70ee3c.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b03f2b29b02dd3e260727a314538eff2c805304` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
