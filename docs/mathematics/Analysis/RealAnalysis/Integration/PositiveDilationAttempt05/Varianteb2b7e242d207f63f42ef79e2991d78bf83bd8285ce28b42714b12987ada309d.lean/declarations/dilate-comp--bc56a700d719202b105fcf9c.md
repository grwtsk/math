# dilate_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd1a82d2-95e9-a6f5-d77a-26a0f63aed1a",
  "kind": "theorem",
  "lexical_name": "dilate_comp",
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
  "slug": "dilate-comp--bc56a700d719202b105fcf9c",
  "source": {
    "blob": "0f106c558ae916e78230895512c3f09951e58074",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 93,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt05/Varianteb2b7e242d207f63f42ef79e2991d78bf83bd8285ce28b42714b12987ada309d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc56a700d719202b105fcf9c31358b65681f2d5a25761fbbacbbad8e6db9e755",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PositiveDilationAttempt05/Varianteb2b7e242d207f63f42ef79e2991d78bf83bd8285ce28b42714b12987ada309d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd1a82d2-95e9-a6f5-d77a-26a0f63aed1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dilate_comp {a b : ℝ} (ha : 0 < a) (hb : 0 < b) (f : PositiveL2) :
    dilate a ha (dilate b hb f) = dilate (a*b) (mul_pos ha hb) f := by
  apply Lp.ext
  filter_upwards [dilate_ae a ha (dilate b hb f),
    (positive_mul_quasi ha).ae_eq_comp (dilate_ae b hb f),
    dilate_ae (a*b) (mul_pos ha hb) f] with x hx hy hz
  dsimp only [Function.comp_apply] at hy
  rw [hx,hz,dilateFunc]
  rw [hy,dilateFunc,←mul_assoc,←Complex.ofReal_mul,←Real.sqrt_mul ha.le]
  congr 2
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PositiveDilationAttempt05/Varianteb2b7e242d207f63f42ef79e2991d78bf83bd8285ce28b42714b12987ada309d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt05/Varianteb2b7e242d207f63f42ef79e2991d78bf83bd8285ce28b42714b12987ada309d.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f106c558ae916e78230895512c3f09951e58074` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
