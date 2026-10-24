# finitaryExtensive_TopCat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7917499d712ab5808204c78a8cb55ecbb3e98d2be24619708cf7270c10477c8d",
  "kind": "instance",
  "lexical_name": "finitaryExtensive_TopCat",
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
  "slug": "finitaryextensive-topcat--9e77148d6745a73c3c4d22f7",
  "source": {
    "blob": "82075dc0010e2f9a041207b308dcbf88f5650573",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 310,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant0d3e1ba7cb07f66b628891b1c0d9cacb4c613d73be71fcf10a4502bb5c7115c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e77148d6745a73c3c4d22f785dc6d75c678516f52efa05e259cd13aa0331380",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant0d3e1ba7cb07f66b628891b1c0d9cacb4c613d73be71fcf10a4502bb5c7115c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7917499d712ab5808204c78a8cb55ecbb3e98d2be24619708cf7270c10477c8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance finitaryExtensive_TopCat : FinitaryExtensive TopCat.{u} := by
  rw [finitaryExtensive_iff_of_isTerminal TopCat.{u} _ TopCat.isTerminalPUnit _
      (TopCat.binaryCofanIsColimit _ _)]
  apply BinaryCofan.isVanKampen_mk _ _ (fun X Y => TopCat.binaryCofanIsColimit X Y) _
      fun f g => TopCat.pullbackConeIsLimit f g
  · intro X' Y' αX αY f hαX hαY
    constructor
    · refine ⟨⟨hαX.symm⟩, ⟨PullbackCone.isLimitAux' _ ?_⟩⟩
      intro s
      have : ∀ x, ∃! y, s.fst x = Sum.inl y := by
        intro x
        rcases h : s.fst x with val | val
        · exact ⟨val, rfl, fun y h => Sum.inl_injective h.symm⟩
        · apply_fun f at h
          cases ((ConcreteCategory.congr_hom s.condition x).symm.trans h).trans
            (ConcreteCategory.congr_hom hαY val :).symm
      delta ExistsUnique at this
      choose l hl hl' using this
      refine ⟨TopCat.ofHom ⟨l, ?_⟩, TopCat.ext fun a => (hl a).symm,
        TopCat.isTerminalPUnit.hom_ext _ _,
        fun {l'} h₁ _ => TopCat.ext fun x =>
          hl' x (l' x) (ConcreteCategory.congr_hom h₁ x).symm⟩
      apply (IsEmbedding.inl (X := X') (Y := Y')).isInducing.continuous_iff.mpr
      convert s.fst.hom.2 using 1
      exact (funext hl).symm
    · refine ⟨⟨hαY.symm⟩, ⟨PullbackCone.isLimitAux' _ ?_⟩⟩
      intro s
      have : ∀ x, ∃! y, s.fst x = Sum.inr y := by
        intro x
        rcases h : s.fst x with val | val
        · apply_fun f at h
          cases ((ConcreteCategory.congr_hom s.condition x).symm.trans h).trans
            (ConcreteCategory.congr_hom hαX val :).symm
        · exact ⟨val, rfl, fun y h => Sum.inr_injective h.symm⟩
      delta ExistsUnique at this
      choose l hl hl' using this
      refine ⟨TopCat.ofHom ⟨l, ?_⟩, TopCat.ext fun a => (hl a).symm,
        TopCat.isTerminalPUnit.hom_ext _ _,
        fun {l'} h₁ _ =>
          TopCat.ext fun x => hl' x (l' x) (ConcreteCategory.congr_hom h₁ x).symm⟩
      apply (IsEmbedding.inr (X := X') (Y := Y')).isInducing.continuous_iff.mpr
      convert s.fst.hom.2 using 1
      exact (funext hl).symm
  · intro Z f
    exact finitaryExtensiveTopCatAux Z f

end TopCat

section Functor

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant0d3e1ba7cb07f66b628891b1c0d9cacb4c613d73be71fcf10a4502bb5c7115c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant0d3e1ba7cb07f66b628891b1c0d9cacb4c613d73be71fcf10a4502bb5c7115c3.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82075dc0010e2f9a041207b308dcbf88f5650573` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
