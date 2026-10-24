# restrict_glue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4aef0b562eb1aa9c275a37fe764fc58eaac28810",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 68,
      "path": "GRWTSK/AlgebraicGeometry/AnalyticAffineIndexedGluing.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:498f197b-e982-a692-7ca2-d1f764537a29",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:48d81c1d-5167-34d2-9bf3-b6191c4aef98",
  "kind": "theorem",
  "lexical_name": "restrict_glue",
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
  "slug": "restrict-glue--fd0079b22903b1b9db20f75e",
  "source": {
    "blob": "4aef0b562eb1aa9c275a37fe764fc58eaac28810",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 68,
    "path": "GRWTSK/AlgebraicGeometry/AnalyticAffineIndexedGluing.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd0079b22903b1b9db20f75e95a355f4afec19eb050618f6991a1a7d94f95eaf",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AnalyticAffineIndexedGluing.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48d81c1d-5167-34d2-9bf3-b6191c4aef98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restrict_glue (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
    (localMaps : ∀ i, Bridge R (D.U i)) (h : Compatible D localMaps) (i : ι) :
    (glue D hOpen localMaps h).restrict (D.xTo i) = localMaps i := by
  apply Bridge.ext_coordinateRing
  apply RingHom.ext
  intro r
  exact D.restrict_glue hOpen (fun j => (localMaps j).coordinateRing r)
    (compatible_apply D localMaps h r) i

/-- Uniqueness is equality of actual coordinate-ring maps, not equality of spectrum images. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/AlgebraicGeometry/AnalyticAffineIndexedGluing.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/AnalyticAffineIndexedGluing.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4aef0b562eb1aa9c275a37fe764fc58eaac28810` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
