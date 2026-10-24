# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d055abe1377cab331c3899272cf2ee38d36b59d6a1428228b886f3679bc82de6",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--9952dcd1fcd3cc04cd385d5a",
  "source": {
    "blob": "f0917130fca86cf11a93191f469396b67259022b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 147,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant3b6226030e9e1358d11c7322c869d1c6f6570ab311f225c942b00dfbb30db6f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9952dcd1fcd3cc04cd385d5af77cb3eb5b0dd63d7a0ef96df6e18fa3ec1620d7",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variant3b6226030e9e1358d11c7322c869d1c6f6570ab311f225c942b00dfbb30db6f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d055abe1377cab331c3899272cf2ee38d36b59d6a1428228b886f3679bc82de6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : SemilatticeInf (IdealSheafData X) where
  inf I J :=
  { ideal := I.ideal ⊓ J.ideal
    map_ideal_basicOpen U f := by
      dsimp
      have : (X.presheaf.map (homOfLE (X.basicOpen_le f)).op).hom = algebraMap _ _ := rfl
      have inst := U.2.isLocalization_basicOpen f
      rw [← I.map_ideal_basicOpen U f, ← J.map_ideal_basicOpen U f, this]
      ext x
      obtain ⟨x, s, rfl⟩ := IsLocalization.mk'_surjective (.powers f) x
      simp only [IsLocalization.mk'_mem_map_algebraMap_iff, Submonoid.mem_powers_iff, Ideal.mem_inf,
        exists_exists_eq_and]
      refine ⟨fun ⟨n, h₁, h₂⟩ ↦ ⟨⟨n, h₁⟩, ⟨n, h₂⟩⟩, ?_⟩
      rintro ⟨⟨n₁, h₁⟩, ⟨n₂, h₂⟩⟩
      refine ⟨n₁ + n₂, ?_, ?_⟩
      · rw [add_comm, pow_add, mul_assoc]; exact Ideal.mul_mem_left _ _ h₁
      · rw [pow_add, mul_assoc]; exact Ideal.mul_mem_left _ _ h₂ }
  inf_le_left I J U := inf_le_left
  inf_le_right I J U := inf_le_right
  le_inf I J K hIJ hIK U := le_inf (hIJ U) (hIK U)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variant3b6226030e9e1358d11c7322c869d1c6f6570ab311f225c942b00dfbb30db6f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant3b6226030e9e1358d11c7322c869d1c6f6570ab311f225c942b00dfbb30db6f1.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0917130fca86cf11a93191f469396b67259022b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
