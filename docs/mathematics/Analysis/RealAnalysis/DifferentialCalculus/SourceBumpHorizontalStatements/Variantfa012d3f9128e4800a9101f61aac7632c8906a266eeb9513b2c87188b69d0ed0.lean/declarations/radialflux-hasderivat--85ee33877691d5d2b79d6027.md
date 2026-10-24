# radialFlux_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:57828b48-524b-fe56-3472-37ac42d40091",
  "kind": "theorem",
  "lexical_name": "radialFlux_hasDerivAt",
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
  "slug": "radialflux-hasderivat--85ee33877691d5d2b79d6027",
  "source": {
    "blob": "77827456bd06abab7fd91202ded1392c7769645b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 202,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalStatements/Variantfa012d3f9128e4800a9101f61aac7632c8906a266eeb9513b2c87188b69d0ed0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85ee33877691d5d2b79d60275d8b07cd94694af78dc4e0c052784d8180b0357b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalStatements/Variantfa012d3f9128e4800a9101f61aac7632c8906a266eeb9513b2c87188b69d0ed0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57828b48-524b-fe56-3472-37ac42d40091`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem radialFlux_hasDerivAt (z : ℂ) (r : ℝ) :
    HasDerivAt (radialFlux z) (z ^ 2 * (r : ℂ) ^ 10 * radialProfile z r) r := by
  have hp := ((hasDerivAt_id (r : ℂ)).pow 10).mul_const z
  have hm := (bumpMoment_hasDerivAt 1 (z * (r : ℂ))).comp (r : ℂ)
    ((hasDerivAt_id (r : ℂ)).const_mul z)
  convert! (hp.mul hm).comp_ofReal using 1
  dsimp [radialProfile]
  have he := bumpMoment_equation (z * (r : ℂ))
  linear_combination -(z * (r : ℂ) ^ 9) * he

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalStatements/Variantfa012d3f9128e4800a9101f61aac7632c8906a266eeb9513b2c87188b69d0ed0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalStatements/Variantfa012d3f9128e4800a9101f61aac7632c8906a266eeb9513b2c87188b69d0ed0.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77827456bd06abab7fd91202ded1392c7769645b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
