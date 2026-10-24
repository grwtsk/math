# finite_rectangleDivisorSupport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c0735d6-3332-b5fd-da34-723ac22b79aa",
  "kind": "theorem",
  "lexical_name": "finite_rectangleDivisorSupport",
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
  "slug": "finite-rectangledivisorsupport--9fdbb29de21ffad6339367a4",
  "source": {
    "blob": "78d1aed479a28b8b71a45d3149deceff5d89eba6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 72,
    "path": "GRWTSK/Topology/GeneralTopology/ContourShiftAPI/Variant0002748f0443afc17667810485ce18d0089103d472b8e987679efea2f243fccd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fdbb29de21ffad6339367a4b8d17b4aeae0ce90a54e5dacea3115bbb83bcbb6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContourShiftAPI/Variant0002748f0443afc17667810485ce18d0089103d472b8e987679efea2f243fccd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c0735d6-3332-b5fd-da34-723ac22b79aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_rectangleDivisorSupport
    {f : ℂ → ℂ} {z w : ℂ}
    (hf : MeromorphicOn f (closedRectangle z w)) :
    (rectangleDivisor f z w).support.Finite :=
  rectangleDivisor_support_finite hf

/-- Choose a horizontal contour coordinate avoiding every divisor point. -/
@[surface_adapter, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContourShiftAPI/Variant0002748f0443afc17667810485ce18d0089103d472b8e987679efea2f243fccd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContourShiftAPI/Variant0002748f0443afc17667810485ce18d0089103d472b8e987679efea2f243fccd.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78d1aed479a28b8b71a45d3149deceff5d89eba6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
