# oddZeroWindingSymmetricSecondMoment_eq_centered

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cef63cef-037c-c3f8-1f6d-c45a2f1cb6b2",
  "kind": "theorem",
  "lexical_name": "oddZeroWindingSymmetricSecondMoment_eq_centered",
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
  "slug": "oddzerowindingsymmetricsecondmoment-eq-centered--04361c5221b2679a7b612450",
  "source": {
    "blob": "be027f60e9f40c977686c1326e5e6739b3f039c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 155,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitZeroWindingCenteredCorrelation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04361c5221b2679a7b61245079e18c8daef713289b0e0ab5db555e8c8c9e8925",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitZeroWindingCenteredCorrelation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cef63cef-037c-c3f8-1f6d-c45a2f1cb6b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oddZeroWindingSymmetricSecondMoment_eq_centered
    (b r : ℕ) :
    parityOddZeroWindingSymmetricSecondMoment b r =
      parityOddZeroWindingCenteredSecondMoment b r := by
  unfold parityOddZeroWindingSymmetricSecondMoment
    parityOddZeroWindingCenteredSecondMoment
  apply congrArg (fun x : ℝ => 4 * x)
  apply Finset.sum_congr rfl
  intro c _hc
  rw [parityZeroWindingSymmetricMobiusCorrelation_eq_centered]

/-- Four-family zero-winding surface in fully visible centered coordinates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitZeroWindingCenteredCorrelation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitZeroWindingCenteredCorrelation.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be027f60e9f40c977686c1326e5e6739b3f039c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
