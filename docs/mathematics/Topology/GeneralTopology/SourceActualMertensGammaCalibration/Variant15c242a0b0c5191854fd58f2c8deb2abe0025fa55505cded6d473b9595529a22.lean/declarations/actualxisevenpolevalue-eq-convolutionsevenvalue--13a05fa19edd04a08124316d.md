# actualXiSevenPoleValue_eq_convolutionSevenValue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e44bb659-2c85-6520-98b3-2f926c8acd3d",
  "kind": "theorem",
  "lexical_name": "actualXiSevenPoleValue_eq_convolutionSevenValue",
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
  "slug": "actualxisevenpolevalue-eq-convolutionsevenvalue--13a05fa19edd04a08124316d",
  "source": {
    "blob": "5623d2d486aaa904c7a6c6c8ccf019811e62acd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 82,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualMertensGammaCalibration/Variant15c242a0b0c5191854fd58f2c8deb2abe0025fa55505cded6d473b9595529a22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13a05fa19edd04a08124316defa04d5353f0c2e2668e4f3ac72a38c101c80840",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualMertensGammaCalibration/Variant15c242a0b0c5191854fd58f2c8deb2abe0025fa55505cded6d473b9595529a22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e44bb659-2c85-6520-98b3-2f926c8acd3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiSevenPoleValue_eq_convolutionSevenValue :
    actualXiSevenPoleValue = (actualXiErrorConvolutionSevenValue : ℂ) := by
  unfold actualXiSevenPoleValue actualXiErrorConvolutionSevenValue
  rw [actualClosedMangoldtMellinHeadSeven_at_one,
    ← ofReal_log (by norm_num : (0 : ℝ) ≤ 7)]
  push_cast
  ring

/-- Actual PNT and authentic pole-one regularization calibrate the ordinary center. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualMertensGammaCalibration/Variant15c242a0b0c5191854fd58f2c8deb2abe0025fa55505cded6d473b9595529a22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualMertensGammaCalibration/Variant15c242a0b0c5191854fd58f2c8deb2abe0025fa55505cded6d473b9595529a22.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5623d2d486aaa904c7a6c6c8ccf019811e62acd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
