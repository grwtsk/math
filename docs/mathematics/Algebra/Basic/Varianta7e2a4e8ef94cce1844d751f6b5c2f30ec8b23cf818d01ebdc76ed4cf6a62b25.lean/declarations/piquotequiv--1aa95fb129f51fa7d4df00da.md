# piQuotEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b009de07b3308c1d5ed40c1f1af993ab5aaca4b12779def42bc98c367487159e",
  "kind": "def",
  "lexical_name": "piQuotEquiv",
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
  "slug": "piquotequiv--1aa95fb129f51fa7d4df00da",
  "source": {
    "blob": "31569c86e27a2ec5620c6b225c5a5b275acedfd9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 198,
    "path": "GRWTSK/Algebra/Basic/Varianta7e2a4e8ef94cce1844d751f6b5c2f30ec8b23cf818d01ebdc76ed4cf6a62b25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1aa95fb129f51fa7d4df00daf56cc73bdc5ba54f173a81a98e898d040a6d8215",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Varianta7e2a4e8ef94cce1844d751f6b5c2f30ec8b23cf818d01ebdc76ed4cf6a62b25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b009de07b3308c1d5ed40c1f1af993ab5aaca4b12779def42bc98c367487159e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def piQuotEquiv [I.IsTwoSided] : ((ι → R) ⧸ pi fun _ ↦ I) ≃ₗ[R ⧸ I] ι → (R ⧸ I) where
  toFun x := Quotient.liftOn' x (fun f i ↦ Ideal.Quotient.mk I (f i)) fun _ _ hab ↦
    funext fun i ↦ (Submodule.Quotient.eq' _).2 (QuotientAddGroup.leftRel_apply.mp hab i)
  map_add' := by rintro ⟨_⟩ ⟨_⟩; rfl
  map_smul' := by rintro ⟨_⟩ ⟨_⟩; rfl
  invFun x := Ideal.Quotient.mk _ (Quotient.out <| x ·)
  left_inv := by
    rintro ⟨x⟩
    exact Ideal.Quotient.eq.2 fun i ↦ Ideal.Quotient.eq.1 (Quotient.out_eq' _)
  right_inv x := funext fun i ↦ Quotient.out_eq' (x i)

/-- If `f : R^n → R^m` is an `R`-linear map and `I ⊆ R` is an ideal, then the image of `I^n` is
    contained in `I^m`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Varianta7e2a4e8ef94cce1844d751f6b5c2f30ec8b23cf818d01ebdc76ed4cf6a62b25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Varianta7e2a4e8ef94cce1844d751f6b5c2f30ec8b23cf818d01ebdc76ed4cf6a62b25.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31569c86e27a2ec5620c6b225c5a5b275acedfd9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
