# HasRingHomProperty.descendsAlong

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a1e3e3d-ed74-95ca-bf48-46dc038d5d87",
  "kind": "lemma",
  "lexical_name": "HasRingHomProperty.descendsAlong",
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
  "slug": "hasringhomproperty-descendsalong--5c3c8882b6f3d2ca81681925",
  "source": {
    "blob": "effb8e29a9443f0507ce82a46a7ad8c4c8405206",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 172,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Descent/Variant27d3eecd13458e1ce31a0ef7c31f6e951cc4be448e05d2b66c9e24cd543e6788.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c3c8882b6f3d2ca81681925e39529f8489965924219a9b2d9952723ab61d194",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Descent/Variant27d3eecd13458e1ce31a0ef7c31f6e951cc4be448e05d2b66c9e24cd543e6788.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a1e3e3d-ed74-95ca-bf48-46dc038d5d87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec lemma HasRingHomProperty.descendsAlong [HasRingHomProperty P Q]
    (hQQ' : RingHom.CodescendsAlong Q Q') :
    P.DescendsAlong (P' ⊓ @QuasiCompact) := by
  apply IsZariskiLocalAtTarget.descendsAlong_inf_quasiCompact _ _ H₁
  introv h hf
  wlog hY : ∃ S, Y = Spec S generalizing Y
  · rw [IsZariskiLocalAtSource.iff_of_openCover (P := P) Y.affineCover]
    intro i
    have heq : pullback.fst (Spec.map φ) (Y.affineCover.f i ≫ g) =
        pullback.map _ _ _ _ (𝟙 _) (Y.affineCover.f i) (𝟙 _) (by simp) (by simp) ≫
          pullback.fst (Spec.map φ) g := (pullback.lift_fst _ _ _).symm
    exact this _ (heq ▸ AlgebraicGeometry.IsZariskiLocalAtSource.comp hf _) ⟨_, rfl⟩
  obtain ⟨S, rfl⟩ := hY
  apply of_pullback_fst_Spec_of_codescendsAlong _ _ hQQ' H₂ _ h hf
  simp [HasRingHomProperty.Spec_iff (P := P)]

include H₁ H₂ in
/--
Let `P` be a morphism property associated with `affineAnd Q`. Suppose

- `P'` implies `Q'` on global sections on affine schemes,
- `P'` is satisfied for surjective, local isomorphisms,
- affine morphisms descend along `P''`, and
- `Q` codescends along `Q'`,

Then `P` descends along quasi-compact morphisms satisfying `P'`.

Note: The second condition is in particular satisfied for faithfully flat morphisms.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Descent/Variant27d3eecd13458e1ce31a0ef7c31f6e951cc4be448e05d2b66c9e24cd543e6788.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Descent/Variant27d3eecd13458e1ce31a0ef7c31f6e951cc4be448e05d2b66c9e24cd543e6788.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `effb8e29a9443f0507ce82a46a7ad8c4c8405206` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
