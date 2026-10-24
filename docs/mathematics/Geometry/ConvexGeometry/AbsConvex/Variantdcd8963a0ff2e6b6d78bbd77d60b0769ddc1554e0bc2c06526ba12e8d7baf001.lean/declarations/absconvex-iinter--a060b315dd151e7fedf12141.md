# AbsConvex.iInter₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e84718e-16ca-f351-6553-5975a11290a2",
  "kind": "theorem",
  "lexical_name": "AbsConvex.iInter₂",
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
  "slug": "absconvex-iinter--a060b315dd151e7fedf12141",
  "source": {
    "blob": "4c65b8be47878eb795e21aef0d387558062cb90c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 81,
    "path": "GRWTSK/Geometry/ConvexGeometry/AbsConvex/Variantdcd8963a0ff2e6b6d78bbd77d60b0769ddc1554e0bc2c06526ba12e8d7baf001.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a060b315dd151e7fedf121411c2f116be60f6274e5dc6aeeefbb9ad9ac19d7f4",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/AbsConvex/Variantdcd8963a0ff2e6b6d78bbd77d60b0769ddc1554e0bc2c06526ba12e8d7baf001.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e84718e-16ca-f351-6553-5975a11290a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AbsConvex.iInter₂ {ι : Sort*} {κ : ι → Sort*} {f : ∀ i, κ i → Set E}
    (h : ∀ i j, AbsConvex 𝕜 (f i j)) : AbsConvex 𝕜 (⋂ (i) (j), f i j) :=
  AbsConvex.iInter fun _ => (AbsConvex.iInter fun _ => h _ _)

variable (𝕜)

/-- The absolute convex hull of a set `s` is the minimal absolute convex set that includes `s`. -/
@[simps! isClosed]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/AbsConvex/Variantdcd8963a0ff2e6b6d78bbd77d60b0769ddc1554e0bc2c06526ba12e8d7baf001.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/AbsConvex/Variantdcd8963a0ff2e6b6d78bbd77d60b0769ddc1554e0bc2c06526ba12e8d7baf001.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c65b8be47878eb795e21aef0d387558062cb90c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
