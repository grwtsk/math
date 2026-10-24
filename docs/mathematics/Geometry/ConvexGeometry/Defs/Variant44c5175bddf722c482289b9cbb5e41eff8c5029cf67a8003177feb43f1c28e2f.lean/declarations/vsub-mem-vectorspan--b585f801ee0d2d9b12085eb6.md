# vsub_mem_vectorSpan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f2910b3-bc14-0990-0306-676f0e8bfdb0",
  "kind": "theorem",
  "lexical_name": "vsub_mem_vectorSpan",
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
  "slug": "vsub-mem-vectorspan--b585f801ee0d2d9b12085eb6",
  "source": {
    "blob": "c5b23f6e1e00b88dfd8e552d56bd1ac6fcffae35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 93,
    "path": "GRWTSK/Geometry/ConvexGeometry/Defs/Variant44c5175bddf722c482289b9cbb5e41eff8c5029cf67a8003177feb43f1c28e2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b585f801ee0d2d9b12085eb69dcd7d80545b503551dbc6c747f148d04bc90d41",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Defs/Variant44c5175bddf722c482289b9cbb5e41eff8c5029cf67a8003177feb43f1c28e2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f2910b3-bc14-0990-0306-676f0e8bfdb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vsub_mem_vectorSpan {s : Set P} {p₁ p₂ : P} (hp₁ : p₁ ∈ s) (hp₂ : p₂ ∈ s) :
    p₁ -ᵥ p₂ ∈ vectorSpan k s :=
  vsub_set_subset_vectorSpan k s (vsub_mem_vsub hp₁ hp₂)

/-- The points in the affine span of a (possibly empty) set of points. Use `affineSpan` instead to
get an `AffineSubspace k P`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Defs/Variant44c5175bddf722c482289b9cbb5e41eff8c5029cf67a8003177feb43f1c28e2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Defs/Variant44c5175bddf722c482289b9cbb5e41eff8c5029cf67a8003177feb43f1c28e2f.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5b23f6e1e00b88dfd8e552d56bd1ac6fcffae35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
