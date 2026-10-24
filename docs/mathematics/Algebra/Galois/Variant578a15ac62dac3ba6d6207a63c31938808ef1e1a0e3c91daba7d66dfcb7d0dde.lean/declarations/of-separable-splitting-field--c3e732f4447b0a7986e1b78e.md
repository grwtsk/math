# of_separable_splitting_field

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:447ff693-5534-9ffe-f694-8fa7341d7dd6",
  "kind": "theorem",
  "lexical_name": "of_separable_splitting_field",
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
  "slug": "of-separable-splitting-field--c3e732f4447b0a7986e1b78e",
  "source": {
    "blob": "84dfd4c47cd981412183ba77424574c428b62a16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 439,
    "line": 403,
    "path": "GRWTSK/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3e732f4447b0a7986e1b78ec81b92cdee27e5ed7f5dc4d9c7784f0ef784ee82",
  "verification": {
    "reference": "docs/verification/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:447ff693-5534-9ffe-f694-8fa7341d7dd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 403–439.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_separable_splitting_field [sp : p.IsSplittingField F E] (hp : p.Separable) :
    IsGalois F E := by
  haveI hFE : FiniteDimensional F E := Polynomial.IsSplittingField.finiteDimensional E p
  letI := Classical.decEq E
  let s := (p.map (algebraMap F E)).roots.toFinset
  have adjoin_root : IntermediateField.adjoin F (s : Set E) = ⊤ := by
    apply IntermediateField.toSubalgebra_injective
    rw [IntermediateField.top_toSubalgebra, ← top_le_iff, ← sp.adjoin_rootSet]
    apply IntermediateField.algebra_adjoin_le_adjoin
  let P : IntermediateField F E → Prop := fun K => Fintype.card (K →ₐ[F] E) = finrank F K
  suffices P (IntermediateField.adjoin F ↑s) by
    rw [adjoin_root] at this
    apply of_card_aut_eq_finrank
    rw [← Eq.trans this (LinearEquiv.finrank_eq IntermediateField.topEquiv.toLinearEquiv)]
    exact Fintype.card_congr ((algEquivEquivAlgHom F E).toEquiv.trans
      (IntermediateField.topEquiv.symm.arrowCongr AlgEquiv.refl))
  apply IntermediateField.induction_on_adjoin_finset s P
  · have key := IntermediateField.card_algHom_adjoin_integral F (K := E)
      (show IsIntegral F (0 : E) from isIntegral_zero)
    rw [minpoly.zero, Polynomial.natDegree_X] at key
    specialize key Polynomial.separable_X (Polynomial.splits_X (algebraMap F E))
    rw [← @Subalgebra.finrank_bot F E _ _ _, ← IntermediateField.bot_toSubalgebra] at key
    refine' Eq.trans _ key
    -- Porting note: use unification instead of synthesis for one argument of `card_congr`
    apply @Fintype.card_congr _ _ _ (_) _
    rw [IntermediateField.adjoin_zero]
  intro K x hx hK
  simp only at *
  -- Porting note: need to specify two implicit arguments of `finrank_mul_finrank`
  rw [of_separable_splitting_field_aux hp K (Multiset.mem_toFinset.mp hx), hK,
    @finrank_mul_finrank _ _ _ _ _ _ _ K⟮x⟯.module _ K⟮x⟯.isScalarTower _]
  symm
  refine' LinearEquiv.finrank_eq _
  rfl
#align is_galois.of_separable_splitting_field IsGalois.of_separable_splitting_field

/-- Equivalent characterizations of a Galois extension of finite degree-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean#L403).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84dfd4c47cd981412183ba77424574c428b62a16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
