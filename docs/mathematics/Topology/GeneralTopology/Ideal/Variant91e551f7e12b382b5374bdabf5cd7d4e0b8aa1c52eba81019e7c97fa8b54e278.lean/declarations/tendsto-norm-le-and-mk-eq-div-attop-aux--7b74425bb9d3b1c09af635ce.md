# tendsto_norm_le_and_mk_eq_div_atTop_aux₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c67bb848a217bf709b7fbdcf10bb4b536bd272ef579187ea620f53a34cc5d6ce",
  "kind": "def",
  "lexical_name": "tendsto_norm_le_and_mk_eq_div_atTop_aux₂",
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
  "slug": "tendsto-norm-le-and-mk-eq-div-attop-aux--7b74425bb9d3b1c09af635ce",
  "source": {
    "blob": "c34e015583125883cadf99bd3cacc90826a4fdcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 60,
    "path": "GRWTSK/Topology/GeneralTopology/Ideal/Variant91e551f7e12b382b5374bdabf5cd7d4e0b8aa1c52eba81019e7c97fa8b54e278.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b74425bb9d3b1c09af635ce0146eb0f3bce0f037e9f24bec010d27a13c19f3b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Ideal/Variant91e551f7e12b382b5374bdabf5cd7d4e0b8aa1c52eba81019e7c97fa8b54e278.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c67bb848a217bf709b7fbdcf10bb4b536bd272ef579187ea620f53a34cc5d6ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def tendsto_norm_le_and_mk_eq_div_atTop_aux₂ :
    ↑({x | x ∈ (toMixed K) ⁻¹' fundamentalCone K ∧ mixedEmbedding.norm ((toMixed K) x) ≤ s} ∩
      (ZLattice.comap ℝ (idealLattice K ((FractionalIdeal.mk0 K) J)) (toMixed K).toLinearMap))
        ≃ {a : idealSet K J // mixedEmbedding.norm (a : mixedSpace K) ≤ s} := by
  rw [ZLattice.coe_comap]
  refine (((toMixed K).toEquiv.image _).trans (Equiv.setCongr ?_)).trans
    (Equiv.subtypeSubtypeEquivSubtypeInter _ (mixedEmbedding.norm · ≤ s)).symm
  ext
  simp_rw [mem_idealSet, Set.mem_image, Set.mem_inter_iff, Set.mem_preimage, SetLike.mem_coe,
    mem_idealLattice, FractionalIdeal.coe_mk0]
  constructor
  · rintro ⟨_, ⟨⟨hx₁, hx₂⟩, _, ⟨x, hx₃, rfl⟩, rfl⟩, rfl⟩
    exact ⟨⟨hx₁, x, hx₃, rfl⟩, hx₂⟩
  · rintro ⟨⟨hx₁, ⟨x, hx₂, rfl⟩⟩, hx₃⟩
    exact ⟨(toMixed K).symm (mixedEmbedding K x), ⟨⟨hx₁, hx₃⟩, ⟨(x : K), by simp [hx₂], rfl⟩⟩, rfl⟩

variable (C) in
/--
The limit of the number of nonzero integral ideals of norm `≤ s` in a fixed class `C` of the
class group divided by `s` when `s → +∞`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Ideal/Variant91e551f7e12b382b5374bdabf5cd7d4e0b8aa1c52eba81019e7c97fa8b54e278.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Ideal/Variant91e551f7e12b382b5374bdabf5cd7d4e0b8aa1c52eba81019e7c97fa8b54e278.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c34e015583125883cadf99bd3cacc90826a4fdcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
