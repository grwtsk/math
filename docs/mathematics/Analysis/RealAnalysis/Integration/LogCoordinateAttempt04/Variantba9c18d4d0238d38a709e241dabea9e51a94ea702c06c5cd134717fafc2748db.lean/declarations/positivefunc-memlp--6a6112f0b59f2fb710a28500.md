# positiveFunc_memLp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:433c3a01-728b-6dba-8613-0c68fd3b68a5",
  "kind": "theorem",
  "lexical_name": "positiveFunc_memLp",
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
  "slug": "positivefunc-memlp--6a6112f0b59f2fb710a28500",
  "source": {
    "blob": "c951d16274751012895bc95bf3cd58c7633ef9d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 107,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogCoordinateAttempt04/Variantba9c18d4d0238d38a709e241dabea9e51a94ea702c06c5cd134717fafc2748db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a6112f0b59f2fb710a285002d441192de3b984b9d02626efa396fdbe81b18f6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogCoordinateAttempt04/Variantba9c18d4d0238d38a709e241dabea9e51a94ea702c06c5cd134717fafc2748db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:433c3a01-728b-6dba-8613-0c68fd3b68a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positiveFunc_memLp {h : ℝ → ℂ} (hh : MemLp h 2 (volume : Measure ℝ)) :
    MemLp (positiveFunc h) 2 positiveMeasure := by
  have hm : AEStronglyMeasurable (positiveFunc h) positiveMeasure :=
    (Complex.measurable_ofReal.comp (Real.measurable_exp.comp
      (Real.measurable_log.neg.div_const 2))).aestronglyMeasurable.mul
      (hh.aestronglyMeasurable.comp_quasiMeasurePreserving log_quasi)
  apply (memLp_two_iff_integrable_sq_norm hm).mpr
  apply (integrable_exp_jacobian (fun x => ‖positiveFunc h x‖^2)).mpr
  simpa only [positiveFunc_norm_sq_exp] using
    ((memLp_two_iff_integrable_sq_norm hh.aestronglyMeasurable).mp hh)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogCoordinateAttempt04/Variantba9c18d4d0238d38a709e241dabea9e51a94ea702c06c5cd134717fafc2748db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogCoordinateAttempt04/Variantba9c18d4d0238d38a709e241dabea9e51a94ea702c06c5cd134717fafc2748db.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c951d16274751012895bc95bf3cd58c7633ef9d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
