# hasDerivAt_slope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41d3386a-204f-6adc-1490-0e1d71eb6b0e",
  "kind": "theorem",
  "lexical_name": "hasDerivAt_slope",
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
  "slug": "hasderivat-slope--2d98083ff6af6917e0a15413",
  "source": {
    "blob": "8dfe17b2b933e15b3b03da7035ea776d770acb56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 35,
    "path": "GRWTSK/Analysis/Real/ClassicalRieszCorrection.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d98083ff6af6917e0a15413f5333b72190997527c3bf37ce2a142cf98b8ce6e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/ClassicalRieszCorrection.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41d3386a-204f-6adc-1490-0e1d71eb6b0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivAt_slope (x : ℝ) (hx : 1 < x) :
    HasDerivAt slope (-rationalDensity x) x := by
  have hx0 : x ≠ 0 := by linarith
  have hm : x-1 ≠ 0 := by linarith
  have hp : x+1 ≠ 0 := by linarith
  have hi := hasDerivAt_id x
  have hd := (Real.hasDerivAt_log hx0).sub
    (((hi.sub_const 1).log hm).add ((hi.add_const 1).log hp) |>.div_const 2)
  have hsq : x^2-1 ≠ 0 := by nlinarith
  convert hd using 1 <;> first | rfl | ((try dsimp [slope, rationalDensity]); field_simp [hx0, hm, hp, hsq]; ring)

/-- Exact correction identity with both affine base terms retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/RealAnalysis/ClassicalRieszCorrection.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Real/ClassicalRieszCorrection.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dfe17b2b933e15b3b03da7035ea776d770acb56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
