# map_iInf_comap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b24ce6c0-8f48-d328-69c9-1f639e649257",
  "kind": "theorem",
  "lexical_name": "map_iInf_comap",
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
  "slug": "map-iinf-comap--c644158bdf5d7513b14d9a9a",
  "source": {
    "blob": "8f896a76230c86e4b849d924fcac25c248105b87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 436,
    "line": 425,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c644158bdf5d7513b14d9a9ab8e2d208ea33ada2bce46c9563942cfd694e587f",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b24ce6c0-8f48-d328-69c9-1f639e649257`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 425–436.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_iInf_comap {ι β} [Nonempty ι] {f : α → β} (m : ι → OuterMeasure β) :
    map f (⨅ i, comap f (m i)) = ⨅ i, map f (comap f (m i)) := by
  refine (map_iInf_le _ _).antisymm fun s => ?_
  simp only [map_apply, comap_apply, iInf_apply, le_iInf_iff]
  refine fun t ht => iInf_le_of_le (fun n => f '' t n ∪ (range f)ᶜ) (iInf_le_of_le ?_ ?_)
  · rw [← iUnion_union, Set.union_comm, ← inter_subset, ← image_iUnion, ←
      image_preimage_eq_inter_range]
    exact image_mono ht
  · refine ENNReal.tsum_le_tsum fun n => iInf_mono fun i => (m i).mono ?_
    simpa only [preimage_union, preimage_compl, preimage_range, compl_univ, union_empty,
      image_subset_iff] using subset_rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean#L425).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f896a76230c86e4b849d924fcac25c248105b87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
