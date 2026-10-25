# FormallySmooth.exists_lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "45fdea5251f372e68b0d71e202ba62243570e20f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 138,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6cfd19c3c32f45c4e26d8581aabd5319b2f1f3ff2449ea39fb33acb884b52f46.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fece449e-4339-d7b4-8727-db1f237d9f97",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9d682c0a-b7e3-de11-cb3f-ee7d72b4fd5e",
  "kind": "theorem",
  "lexical_name": "FormallySmooth.exists_lift",
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
  "slug": "formallysmooth-exists-lift--f590f73fe9315c73239f9a25",
  "source": {
    "blob": "45fdea5251f372e68b0d71e202ba62243570e20f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 138,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant6cfd19c3c32f45c4e26d8581aabd5319b2f1f3ff2449ea39fb33acb884b52f46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f590f73fe9315c73239f9a25f2480c7841721115485a52e963bed151f39cc17b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant6cfd19c3c32f45c4e26d8581aabd5319b2f1f3ff2449ea39fb33acb884b52f46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d682c0a-b7e3-de11-cb3f-ee7d72b4fd5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FormallySmooth.exists_lift {B : Type u} [CommRing B] [_RB : Algebra R B]
    [FormallySmooth R A] (I : Ideal B) (hI : IsNilpotent I) (g : A →ₐ[R] B ⧸ I) :
    ∃ f : A →ₐ[R] B, (Ideal.Quotient.mkₐ R I).comp f = g := by
  revert g
  change Function.Surjective (Ideal.Quotient.mkₐ R I).comp
  revert _RB
  apply Ideal.IsNilpotent.induction_on (R := B) I hI
  · intro B _ I hI _; exact FormallySmooth.comp_surjective I hI
  · intro B _ I J hIJ h₁ h₂ _ g
    let this : ((B ⧸ I) ⧸ J.map (Ideal.Quotient.mk I)) ≃ₐ[R] B ⧸ J :=
      {
        (DoubleQuot.quotQuotEquivQuotSup I J).trans
          (Ideal.quotEquivOfEq (sup_eq_right.mpr hIJ)) with
        commutes' := fun x => rfl }
    obtain ⟨g', e⟩ := h₂ (this.symm.toAlgHom.comp g)
    obtain ⟨g', rfl⟩ := h₁ g'
    replace e := congr_arg this.toAlgHom.comp e
    conv_rhs at e =>
      rw [← AlgHom.comp_assoc, AlgEquiv.toAlgHom_eq_coe, AlgEquiv.toAlgHom_eq_coe,
        AlgEquiv.comp_symm, AlgHom.id_comp]
    exact ⟨g', e⟩
#align algebra.formally_smooth.exists_lift Algebra.FormallySmooth.exists_lift

/-- For a formally smooth `R`-algebra `A` and a map `f : A →ₐ[R] B ⧸ I` with `I` square-zero,
this is an arbitrary lift `A →ₐ[R] B`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant6cfd19c3c32f45c4e26d8581aabd5319b2f1f3ff2449ea39fb33acb884b52f46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant6cfd19c3c32f45c4e26d8581aabd5319b2f1f3ff2449ea39fb33acb884b52f46.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45fdea5251f372e68b0d71e202ba62243570e20f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
