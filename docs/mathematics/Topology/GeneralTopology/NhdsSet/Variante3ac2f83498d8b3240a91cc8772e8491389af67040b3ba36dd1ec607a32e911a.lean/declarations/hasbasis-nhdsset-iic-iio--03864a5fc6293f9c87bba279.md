# hasBasis_nhdsSet_Iic_Iio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ea21048-43bd-499a-e750-1637dd28d4d2",
  "kind": "theorem",
  "lexical_name": "hasBasis_nhdsSet_Iic_Iio",
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
  "slug": "hasbasis-nhdsset-iic-iio--03864a5fc6293f9c87bba279",
  "source": {
    "blob": "c26d6c04d2f124da0e74bbe6a43dbd12ca347cc7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 177,
    "path": "GRWTSK/Topology/GeneralTopology/NhdsSet/Variante3ac2f83498d8b3240a91cc8772e8491389af67040b3ba36dd1ec607a32e911a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03864a5fc6293f9c87bba27912eee9c6df0b7d58c652987112b878051bef396e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NhdsSet/Variante3ac2f83498d8b3240a91cc8772e8491389af67040b3ba36dd1ec607a32e911a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ea21048-43bd-499a-e750-1637dd28d4d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasBasis_nhdsSet_Iic_Iio (a : α) [h : Nonempty (Ioi a)] :
    HasBasis (𝓝ˢ (Iic a)) (a < ·) Iio := by
  refine ⟨fun s ↦ ⟨fun hs ↦ ?_, fun ⟨b, hab, hb⟩ ↦ mem_of_superset (Iio_mem_nhdsSet_Iic hab) hb⟩⟩
  rw [nhdsSet_Iic, mem_sup, mem_principal] at hs
  rcases exists_Ico_subset_of_mem_nhds hs.1 (Set.nonempty_coe_sort.1 h) with ⟨b, hab, hbs⟩
  exact ⟨b, hab, Iio_subset_Iio_union_Ico.trans (union_subset hs.2 hbs)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NhdsSet/Variante3ac2f83498d8b3240a91cc8772e8491389af67040b3ba36dd1ec607a32e911a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NhdsSet/Variante3ac2f83498d8b3240a91cc8772e8491389af67040b3ba36dd1ec607a32e911a.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c26d6c04d2f124da0e74bbe6a43dbd12ca347cc7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
