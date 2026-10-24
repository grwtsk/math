# isIso_descOpcycles_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ec65040-79e1-aaa2-1d74-f8257fcf4ab0",
  "kind": "lemma",
  "lexical_name": "isIso_descOpcycles_iff",
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
  "slug": "isiso-descopcycles-iff--243c27382af9b1c47d62ef45",
  "source": {
    "blob": "1e069893509f834ef89e9b6b927cc3afeff0fc26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 876,
    "line": 851,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variant2d058d7bc29d53f8e242d9027e04c8a527a0f16dc1eba9f4f2544eb5e5125dd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:243c27382af9b1c47d62ef455ff763a5e2e1d94e4c40f63715d4cea90db457bd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variant2d058d7bc29d53f8e242d9027e04c8a527a0f16dc1eba9f4f2544eb5e5125dd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ec65040-79e1-aaa2-1d74-f8257fcf4ab0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 851–876.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isIso_descOpcycles_iff (K : ChainComplex C ℕ) {X : C} (φ : K.X 0 ⟶ X)
    [K.HasHomology 0] (hφ : K.d 1 0 ≫ φ = 0) :
    IsIso (K.descOpcycles φ 1 (by simp) hφ) ↔
      (ShortComplex.mk _ _ hφ).Exact ∧ Epi φ := by
  suffices ∀ (i : ℕ) (hx : (ComplexShape.down ℕ).prev 0 = i)
    (hφ : K.d i 0 ≫ φ = 0), IsIso (K.descOpcycles φ i hx hφ) ↔
      (ShortComplex.mk _ _ hφ).Exact ∧ Epi φ from this 1 (by simp) hφ
  rintro _ rfl hφ
  let α : K.sc 0 ⟶ ShortComplex.mk (0 : X ⟶ X) (0 : X ⟶ X) (by simp) :=
    { τ₁ := 0
      τ₂ := φ
      τ₃ := 0 }
  exact (ShortComplex.quasiIso_iff_isIso_descOpcycles α (by simp) rfl rfl).symm.trans
    (ShortComplex.quasiIso_iff_of_zeros' α (by simp) rfl rfl)

end ChainComplex

namespace HomologicalComplex

variable {C : Type*} [Category* C] [HasZeroMorphisms C] {ι : Type*} {c : ComplexShape ι}
  (K : HomologicalComplex C c)
  (i j k : ι) (hi : c.prev j = i) (hk : c.next j = k)
  [K.HasHomology j] [(K.sc' i j k).HasHomology]

/-- The cycles of a homological complex in degree `j` can be computed
by specifying a choice of `c.prev j` and `c.next j`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variant2d058d7bc29d53f8e242d9027e04c8a527a0f16dc1eba9f4f2544eb5e5125dd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variant2d058d7bc29d53f8e242d9027e04c8a527a0f16dc1eba9f4f2544eb5e5125dd5.lean#L851).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e069893509f834ef89e9b6b927cc3afeff0fc26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
