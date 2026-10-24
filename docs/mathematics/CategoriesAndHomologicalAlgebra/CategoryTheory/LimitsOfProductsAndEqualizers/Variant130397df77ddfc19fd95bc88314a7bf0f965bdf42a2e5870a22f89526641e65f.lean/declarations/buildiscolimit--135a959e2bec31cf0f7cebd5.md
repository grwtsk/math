# buildIsColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3935cafcdb351695e8ef9f9e7d2b7449e72d0fdf1cfc7ab0770ffc80bb01fc77",
  "kind": "def",
  "lexical_name": "buildIsColimit",
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
  "slug": "buildiscolimit--135a959e2bec31cf0f7cebd5",
  "source": {
    "blob": "0b5ba14746f8c2c4f315eebca7b96c0ea756dc3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 332,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:135a959e2bec31cf0f7cebd576f9e9ba499fae26b5524be9c2c03ecc1b8af18e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3935cafcdb351695e8ef9f9e7d2b7449e72d0fdf1cfc7ab0770ffc80bb01fc77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def buildIsColimit (t₁ : IsColimit c₁) (t₂ : IsColimit c₂) (hi : IsColimit i) :
    IsColimit (buildColimit s t hs ht i) where
  desc q := by
    refine hi.desc (Cofork.ofπ ?_ ?_)
    · refine t₂.desc (Cofan.mk _ fun j => ?_)
      apply q.ι.app j
    · apply t₁.hom_ext
      intro ⟨j⟩
      have reassoced_s (f : (p : J × J) × (p.fst ⟶ p.snd)) {W : C} (h : _ ⟶ W) :
        c₁.ι.app ⟨f⟩ ≫ s ≫ h = F.map f.snd ≫ c₂.ι.app ⟨f.fst.snd⟩ ≫ h := by
          simp only [← Category.assoc]
          apply eq_whisker (hs f)
      have reassoced_t (f : (p : J × J) × (p.fst ⟶ p.snd)) {W : C} (h : _ ⟶ W) :
        c₁.ι.app ⟨f⟩ ≫ t ≫ h = c₂.ι.app ⟨f.fst.fst⟩ ≫ h := by
          simp only [← Category.assoc]
          apply eq_whisker (ht f)
      simp [reassoced_s, reassoced_t]
  uniq q m w := hi.hom_ext (i.coequalizer_ext (t₂.hom_ext fun j => by simpa using w j.1))
  fac s j := by simp

end HasColimitOfHasCoproductsOfHasCoequalizers

open HasColimitOfHasCoproductsOfHasCoequalizers

/-- Given the existence of the appropriate (possibly finite) coproducts and coequalizers,
we can construct a colimit cocone for `F`.
(This assumes the existence of all coequalizers, which is technically stronger than needed.)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b5ba14746f8c2c4f315eebca7b96c0ea756dc3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
