# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2995b021408e0d73a47ef55601aaf7a0d22c9f9ce782672c30f9fa8e6a5477ee",
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
  "slug": "instance--1f4eb3ac6db9b3a6858fcf14",
  "source": {
    "blob": "c2eecf7d06c190b3d48b40a8418bfa6b1225a46a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 278,
    "path": "GRWTSK/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1f4eb3ac6db9b3a6858fcf14210c0456ebf54804e35866f5e60b30fe02741086",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2995b021408e0d73a47ef55601aaf7a0d22c9f9ce782672c30f9fa8e6a5477ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Inf (Finpartition a) :=
  ⟨fun P Q ↦
    ofErase ((P.parts ×ˢ Q.parts).image fun bc ↦ bc.1 ⊓ bc.2)
      (by
        rw [supIndep_iff_disjoint_erase]
        simp only [mem_image, and_imp, exists_prop, forall_exists_index, id.def, Prod.exists,
          mem_product, Finset.disjoint_sup_right, mem_erase, Ne.def]
        rintro _ x₁ y₁ hx₁ hy₁ rfl _ h x₂ y₂ hx₂ hy₂ rfl
        rcases eq_or_ne x₁ x₂ with (rfl | xdiff)
        · refine' Disjoint.mono inf_le_right inf_le_right (Q.disjoint hy₁ hy₂ _)
          intro t
          simp [t] at h
        exact Disjoint.mono inf_le_left inf_le_left (P.disjoint hx₁ hx₂ xdiff))
      (by
        rw [sup_image, comp.left_id, sup_product_left]
        trans P.parts.sup id ⊓ Q.parts.sup id
        · simp_rw [Finset.sup_inf_distrib_right, Finset.sup_inf_distrib_left]
          rfl
        · rw [P.supParts, Q.supParts, inf_idem])⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2eecf7d06c190b3d48b40a8418bfa6b1225a46a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
