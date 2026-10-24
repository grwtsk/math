# ContinuousAt.clm_bundle_apply₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:815d7a1a-5bf6-28f0-0fff-726cc0d994aa",
  "kind": "lemma",
  "lexical_name": "ContinuousAt.clm_bundle_apply₂",
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
  "slug": "continuousat-clm-bundle-apply--819512a517546cf5eae5547e",
  "source": {
    "blob": "3993c8dae956b9a125f3a0e350bd97dba3fe97cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 498,
    "line": 488,
    "path": "GRWTSK/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:819512a517546cf5eae5547ef5d07d0634f0bcf5910d6323e783725c2db2651d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:815d7a1a-5bf6-28f0-0fff-726cc0d994aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 488–498.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ContinuousAt.clm_bundle_apply₂
    (hψ : ContinuousAt (fun m ↦ TotalSpace.mk' (F₁ →L[𝕜] F₂ →L[𝕜] F₃)
      (E := fun (x : B) ↦ (E₁ x →L[𝕜] E₂ x →L[𝕜] E₃ x)) (b m) (ψ m)) x)
    (hv : ContinuousAt (fun m ↦ TotalSpace.mk' F₁ (b m) (v m)) x)
    (hw : ContinuousAt (fun m ↦ TotalSpace.mk' F₂ (b m) (w m)) x) :
    ContinuousAt (fun m ↦ TotalSpace.mk' F₃ (b m) (ψ m (v m) (w m))) x :=
  (hψ.clm_bundle_apply hv).clm_bundle_apply hw

/-- Consider `C^n` maps `v : M → E₁` and `v : M → E₂` to vector bundles, over a basemap
`b : M → B`, and bilinear maps `ψ m : E₁ (b m) → E₂ (b m) → E₃ (b m)` depending smoothly on `m`.
One can apply `ψ  m` to `v m` and `w m`, and the resulting map is `C^n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean#L488).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3993c8dae956b9a125f3a0e350bd97dba3fe97cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
