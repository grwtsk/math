# pulledLift_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0bd8e61c6305566ce1685fe8bdf15e74f0b7f22f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 248,
      "path": "GRWTSK/Analysis/Complex/HolomorphicAreaGaugeTransport.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a2d0f1fc-10ff-2901-295e-93f04512148f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:99429f8d-e61e-8f05-4d4f-db217f6ddae9",
  "kind": "theorem",
  "lexical_name": "pulledLift_eq",
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
  "slug": "pulledlift-eq--e9a22cf93e57cc118f625e93",
  "source": {
    "blob": "0bd8e61c6305566ce1685fe8bdf15e74f0b7f22f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 248,
    "path": "GRWTSK/Analysis/Complex/HolomorphicAreaGaugeTransport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9a22cf93e57cc118f625e9308c7426db064af9098dab93ef3cd3ca0db395e97",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/HolomorphicAreaGaugeTransport.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99429f8d-e61e-8f05-4d4f-db217f6ddae9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pulledLift_eq (G : Gauge (Cocycle.identity D) C) (hOpen : D.IsOpenCover) :
    pulledLift G hOpen = (areaGauge G hOpen).toContinuousLinearEquiv.toContinuousLinearMap.comp
      (bergmanLift hOpen) := by
  ext g
  apply ext_inner_left ℂ
  intro v
  change inner ℂ v (ContinuousLinearMap.adjoint (pulledL2Inclusion G hOpen) g) =
    inner ℂ v (areaGauge G hOpen (bergmanLift hOpen g))
  rw [ContinuousLinearMap.adjoint_inner_right]
  change inner ℂ (l2Inclusion hOpen ((areaGauge G hOpen).symm v)) g = _
  rw [← bergmanLift_inner]
  simpa only [LinearIsometryEquiv.apply_symm_apply] using
    ((areaGauge G hOpen).inner_map_map ((areaGauge G hOpen).symm v) (bergmanLift hOpen g)).symm

/-- Same source-frame ambient space, not an unproved new intrinsic bundle L2 projection. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/HolomorphicAreaGaugeTransport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/HolomorphicAreaGaugeTransport.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bd8e61c6305566ce1685fe8bdf15e74f0b7f22f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
