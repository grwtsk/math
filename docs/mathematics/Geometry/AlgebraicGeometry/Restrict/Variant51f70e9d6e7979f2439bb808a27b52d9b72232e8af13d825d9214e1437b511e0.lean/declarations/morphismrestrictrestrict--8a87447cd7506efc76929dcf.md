# morphismRestrictRestrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aabba85447ff854df094a3cc565d4d45bf884eadcfa531f5a2e1e70652ad2567",
  "kind": "def",
  "lexical_name": "morphismRestrictRestrict",
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
  "slug": "morphismrestrictrestrict--8a87447cd7506efc76929dcf",
  "source": {
    "blob": "afb1d69f0544a201f67f5f0154920085573c869d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 611,
    "line": 593,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Restrict/Variant51f70e9d6e7979f2439bb808a27b52d9b72232e8af13d825d9214e1437b511e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a87447cd7506efc76929dcfd17c18c3d08bc072b1bd2bbfd3de59c23f6437d9",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Restrict/Variant51f70e9d6e7979f2439bb808a27b52d9b72232e8af13d825d9214e1437b511e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aabba85447ff854df094a3cc565d4d45bf884eadcfa531f5a2e1e70652ad2567`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 593–611.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def morphismRestrictRestrict {X Y : Scheme.{u}} (f : X ⟶ Y) (U : Y.Opens) (V : U.toScheme.Opens) :
    Arrow.mk (f ∣_ U ∣_ V) ≅ Arrow.mk (f ∣_ U.ι ''ᵁ V) := by
  refine Arrow.isoMk' _ _ ((Scheme.Opens.ι _).isoImage _ ≪≫ Scheme.isoOfEq _ ?_)
    ((Scheme.Opens.ι _).isoImage _) ?_
  · ext x
    simp only [IsOpenMap.coe_functor_obj, Opens.coe_inclusion',
      Opens.map_coe, Set.mem_image, Set.mem_preimage, SetLike.mem_coe, morphismRestrict_base]
    constructor
    · rintro ⟨⟨a, h₁⟩, h₂, rfl⟩
      exact ⟨_, h₂, rfl⟩
    · rintro ⟨⟨a, h₁⟩, h₂, rfl : a = _⟩
      exact ⟨⟨x, h₁⟩, h₂, rfl⟩
  · rw [← cancel_mono (Scheme.Opens.ι _), Iso.trans_hom, Category.assoc, Category.assoc,
      Category.assoc, morphismRestrict_ι, Scheme.isoOfEq_hom_ι_assoc,
      Scheme.Hom.isoImage_hom_ι_assoc,
      Scheme.Hom.isoImage_hom_ι,
      morphismRestrict_ι_assoc, morphismRestrict_ι]

/-- Restricting a morphism twice onto a basic open set is isomorphic to one restriction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Restrict/Variant51f70e9d6e7979f2439bb808a27b52d9b72232e8af13d825d9214e1437b511e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Restrict/Variant51f70e9d6e7979f2439bb808a27b52d9b72232e8af13d825d9214e1437b511e0.lean#L593).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afb1d69f0544a201f67f5f0154920085573c869d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
