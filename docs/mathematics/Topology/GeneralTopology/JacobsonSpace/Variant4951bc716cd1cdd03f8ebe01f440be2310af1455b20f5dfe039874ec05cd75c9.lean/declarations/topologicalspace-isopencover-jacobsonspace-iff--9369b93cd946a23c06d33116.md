# TopologicalSpace.IsOpenCover.jacobsonSpace_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e6bfe2ab-2afa-ac4e-1c29-b591cbf84a58",
  "kind": "lemma",
  "lexical_name": "TopologicalSpace.IsOpenCover.jacobsonSpace_iff",
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
  "slug": "topologicalspace-isopencover-jacobsonspace-iff--9369b93cd946a23c06d33116",
  "source": {
    "blob": "a5df5a1e067c27728d3c917d1cdada5bde810fdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 159,
    "path": "GRWTSK/Topology/GeneralTopology/JacobsonSpace/Variant4951bc716cd1cdd03f8ebe01f440be2310af1455b20f5dfe039874ec05cd75c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9369b93cd946a23c06d33116b642f7b9b9aa42e8838333ce64590bc93d2c3d8b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/JacobsonSpace/Variant4951bc716cd1cdd03f8ebe01f440be2310af1455b20f5dfe039874ec05cd75c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6bfe2ab-2afa-ac4e-1c29-b591cbf84a58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma TopologicalSpace.IsOpenCover.jacobsonSpace_iff {ι : Type*} {U : ι → Opens X}
    (hU : IsOpenCover U) : JacobsonSpace X ↔ ∀ i, JacobsonSpace (U i) := by
  refine ⟨fun H i ↦ .of_isOpenEmbedding (U i).2.isOpenEmbedding_subtypeVal, fun H ↦ ?_⟩
  rw [jacobsonSpace_iff_locallyClosed]
  intros Z hZ hZ'
  rw [← hU.iUnion_inter Z, Set.nonempty_iUnion] at hZ
  obtain ⟨i, x, hx, hx'⟩ := hZ
  obtain ⟨y, hy, hy'⟩ := (jacobsonSpace_iff_locallyClosed.mp (H i)) _ ⟨⟨x, hx'⟩, hx⟩
    (hZ'.preimage continuous_subtype_val)
  refine ⟨y, hy, hU.isClosed_iff_coe_preimage.mpr fun j ↦ ?_⟩
  by_cases h : (y : X) ∈ U j
  · convert_to IsClosed {(⟨y, h⟩ : U j)}
    · ext; simp [← Subtype.coe_inj]
    apply isClosed_singleton_of_isLocallyClosed_singleton
    convert (hy'.isLocallyClosed.image IsEmbedding.subtypeVal.isInducing
      (U i).2.isOpenEmbedding_subtypeVal.isOpen_range.isLocallyClosed).preimage
      continuous_subtype_val
    ext
    simp [← Subtype.coe_inj]
  · convert isClosed_empty
    rw [Set.eq_empty_iff_forall_notMem]
    intro z (hz : z.1 = y.1)
    exact h (hz ▸ z.2)

@[deprecated IsOpenCover.jacobsonSpace_iff (since := "2025-02-10")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/JacobsonSpace/Variant4951bc716cd1cdd03f8ebe01f440be2310af1455b20f5dfe039874ec05cd75c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/JacobsonSpace/Variant4951bc716cd1cdd03f8ebe01f440be2310af1455b20f5dfe039874ec05cd75c9.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5df5a1e067c27728d3c917d1cdada5bde810fdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
