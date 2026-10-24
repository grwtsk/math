# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:504ff70b391fc8b2d25be80521c0e1099c9ec7e812b9f31053ec097fab794ef6",
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
  "slug": "instance--f7abb563bade5e77e01832a5",
  "source": {
    "blob": "9ca4bec62191cc2f6f07f1c5112b1a210241d7ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 233,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/SmallAffineZariski/Variant1613b4e9d6ea33e98ceb6db64a704f54d36d68fd667edb32fdea2b358406730f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f7abb563bade5e77e01832a5b7638cf5e8fac704ca63ab61a5640e58869146a2",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/SmallAffineZariski/Variant1613b4e9d6ea33e98ceb6db64a704f54d36d68fd667edb32fdea2b358406730f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:504ff70b391fc8b2d25be80521c0e1099c9ec7e812b9f31053ec097fab794ef6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance : (Scheme.AffineZariskiSite.directedCover X).LocallyDirected where
  trans f := X.homOfLE (((Scheme.AffineZariskiSite.toOpensFunctor _).map f).le)
  directed {U V} x := by
    let a := (pullback.fst _ _ ≫ U.1.ι) x
    have haU : a ∈ U.1 := (pullback.fst U.1.ι V.1.ι x).2
    have haV : a ∈ V.1 := by unfold a; rw [pullback.condition]; exact (pullback.snd U.1.ι V.1.ι x).2
    obtain ⟨f, g, e, hxf⟩ := exists_basicOpen_le_affine_inter U.2 V.2 _ ⟨haU, haV⟩
    refine ⟨U.basicOpen f, homOfLE (U.basicOpen_le f), eqToHom (Subtype.ext (by exact e)) ≫
      homOfLE (V.basicOpen_le g), ⟨a, hxf⟩, ?_⟩
    apply (pullback.fst _ _ ≫ U.1.ι).isOpenEmbedding.injective
    dsimp
    change (pullback.lift _ _ _ ≫ pullback.fst _ _ ≫ U.1.ι) _ = _
    simp only [pullback.lift_fst_assoc, homOfLE_ι, Opens.ι_apply]
    rfl

section PreservesLocalization

/-!
## "Quasi-coherent `𝒪ₓ`-algebras"

A presheaf `F` of rings on `X.AffineZariskiSite` with a structural morphism `α : 𝒪ₓ ⟶ F`
is said to be `Coequifibered` if `F(D(f)) = F(U)[1/f]`
for every open `U` and any section `f : Γ(X, U)`.
(See `coequifibered_iff_forall_isLocalizationAway`)

Under this condition we can construct a family of gluing data (See `relativeGluingData`) and glue
`F` into a scheme over `X` via `(relativeGluingData _).glued`,
Also see the relative gluing API in `Mathlib/AlgebraicGeometry/RelativeGluing.lean`.

This is closely related to the notion of quasi-coherent `𝒪ₓ`-algebras, and we shall link them
together once the theory of quasi-coherent `𝒪ₓ`-algebras are developed.
-/

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
variable (X) in
/-- `X` is the colimit of its affine opens. See `isColimit_cocone` below. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/SmallAffineZariski/Variant1613b4e9d6ea33e98ceb6db64a704f54d36d68fd667edb32fdea2b358406730f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/SmallAffineZariski/Variant1613b4e9d6ea33e98ceb6db64a704f54d36d68fd667edb32fdea2b358406730f.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ca4bec62191cc2f6f07f1c5112b1a210241d7ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
