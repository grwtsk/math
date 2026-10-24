# of_isAbelianGalois

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5d335eb95d8b4ac3f60c7499e80f1561edb19edfcbb6856067d9e79186f39588",
  "kind": "instance",
  "lexical_name": "of_isAbelianGalois",
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
  "slug": "of-isabeliangalois--7d51351308e6edccd32c85d3",
  "source": {
    "blob": "21130fd5375f3d6de45c8e317078dde18a9d0bb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 572,
    "line": 551,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/CMField/Variant80c57bf0813bccb067cf1e557c44ecf2c01625ac90e5b57f408ef1df1dc333ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d51351308e6edccd32c85d3b7d38b2818f3ceae081c72d4a9ec8238e13e4d8a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/CMField/Variant80c57bf0813bccb067cf1e557c44ecf2c01625ac90e5b57f408ef1df1dc333ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5d335eb95d8b4ac3f60c7499e80f1561edb19edfcbb6856067d9e79186f39588`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 551–572.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance of_isAbelianGalois [IsAbelianGalois ℚ K] :
    IsCMField K := by
  let φ : K →+* ℂ := Classical.choice (inferInstance : Nonempty _)
  obtain ⟨σ, hσ₁⟩ : ∃ σ : Gal(K/ℚ), ComplexEmbedding.IsConj φ σ :=
    exists_isConj_of_isRamified <|
      isRamified_iff.mpr ⟨IsTotallyComplex.isComplex _, IsTotallyReal.isReal _⟩
  have hσ₂ : ∀ (φ : K →+* ℂ), ComplexEmbedding.IsConj φ σ := by
    intro ψ
    obtain ⟨ν, rfl⟩ := exists_comp_symm_eq_of_comp_eq (k := ℚ) φ ψ (by ext; simp)
    rw [show σ = ν.symm⁻¹ * σ * ν.symm by simp]
    exact hσ₁.comp _
  exact IsCMField.of_forall_isConj K hσ₂

end NumberField.IsCMField
namespace IsCyclotomicExtension.Rat

variable (K : Type*) [Field K] [CharZero K]

open IntermediateField in
/--
A nontrivial cyclotomic extension of `ℚ` is CM.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/CMField/Variant80c57bf0813bccb067cf1e557c44ecf2c01625ac90e5b57f408ef1df1dc333ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/CMField/Variant80c57bf0813bccb067cf1e557c44ecf2c01625ac90e5b57f408ef1df1dc333ad.lean#L551).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21130fd5375f3d6de45c8e317078dde18a9d0bb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
