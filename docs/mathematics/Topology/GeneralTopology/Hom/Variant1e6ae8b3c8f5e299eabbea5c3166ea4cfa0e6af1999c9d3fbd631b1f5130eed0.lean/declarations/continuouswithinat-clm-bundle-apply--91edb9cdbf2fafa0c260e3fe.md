# ContinuousWithinAt.clm_bundle_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3165337c-b4e0-3fe8-abb9-0e1ba6c5191f",
  "kind": "lemma",
  "lexical_name": "ContinuousWithinAt.clm_bundle_apply",
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
  "slug": "continuouswithinat-clm-bundle-apply--91edb9cdbf2fafa0c260e3fe",
  "source": {
    "blob": "3993c8dae956b9a125f3a0e350bd97dba3fe97cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 437,
    "line": 425,
    "path": "GRWTSK/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91edb9cdbf2fafa0c260e3fe9e03e639ff16e2bf28820e9cdb4a00f7d378ced0",
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

Occurrence: `result:3165337c-b4e0-3fe8-abb9-0e1ba6c5191f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 425–437.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ContinuousWithinAt.clm_bundle_apply
    (hϕ : ContinuousWithinAt
      (fun m ↦ TotalSpace.mk' (F₁ →L[𝕜] F₂) (E := fun (x : B) ↦ (E₁ x →L[𝕜] E₂ x)) (b m) (ϕ m))
      s x)
    (hv : ContinuousWithinAt (fun m ↦ TotalSpace.mk' F₁ (b m) (v m)) s x) :
    ContinuousWithinAt
      (fun m ↦ TotalSpace.mk' F₂ (b m) (ϕ m (v m))) s x := by
  simp only [continuousWithinAt_hom_bundle] at hϕ
  exact hϕ.2.clm_apply_of_inCoordinates hv hϕ.1

/-- Consider a `C^n` map `v : M → E₁` to a vector bundle, over a basemap `b : M → B`, and
linear maps `ϕ m : E₁ (b m) → E₂ (b m)` depending smoothly on `m`.
One can apply `ϕ m` to `v m`, and the resulting map is `C^n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean#L425).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3993c8dae956b9a125f3a0e350bd97dba3fe97cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
