# contMDiff_comp_diffeomorph_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fcee381e-9072-9853-e7c5-d893c97e2f3a",
  "kind": "theorem",
  "lexical_name": "contMDiff_comp_diffeomorph_iff",
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
  "slug": "contmdiff-comp-diffeomorph-iff--b3c01aff4cb8298d65a95edc",
  "source": {
    "blob": "d718a8ad3c2f239b3d97860615abc23a1210eb87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 315,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Diffeomorph/Variantd20047a75ea2c01c703107c3dcc54ab75b5fa847a23bd1cd91808e86992776bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3c01aff4cb8298d65a95edc2072b16a653c1dbf0e02c41c91fc63d3ee49ce0e",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Diffeomorph/Variantd20047a75ea2c01c703107c3dcc54ab75b5fa847a23bd1cd91808e86992776bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fcee381e-9072-9853-e7c5-d893c97e2f3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contMDiff_comp_diffeomorph_iff {m} (h : M ≃ₘ^n⟮I, J⟯ N) {f : N → M'} (hm : m ≤ n) :
    ContMDiff I I' m (f ∘ h) ↔ ContMDiff J I' m f :=
  h.toEquiv.forall_congr fun _ ↦ h.contMDiffAt_comp_diffeomorph_iff hm

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Diffeomorph/Variantd20047a75ea2c01c703107c3dcc54ab75b5fa847a23bd1cd91808e86992776bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Diffeomorph/Variantd20047a75ea2c01c703107c3dcc54ab75b5fa847a23bd1cd91808e86992776bd.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d718a8ad3c2f239b3d97860615abc23a1210eb87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
