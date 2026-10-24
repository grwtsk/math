# bumpMoment_horizontal_norm_sq_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c98b9d5-d97c-c0e1-43f0-894ff069824e",
  "kind": "theorem",
  "lexical_name": "bumpMoment_horizontal_norm_sq_hasDerivAt",
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
  "slug": "bumpmoment-horizontal-norm-sq-hasderivat--90069958de4d96cb7fed298a",
  "source": {
    "blob": "c97c49b2511ed18d180cb2ba66bd9e01008af930",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 110,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterHorizontalRatioAudit/Variant3e58dbd277d24521c7b6baf65811c4553163f2d6c12406e996c822ce3d99cc4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90069958de4d96cb7fed298a9287488ecb049410e0e63323bf0cd1b22d4dac49",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterHorizontalRatioAudit/Variant3e58dbd277d24521c7b6baf65811c4553163f2d6c12406e996c822ce3d99cc4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c98b9d5-d97c-c0e1-43f0-894ff069824e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bumpMoment_horizontal_norm_sq_hasDerivAt (t x : ℝ) :
    HasDerivAt (fun a : ℝ => ‖bumpMoment 0 ((a : ℂ) + (t : ℂ) * Complex.I)‖^2)
      (2 * (bumpMoment 1 ((x : ℂ) + (t : ℂ) * Complex.I) *
        star (bumpMoment 0 ((x : ℂ) + (t : ℂ) * Complex.I))).re) x := by
  have hd := (bumpMoment_hasDerivAt 0 ((x : ℂ) + (t : ℂ) * Complex.I)).comp
    (x : ℂ) ((hasDerivAt_id (x : ℂ)).add_const ((t : ℂ) * Complex.I))
  have hd' : HasDerivAt (fun a : ℝ => bumpMoment 0 ((a : ℂ) + (t : ℂ) * Complex.I))
      (bumpMoment 1 ((x : ℂ) + (t : ℂ) * Complex.I)) x := by
    simpa only [id_eq, zero_add, mul_one] using! hd.comp_ofReal
  convert! hd'.norm_sq using 1

/-- The actual bump modulus is nondecreasing along every horizontal rightward half-line. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterHorizontalRatioAudit/Variant3e58dbd277d24521c7b6baf65811c4553163f2d6c12406e996c822ce3d99cc4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterHorizontalRatioAudit/Variant3e58dbd277d24521c7b6baf65811c4553163f2d6c12406e996c822ce3d99cc4b.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c97c49b2511ed18d180cb2ba66bd9e01008af930` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
