# VectorPrebundle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:94cc416357b453088629c673a36bb309286e1818f50b0919f0516ba8bb7d83e4",
  "kind": "structure",
  "lexical_name": "VectorPrebundle",
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
  "slug": "vectorprebundle--2d83616f3762bfd9e5d204e7",
  "source": {
    "blob": "da578940fc9a46d454b8e5d1bd13861e293fa597",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 842,
    "line": 826,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant6686f7f37c32b6fcd115227430717b8dc3539e1e72ec973354418164979a1226.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2d83616f3762bfd9e5d204e757afd19950a7956bf4e37c2fef125434abe21add",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant6686f7f37c32b6fcd115227430717b8dc3539e1e72ec973354418164979a1226.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:94cc416357b453088629c673a36bb309286e1818f50b0919f0516ba8bb7d83e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 826–842.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure VectorPrebundle where
  pretrivializationAtlas : Set (Pretrivialization F (π F E))
  pretrivialization_linear' : ∀ e, e ∈ pretrivializationAtlas → e.IsLinear R
  pretrivializationAt : B → Pretrivialization F (π F E)
  mem_base_pretrivializationAt : ∀ x : B, x ∈ (pretrivializationAt x).baseSet
  pretrivialization_mem_atlas : ∀ x : B, pretrivializationAt x ∈ pretrivializationAtlas
  exists_coordChange : ∀ᵉ (e ∈ pretrivializationAtlas) (e' ∈ pretrivializationAtlas),
    ∃ f : B → F →L[R] F, ContinuousOn f (e.baseSet ∩ e'.baseSet) ∧
      ∀ᵉ (b ∈ e.baseSet ∩ e'.baseSet) (v : F), f b v = (e' ⟨b, e.symm b v⟩).2
  totalSpaceMk_isInducing : ∀ b : B, IsInducing (pretrivializationAt b ∘ .mk b)

namespace VectorPrebundle

variable {R E F}

/-- A randomly chosen coordinate change on a `VectorPrebundle`, given by
  the field `exists_coordChange`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant6686f7f37c32b6fcd115227430717b8dc3539e1e72ec973354418164979a1226.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant6686f7f37c32b6fcd115227430717b8dc3539e1e72ec973354418164979a1226.lean#L826).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da578940fc9a46d454b8e5d1bd13861e293fa597` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
