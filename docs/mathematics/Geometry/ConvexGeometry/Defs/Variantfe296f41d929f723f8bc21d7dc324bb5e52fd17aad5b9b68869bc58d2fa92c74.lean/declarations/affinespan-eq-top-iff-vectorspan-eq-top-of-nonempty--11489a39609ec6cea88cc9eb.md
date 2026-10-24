# affineSpan_eq_top_iff_vectorSpan_eq_top_of_nonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3287094e-751e-3de8-7c7a-c7f2cf75c54d",
  "kind": "theorem",
  "lexical_name": "affineSpan_eq_top_iff_vectorSpan_eq_top_of_nonempty",
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
  "slug": "affinespan-eq-top-iff-vectorspan-eq-top-of-nonempty--11489a39609ec6cea88cc9eb",
  "source": {
    "blob": "28f186245aab4571bac1ccc537c76c90f7a9befe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 752,
    "line": 742,
    "path": "GRWTSK/Geometry/ConvexGeometry/Defs/Variantfe296f41d929f723f8bc21d7dc324bb5e52fd17aad5b9b68869bc58d2fa92c74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11489a39609ec6cea88cc9ebd228f85258c83fcffa86fb77db384018e6f96102",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Defs/Variantfe296f41d929f723f8bc21d7dc324bb5e52fd17aad5b9b68869bc58d2fa92c74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3287094e-751e-3de8-7c7a-c7f2cf75c54d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 742–752.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem affineSpan_eq_top_iff_vectorSpan_eq_top_of_nonempty {s : Set P} (hs : s.Nonempty) :
    affineSpan k s = ⊤ ↔ vectorSpan k s = ⊤ := by
  refine ⟨vectorSpan_eq_top_of_affineSpan_eq_top k V P, ?_⟩
  intro h
  suffices Nonempty (affineSpan k s) by
    obtain ⟨p, hp : p ∈ affineSpan k s⟩ := this
    rw [eq_iff_direction_eq_of_mem hp (mem_top k V p), direction_affineSpan, h, direction_top]
  obtain ⟨x, hx⟩ := hs
  exact ⟨⟨x, mem_affineSpan k hx⟩⟩

/-- For a non-trivial space, the affine span of a set is `⊤` iff its vector span is `⊤`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Defs/Variantfe296f41d929f723f8bc21d7dc324bb5e52fd17aad5b9b68869bc58d2fa92c74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Defs/Variantfe296f41d929f723f8bc21d7dc324bb5e52fd17aad5b9b68869bc58d2fa92c74.lean#L742).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28f186245aab4571bac1ccc537c76c90f7a9befe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
