# isCoatom_comap_of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:85cd7ee2-98fd-33af-b949-a8f8f3540b15",
  "kind": "lemma",
  "lexical_name": "isCoatom_comap_of_surjective",
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
  "slug": "iscoatom-comap-of-surjective--c5c53c6d72b7ff57422c2745",
  "source": {
    "blob": "41b3e8577042d3a8524f6060088da8b056a89460",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 65,
    "path": "GRWTSK/Algebra/GroupTheory/Order/Variant1ed49e7d842599443c64a1aed4935332d8ebc24cab56254e9d798fb200a01617.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5c53c6d72b7ff57422c27452bf79256fc1488e0764ab22f877731bbb0b15683",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Order/Variant1ed49e7d842599443c64a1aed4935332d8ebc24cab56254e9d798fb200a01617.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85cd7ee2-98fd-33af-b949-a8f8f3540b15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isCoatom_comap_of_surjective
    {H : Type*} [Group H] {φ : G →* H} (hφ : Function.Surjective φ)
    {M : Subgroup H} (hM : IsCoatom M) : IsCoatom (M.comap φ) := by
  refine And.imp (fun hM ↦ ?_) (fun hM ↦ ?_) hM
  · rwa [← (comap_injective hφ).ne_iff, comap_top] at hM
  · intro K hK
    specialize hM (K.map φ)
    rw [← comap_lt_comap_of_surjective hφ, ← (comap_injective hφ).eq_iff] at hM
    rw [comap_map_eq_self ((M.ker_le_comap φ).trans hK.le), comap_top] at hM
    exact hM hK

end Subgroup
end Coatom

namespace Subgroup

variable {G : Type*}

/-- A subgroup of an ordered group is an ordered group. -/
@[to_additive "An `AddSubgroup` of an `AddOrderedCommGroup` is an `AddOrderedCommGroup`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Order/Variant1ed49e7d842599443c64a1aed4935332d8ebc24cab56254e9d798fb200a01617.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Order/Variant1ed49e7d842599443c64a1aed4935332d8ebc24cab56254e9d798fb200a01617.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41b3e8577042d3a8524f6060088da8b056a89460` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
