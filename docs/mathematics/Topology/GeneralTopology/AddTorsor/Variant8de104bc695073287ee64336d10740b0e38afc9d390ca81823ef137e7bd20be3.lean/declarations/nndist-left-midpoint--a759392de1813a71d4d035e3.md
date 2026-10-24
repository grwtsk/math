# nndist_left_midpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c219b29-aa12-853c-f0a6-07e6e6a13c8f",
  "kind": "theorem",
  "lexical_name": "nndist_left_midpoint",
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
  "slug": "nndist-left-midpoint--a759392de1813a71d4d035e3",
  "source": {
    "blob": "dbb8047abef06652790e22d9f6c413564ee70621",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 150,
    "path": "GRWTSK/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a759392de1813a71d4d035e365ba246d00420e6c76be9c6b961687df40f98579",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c219b29-aa12-853c-f0a6-07e6e6a13c8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nndist_left_midpoint (p₁ p₂ : P) :
    nndist p₁ (midpoint 𝕜 p₁ p₂) = ‖(2 : 𝕜)‖₊⁻¹ * nndist p₁ p₂ :=
  NNReal.eq <| dist_left_midpoint _ _

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbb8047abef06652790e22d9f6c413564ee70621` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
