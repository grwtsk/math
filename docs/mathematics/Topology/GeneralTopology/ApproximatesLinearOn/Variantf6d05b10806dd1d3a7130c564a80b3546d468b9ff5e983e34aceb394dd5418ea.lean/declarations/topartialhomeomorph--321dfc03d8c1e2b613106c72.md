# toPartialHomeomorph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cebf5c2f7365da8c9d6f676f0dd29adc95fd76154c4dfe6879765f7c61b96055",
  "kind": "def",
  "lexical_name": "toPartialHomeomorph",
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
  "slug": "topartialhomeomorph--321dfc03d8c1e2b613106c72",
  "source": {
    "blob": "1f9108236e492e899250f2898a39cd4ed56c6690",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 401,
    "line": 392,
    "path": "GRWTSK/Topology/GeneralTopology/ApproximatesLinearOn/Variantf6d05b10806dd1d3a7130c564a80b3546d468b9ff5e983e34aceb394dd5418ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:321dfc03d8c1e2b613106c72e00a2c375e54b312192b63ad43a3f4d23331e633",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ApproximatesLinearOn/Variantf6d05b10806dd1d3a7130c564a80b3546d468b9ff5e983e34aceb394dd5418ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cebf5c2f7365da8c9d6f676f0dd29adc95fd76154c4dfe6879765f7c61b96055`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 392–401.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toPartialHomeomorph (hf : ApproximatesLinearOn f (f' : E →L[𝕜] F) s c)
    (hc : Subsingleton E ∨ c < N⁻¹) (hs : IsOpen s) : PartialHomeomorph E F where
  toPartialEquiv := hf.toPartialEquiv hc
  open_source := hs
  open_target := hf.open_image f'.toNonlinearRightInverse hs <| by
    rwa [f'.toEquiv.subsingleton_congr] at hc
  continuousOn_toFun := hf.continuousOn
  continuousOn_invFun := hf.inverse_continuousOn hc

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ApproximatesLinearOn/Variantf6d05b10806dd1d3a7130c564a80b3546d468b9ff5e983e34aceb394dd5418ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ApproximatesLinearOn/Variantf6d05b10806dd1d3a7130c564a80b3546d468b9ff5e983e34aceb394dd5418ea.lean#L392).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f9108236e492e899250f2898a39cd4ed56c6690` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
