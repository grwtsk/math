# spectralObservation_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:838cc9f5-b976-8102-b7d1-a6142cd167d1",
  "kind": "theorem",
  "lexical_name": "spectralObservation_injective",
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
  "slug": "spectralobservation-injective--86c04b7a31f67c495c57ec5b",
  "source": {
    "blob": "0548e61752d01521291086a13681da08ed77e866",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 200,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant6bdbf5d67a9df6e2a318552504692484de411eb7435160c7c531c9b5c12e97ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86c04b7a31f67c495c57ec5bc91b0191fb712f54f1673614f8c1df392ef4a19b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant6bdbf5d67a9df6e2a318552504692484de411eb7435160c7c531c9b5c12e97ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:838cc9f5-b976-8102-b7d1-a6142cd167d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spectralObservation_injective {Bin : Type*} (transfer : Bin → ℂ)
    (nonzero : ∀ bin, transfer bin ≠ 0) : Function.Injective (spectralObservation transfer) := by
  intro first second equal
  funext bin
  exact mul_left_cancel₀ (nonzero bin) (congrFun equal bin)

/-- A spectrum supported only at one declared bin; this is pointwise data, not an L² class. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant6bdbf5d67a9df6e2a318552504692484de411eb7435160c7c531c9b5c12e97ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant6bdbf5d67a9df6e2a318552504692484de411eb7435160c7c531c9b5c12e97ee.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0548e61752d01521291086a13681da08ed77e866` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
