# hasBasis_coclosedLindelof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:930a54e0-1d91-8ac7-f12e-1293107a59a5",
  "kind": "theorem",
  "lexical_name": "hasBasis_coclosedLindelof",
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
  "slug": "hasbasis-coclosedlindelof--e427ec77892f2b562fe21f02",
  "source": {
    "blob": "04e5d59fcc04eecb88714f3048cd71b043396086",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 469,
    "line": 462,
    "path": "GRWTSK/Topology/GeneralTopology/Lindelof/Variant7cad11a9c9b50270f4c185c8860f41c69eae05927e40502e082fdcd9a330b214.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e427ec77892f2b562fe21f02ad3b233dcfbd130f54a4535e4a16cbd6f7215bae",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lindelof/Variant7cad11a9c9b50270f4c185c8860f41c69eae05927e40502e082fdcd9a330b214.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:930a54e0-1d91-8ac7-f12e-1293107a59a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 462–469.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasBasis_coclosedLindelof :
    (Filter.coclosedLindelof X).HasBasis (fun s => IsClosed s ∧ IsLindelof s) compl := by
  simp only [Filter.coclosedLindelof, iInf_and']
  refine hasBasis_biInf_principal' ?_ ⟨∅, isClosed_empty, isLindelof_empty⟩
  rintro s ⟨hs₁, hs₂⟩ t ⟨ht₁, ht₂⟩
  exact ⟨s ∪ t, ⟨⟨hs₁.union ht₁, hs₂.union ht₂⟩, compl_subset_compl.2 subset_union_left,
    compl_subset_compl.2 subset_union_right⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lindelof/Variant7cad11a9c9b50270f4c185c8860f41c69eae05927e40502e082fdcd9a330b214.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lindelof/Variant7cad11a9c9b50270f4c185c8860f41c69eae05927e40502e082fdcd9a330b214.lean#L462).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04e5d59fcc04eecb88714f3048cd71b043396086` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
