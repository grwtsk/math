# contMDiff_neg_sphere

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5bc3398-e41e-c72f-3d30-bc3c6bc91dd0",
  "kind": "theorem",
  "lexical_name": "contMDiff_neg_sphere",
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
  "slug": "contmdiff-neg-sphere--ee855d8167a695a0d5ad3c64",
  "source": {
    "blob": "c15a96b00afe9f36e5147a70b431ab25b64fc15d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 482,
    "line": 474,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee855d8167a695a0d5ad3c648eed67f05bdebf927f92be6725d4ae83c2b7b154",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5bc3398-e41e-c72f-3d30-bc3c6bc91dd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 474–482.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contMDiff_neg_sphere {m : ℕ∞ω} {n : ℕ} [Fact (finrank ℝ E = n + 1)] :
    CMDiff m fun x : sphere (0 : E) 1 => -x := by
  -- this doesn't elaborate well in term mode
  apply ContMDiff.codRestrict_sphere
  apply contDiff_neg.contMDiff.comp _
  exact contMDiff_coe_sphere

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Sphere/Variantdef49f27c51ce3d309cb1d9c953ac2f805f2d24665a7de6c4d229c883ea36df6.lean#L474).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c15a96b00afe9f36e5147a70b431ab25b64fc15d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
