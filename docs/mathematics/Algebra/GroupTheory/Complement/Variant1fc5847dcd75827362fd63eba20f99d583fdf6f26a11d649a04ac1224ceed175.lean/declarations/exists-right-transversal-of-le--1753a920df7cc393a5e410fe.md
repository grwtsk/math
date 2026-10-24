# exists_right_transversal_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9ed1a3c1-e939-d4bd-15e4-c0687db1b989",
  "kind": "lemma",
  "lexical_name": "exists_right_transversal_of_le",
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
  "slug": "exists-right-transversal-of-le--1753a920df7cc393a5e410fe",
  "source": {
    "blob": "d11e2118a7d6e899c0638a1bc3483af8b28bb7b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 451,
    "line": 434,
    "path": "GRWTSK/Algebra/GroupTheory/Complement/Variant1fc5847dcd75827362fd63eba20f99d583fdf6f26a11d649a04ac1224ceed175.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1753a920df7cc393a5e410fee4237c5a0f19fd7f16a7a07991322b9aaf09beac",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Complement/Variant1fc5847dcd75827362fd63eba20f99d583fdf6f26a11d649a04ac1224ceed175.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ed1a3c1-e939-d4bd-15e4-c0687db1b989`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 434–451.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_right_transversal_of_le {H' H : Subgroup G} (h : H' ≤ H) :
    ∃ S : Set G, H' * S = H ∧ Nat.card H' * Nat.card S = Nat.card H := by
  let H'' : Subgroup H := H'.comap H.subtype
  have : H' = H''.map H.subtype := by simp [H'', h]
  rw [this]
  obtain ⟨S, cmem, -⟩ := H''.exists_isComplement_right 1
  refine ⟨H.subtype '' S, ?_, ?_⟩
  · have : H.subtype '' (H'' * S) = H''.map H.subtype * H.subtype '' S := image_mul H.subtype
    rw [← this, cmem.mul_eq]
    simp [Set.ext_iff]
  · have : Nat.card H'' * Nat.card S = Nat.card H := cmem.card_mul_card
    rw [← this]
    refine congr_arg₂ (· * ·) ?_ ?_ <;>
      exact Nat.card_congr (Equiv.Set.image _ _ <| subtype_injective H).symm

namespace IsComplement

/-- The equivalence `G ≃ S × T`, such that the inverse is  `(*) : S × T → G` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Complement/Variant1fc5847dcd75827362fd63eba20f99d583fdf6f26a11d649a04ac1224ceed175.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Complement/Variant1fc5847dcd75827362fd63eba20f99d583fdf6f26a11d649a04ac1224ceed175.lean#L434).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d11e2118a7d6e899c0638a1bc3483af8b28bb7b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
