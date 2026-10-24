# IsAffineMap.prodMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e5e5c0d-094c-e2f5-d8ee-f994fa6e6c6f",
  "kind": "lemma",
  "lexical_name": "IsAffineMap.prodMk",
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
  "slug": "isaffinemap-prodmk--6781e50d9b577f0c360d89af",
  "source": {
    "blob": "64c3940ff2f97583a8ca30202242d03282266dbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 153,
    "path": "GRWTSK/Geometry/ConvexGeometry/Prod/Variantb58ca8b8673ae907998ebe56e17eb92b786ca56a328ba076c2e2281b933015ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6781e50d9b577f0c360d89af0fe32bd6a5b8b7395780b64b4ebef34af45b72a4",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Prod/Variantb58ca8b8673ae907998ebe56e17eb92b786ca56a328ba076c2e2281b933015ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e5e5c0d-094c-e2f5-d8ee-f994fa6e6c6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsAffineMap.prodMk {f : X → Y} {g : X → Z} (hf : IsAffineMap R f) (hg : IsAffineMap R g) :
    IsAffineMap R fun x ↦ (f x, g x) where
  map_sConvexComb w := by ext <;> simp [hf.map_sConvexComb, hg.map_sConvexComb, sConvexComb_map]

@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Prod/Variantb58ca8b8673ae907998ebe56e17eb92b786ca56a328ba076c2e2281b933015ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Prod/Variantb58ca8b8673ae907998ebe56e17eb92b786ca56a328ba076c2e2281b933015ac.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64c3940ff2f97583a8ca30202242d03282266dbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
