# of_isLocalAtSource_of_isLocalAtTarget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:025811b9-7dd8-9758-0e72-ab03f211adec",
  "kind": "lemma",
  "lexical_name": "of_isLocalAtSource_of_isLocalAtTarget",
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
  "slug": "of-islocalatsource-of-islocalattarget--8322227899d37625e39b3655",
  "source": {
    "blob": "26f03c4e4fd6f07813b86af00e58b6663b93f91a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 450,
    "line": 427,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8322227899d37625e39b36557bfbfe8f9bdbf5c4e03a6f15294f73d343629688",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:025811b9-7dd8-9758-0e72-ab03f211adec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 427–450.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma of_isLocalAtSource_of_isLocalAtTarget [IsLocalAtTarget P] [IsLocalAtSource P] :
    HasRingHomProperty P (fun f ↦ P (Spec.map (CommRingCat.ofHom f))) where
  isLocal_ringHomProperty :=
    isLocal_ringHomProperty_of_isLocalAtSource_of_isLocalAtTarget P
  eq_affineLocally' := by
    let Q := affineLocally (fun f ↦ P (Spec.map (CommRingCat.ofHom f)))
    have : HasRingHomProperty Q (fun f ↦ P (Spec.map (CommRingCat.ofHom f))) :=
      ⟨isLocal_ringHomProperty_of_isLocalAtSource_of_isLocalAtTarget P, rfl⟩
    show P = Q
    ext X Y f
    wlog hY : ∃ R, Y = Spec R generalizing X Y
    · rw [IsLocalAtTarget.iff_of_openCover (P := P) Y.affineCover,
        IsLocalAtTarget.iff_of_openCover (P := Q) Y.affineCover]
      refine forall_congr' fun _ ↦ this _ ⟨_, rfl⟩
    obtain ⟨S, rfl⟩ := hY
    wlog hX : ∃ R, X = Spec R generalizing X
    · rw [IsLocalAtSource.iff_of_openCover (P := P) X.affineCover,
        IsLocalAtSource.iff_of_openCover (P := Q) X.affineCover]
      refine forall_congr' fun _ ↦ this _ ⟨_, rfl⟩
    obtain ⟨R, rfl⟩ := hX
    obtain ⟨φ, rfl⟩ : ∃ φ, Spec.map φ = f := ⟨_, Spec.map_preimage _⟩
    rw [HasRingHomProperty.Spec_iff (P := Q)]
    rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean#L427).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26f03c4e4fd6f07813b86af00e58b6663b93f91a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
