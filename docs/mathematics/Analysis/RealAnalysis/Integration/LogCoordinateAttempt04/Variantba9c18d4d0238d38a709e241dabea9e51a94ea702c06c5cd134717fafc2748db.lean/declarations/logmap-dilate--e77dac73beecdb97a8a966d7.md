# logMap_dilate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6373405-e148-d0ca-84b1-7cd0ff5e8ff3",
  "kind": "theorem",
  "lexical_name": "logMap_dilate",
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
  "slug": "logmap-dilate--e77dac73beecdb97a8a966d7",
  "source": {
    "blob": "c951d16274751012895bc95bf3cd58c7633ef9d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 212,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogCoordinateAttempt04/Variantba9c18d4d0238d38a709e241dabea9e51a94ea702c06c5cd134717fafc2748db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e77dac73beecdb97a8a966d7658b2903e83f2b524fb4446c3bbeb2ce4fa80cb9",
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

Occurrence: `result:a6373405-e148-d0ca-84b1-7cd0ff5e8ff3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logMap_dilate (a : ℝ) (ha : 0 < a) (f : PositiveL2) :
    logMap (dilate a ha f) = translate (Real.log a) (logMap f) := by
  apply Lp.ext
  filter_upwards [logMap_ae (dilate a ha f),exp_quasi.ae_eq_comp (dilate_ae a ha f),
    translate_ae (Real.log a) (logMap f),
    (measurePreserving_add_right volume (Real.log a)).quasiMeasurePreserving.ae_eq_comp
      (logMap_ae f)] with u hleft hd hright hu
  dsimp only [Function.comp_apply] at hd hu
  rw [hleft,logFunc,hd,dilateFunc,hright,hu,logFunc]
  have he : Real.exp (u+Real.log a) = a*Real.exp u := by
    rw [Real.exp_add,Real.exp_log ha,mul_comm]
  have hs : Real.exp (Real.log a/2) = Real.sqrt a := by
    have hp : 0 < Real.exp (Real.log a/2) := Real.exp_pos _
    have hh : (Real.exp (Real.log a/2))^2 = a := by
      rw [pow_two,←Real.exp_add]
      convert Real.exp_log ha using 1 <;> ring
    nlinarith [Real.sq_sqrt ha.le,Real.sqrt_nonneg a]
  rw [he,←mul_assoc]
  congr 1
  rw [←Complex.ofReal_mul,←hs,←Real.exp_add]
  congr 2
  ring

end ContinuousResearch.LogCoordinate
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogCoordinateAttempt04/Variantba9c18d4d0238d38a709e241dabea9e51a94ea702c06c5cd134717fafc2748db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogCoordinateAttempt04/Variantba9c18d4d0238d38a709e241dabea9e51a94ea702c06c5cd134717fafc2748db.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c951d16274751012895bc95bf3cd58c7633ef9d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
