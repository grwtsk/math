# hasInitial_of_isCoseparating

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c5277afe-d52b-11cb-b373-aa39de849271",
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
  "slug": "hasinitial-of-iscoseparating--8bcd002b7a88370f275f265e",
  "source": {
    "blob": "e352185595d86cce5376f172b48654f94331ec35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 300,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6e6a1c88858ba711e18aa0800a43d37f21ba74c18328ed56135b2352dcca55bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bcd002b7a88370f275f265eb0e58e8a0858eab2aabe7f08a5f7bb86a5bf184f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6e6a1c88858ba711e18aa0800a43d37f21ba74c18328ed56135b2352dcca55bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5277afe-d52b-11cb-b373-aa39de849271`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasInitial_of_isCoseparating [LocallySmall.{w} C] [WellPowered.{w} C]
    [HasLimitsOfSize.{w, w} C] {𝒢 : Set C} [Small.{w} 𝒢]
    (h𝒢 : IsCoseparating 𝒢) : HasInitial C := by
  have := hasFiniteLimits_of_hasLimitsOfSize C
  haveI : HasProductsOfShape 𝒢 C := hasProductsOfShape_of_small C 𝒢
  haveI := fun A => hasProductsOfShape_of_small.{w} C (ΣG : 𝒢, A ⟶ (G : C))
  letI := completeLatticeOfCompleteSemilatticeInf (Subobject (piObj (Subtype.val : 𝒢 → C)))
  suffices ∀ A : C, Unique (((⊥ : Subobject (piObj (Subtype.val : 𝒢 → C))) : C) ⟶ A) by
    exact hasInitial_of_unique ((⊥ : Subobject (piObj (Subtype.val : 𝒢 → C))) : C)
  refine fun A => ⟨⟨?_⟩, fun f => ?_⟩
  · let s := Pi.lift fun f : ΣG : 𝒢, A ⟶ (G : C) => id (Pi.π (Subtype.val : 𝒢 → C)) f.1
    let t := Pi.lift (@Sigma.snd 𝒢 fun G => A ⟶ (G : C))
    haveI : Mono t := (isCoseparating_iff_mono 𝒢).1 h𝒢 A
    exact Subobject.ofLEMk _ (pullback.fst _ _ : pullback s t ⟶ _) bot_le ≫ pullback.snd _ _
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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6e6a1c88858ba711e18aa0800a43d37f21ba74c18328ed56135b2352dcca55bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6e6a1c88858ba711e18aa0800a43d37f21ba74c18328ed56135b2352dcca55bd.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e352185595d86cce5376f172b48654f94331ec35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
