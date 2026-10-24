# hasInitial_of_isCoseparating

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30831619-46f2-12b5-7f23-a5074083de07",
  "kind": "theorem",
  "lexical_name": "hasInitial_of_isCoseparating",
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
  "slug": "hasinitial-of-iscoseparating--2d91ce4fe68d97b254868ea6",
  "source": {
    "blob": "cfb9ce0dbb604e21f777704c1f7761eeba7f2ee5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 484,
    "line": 457,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant166de1a932e5fa7be30eb97ed184f3674aba511fcf63dce033ef2e3e49127fdc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d91ce4fe68d97b254868ea6916967f1c1fc4df2c5098bf39c20adc53598d94e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant166de1a932e5fa7be30eb97ed184f3674aba511fcf63dce033ef2e3e49127fdc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30831619-46f2-12b5-7f23-a5074083de07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 457–484.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasInitial_of_isCoseparating [LocallySmall.{w} C] [WellPowered.{w} C]
    [HasLimitsOfSize.{w, w} C] {P : ObjectProperty C} [ObjectProperty.Small.{w} P]
    (hP : P.IsCoseparating) : HasInitial C := by
  have := hasFiniteLimits_of_hasLimitsOfSize C
  have := hasProductsOfShape_of_small C (Subtype P)
  have := fun A => hasProductsOfShape_of_small.{w} C (StructuredArrow A P.ι)
  let := completeLatticeOfCompleteSemilatticeInf (Subobject (piObj (Subtype.val : Subtype P → C)))
  suffices ∀ A : C, Unique (((⊥ : Subobject (piObj (Subtype.val : Subtype P → C))) : C) ⟶ A) by
    exact hasInitial_of_unique ((⊥ : Subobject (piObj (Subtype.val : Subtype P → C))) : C)
  have := hP.mono_productTo
  refine fun A => ⟨⟨?_⟩, fun f => ?_⟩
  · let s : ∏ᶜ (Subtype.val (p := P)) ⟶ ∏ᶜ P.productToFamily A :=
      Pi.lift (fun f ↦ Pi.π Subtype.val ⟨f.right.obj, f.right.property⟩)
    exact Subobject.ofLEMk _
      (pullback.fst _ _ : pullback s (P.productTo A) ⟶ _) bot_le ≫ pullback.snd _ _
  · suffices ∀ (g : Subobject.underlying.obj ⊥ ⟶ A), f = g by
      apply this
    intro g
    suffices IsSplitEpi (equalizer.ι f g) by exact eq_of_epi_equalizer
    exact IsSplitEpi.mk' ⟨Subobject.ofLEMk _ (equalizer.ι f g ≫ Subobject.arrow _) bot_le, by
      ext
      simp⟩

/-- An ingredient of the proof of the Special Adjoint Functor Theorem: a cocomplete well-copowered
    category with a small separating set has a terminal object.

    In fact, it follows from the Special Adjoint Functor Theorem that `C` is already complete, see
    `hasLimits_of_hasColimits_of_isSeparating`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant166de1a932e5fa7be30eb97ed184f3674aba511fcf63dce033ef2e3e49127fdc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant166de1a932e5fa7be30eb97ed184f3674aba511fcf63dce033ef2e3e49127fdc.lean#L457).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfb9ce0dbb604e21f777704c1f7761eeba7f2ee5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
