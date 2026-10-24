# source_shift_cross_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:08b5cc21-92ae-0e8c-98d2-f51ac3ecf47f",
  "kind": "theorem",
  "lexical_name": "source_shift_cross_integrable",
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
  "slug": "source-shift-cross-integrable--805bc9d2dbe940359db37cf6",
  "source": {
    "blob": "ffc07b5f4ad9a6a5d7368afb1682cfcc1acf1d9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 39,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceMixedCurvatureCross/Variant521a426351a4d412bc91788e9fefe289ebf29905f2688ca0ef3dd1c0cec5a8ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:805bc9d2dbe940359db37cf68ff0f696b04dd038966dbafcfa883d220982a116",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceMixedCurvatureCross/Variant521a426351a4d412bc91788e9fefe289ebf29905f2688ca0ef3dd1c0cec5a8ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08b5cc21-92ae-0e8c-98d2-f51ac3ecf47f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem source_shift_cross_integrable {A : ℝ} (hA : 0 < A) (u w : ℝ) :
    Integrable (fun v : ℝ => normalizedTest explicitSecondDerivative A (v + u) *
      normalizedTest explicitSecondDerivative A (v + w)) := by
  convert (correlation_product_integrable A (u - w) hA).comp_add_right u using 1
  funext v
  rw [show v + u - (u - w) = v + w by ring]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceMixedCurvatureCross/Variant521a426351a4d412bc91788e9fefe289ebf29905f2688ca0ef3dd1c0cec5a8ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceMixedCurvatureCross/Variant521a426351a4d412bc91788e9fefe289ebf29905f2688ca0ef3dd1c0cec5a8ad.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffc07b5f4ad9a6a5d7368afb1682cfcc1acf1d9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
