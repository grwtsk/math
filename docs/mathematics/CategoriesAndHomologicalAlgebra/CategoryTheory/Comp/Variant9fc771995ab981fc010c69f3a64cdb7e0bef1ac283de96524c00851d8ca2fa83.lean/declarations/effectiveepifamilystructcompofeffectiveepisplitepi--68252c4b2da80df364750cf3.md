# effectiveEpiFamilyStructCompOfEffectiveEpiSplitEpi'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:abf984688846ada688b59211fd0378dca18cb9e645223ea329b8f0e82935b570",
  "kind": "def",
  "lexical_name": "effectiveEpiFamilyStructCompOfEffectiveEpiSplitEpi'",
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
  "slug": "effectiveepifamilystructcompofeffectiveepisplitepi--68252c4b2da80df364750cf3",
  "source": {
    "blob": "4284db6872071bc5e9e05f35980d8b1c89c2d86c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 36,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant9fc771995ab981fc010c69f3a64cdb7e0bef1ac283de96524c00851d8ca2fa83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:68252c4b2da80df364750cf366ba9a453de3e9e1f23c3c822a35ff3b67eb5f89",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant9fc771995ab981fc010c69f3a64cdb7e0bef1ac283de96524c00851d8ca2fa83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:abf984688846ada688b59211fd0378dca18cb9e645223ea329b8f0e82935b570`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def effectiveEpiFamilyStructCompOfEffectiveEpiSplitEpi' {α : Type*} {B : C} {X Y : α → C}
    (f : (a : α) → X a ⟶ B) (g : (a : α) → Y a ⟶ X a) (i : (a : α) → X a ⟶ Y a)
    (hi : ∀ a, i a ≫ g a = 𝟙 _) [EffectiveEpiFamily _ f] :
    EffectiveEpiFamilyStruct _ (fun a ↦ g a ≫ f a) where
  desc e w := EffectiveEpiFamily.desc _ f (fun a ↦ i a ≫ e a) fun a₁ a₂ g₁ g₂ _ ↦ (by
    simp only [← Category.assoc]
    apply w _ _ (g₁ ≫ i a₁) (g₂ ≫ i a₂)
    simp only [Category.assoc, hi]
    simp only [← Category.assoc, hi]
    simpa)
  fac e w a := by
    simp only [Category.assoc, EffectiveEpiFamily.fac]
    rw [← Category.id_comp (e a), ← Category.assoc, ← Category.assoc]
    apply w
    simp only [Category.comp_id, Category.id_comp, ← Category.assoc]
    aesop
  uniq _ _ _ hm := by
    apply EffectiveEpiFamily.uniq _ f
    intro a
    rw [← hm a, ← Category.assoc, ← Category.assoc, hi, Category.id_comp]

/--
An effective epi family precomposed with a family of split epis is effective epimorphic.
-/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant9fc771995ab981fc010c69f3a64cdb7e0bef1ac283de96524c00851d8ca2fa83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant9fc771995ab981fc010c69f3a64cdb7e0bef1ac283de96524c00851d8ca2fa83.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4284db6872071bc5e9e05f35980d8b1c89c2d86c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
