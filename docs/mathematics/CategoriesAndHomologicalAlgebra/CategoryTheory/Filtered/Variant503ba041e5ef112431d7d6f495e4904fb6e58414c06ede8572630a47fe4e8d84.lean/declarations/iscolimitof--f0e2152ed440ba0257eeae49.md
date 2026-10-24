# isColimitOf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:51f4650a9286b0e6c9fc1667067848981f2c904d9c2b84611e7e65f25ece7a59",
  "kind": "def",
  "lexical_name": "isColimitOf",
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
  "slug": "iscolimitof--f0e2152ed440ba0257eeae49",
  "source": {
    "blob": "ac794b619300ac597451f90c29f639a0857e2294",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 67,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant503ba041e5ef112431d7d6f495e4904fb6e58414c06ede8572630a47fe4e8d84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f0e2152ed440ba0257eeae49b78b6f6e42ed3eeebda786c2d9ac01b18ca5b7f2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant503ba041e5ef112431d7d6f495e4904fb6e58414c06ede8572630a47fe4e8d84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:51f4650a9286b0e6c9fc1667067848981f2c904d9c2b84611e7e65f25ece7a59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isColimitOf (t : Cocone F) (hsurj : ∀ x : t.pt, ∃ i xi, x = t.ι.app i xi)
    (hinj :
      ∀ i j xi xj,
        t.ι.app i xi = t.ι.app j xj → ∃ (k : _) (f : i ⟶ k) (g : j ⟶ k), F.map f xi = F.map g xj) :
    IsColimit t := by
  let α : t.pt → J := fun x => (hsurj x).choose
  let f : ∀ (x : t.pt), F.obj (α x) := fun x => (hsurj x).choose_spec.choose
  have hf : ∀ (x : t.pt), x = t.ι.app _ (f x) := fun x => (hsurj x).choose_spec.choose_spec
  exact
    { desc s := ↾fun x => s.ι.app _ (f x)
      fac := fun s j => by
        ext y
        obtain ⟨k, l, g, eq⟩ := hinj _ _ _ _ (hf (t.ι.app j y))
        have h := congr_hom (s.ι.naturality g) (f (t.ι.app j y))
        have h' := congr_hom (s.ι.naturality l) y
        simp only [Functor.const_obj_obj, comp_apply, Functor.const_obj_map, Category.comp_id,
          TypeCat.Fun.toFun_apply, hom_ofHom, TypeCat.Fun.coe_mk] at h h' ⊢
        rw [← h, ← eq, h']
      uniq := fun s m hm => by
        ext x
        dsimp
        nth_rw 1 [hf x]
        simp [← hm, comp_apply] }

variable [IsFilteredOrEmpty J]

#adaptation_note
/--
Note that the body of `isColimitOf'` locally enables `respectTransparency true` for a subterm.
The underlying reason is that there is one corner case where `respectTransparency true` unfolds
*more*, and we need that here.
The intended fix is to get rid of the outer `respectTransparency false`. After that, the inner
`respectTransparency true` is redundant and can be removed, too.
-/
set_option backward.defeqAttrib.useBackward true in
/-- Recognizing filtered colimits of types. The injectivity condition here is
slightly easier to check as compared to `isColimitOf`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant503ba041e5ef112431d7d6f495e4904fb6e58414c06ede8572630a47fe4e8d84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant503ba041e5ef112431d7d6f495e4904fb6e58414c06ede8572630a47fe4e8d84.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac794b619300ac597451f90c29f639a0857e2294` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
