# mulEquivAlgEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c36d7ad7d44cd18541f039653595fdf126d612330d913dc5cf8730a38dce591a",
  "kind": "def",
  "lexical_name": "mulEquivAlgEquiv",
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
  "slug": "mulequivalgequiv--dae2a00d28bfdf6559ed4974",
  "source": {
    "blob": "ee4860c65d0d61ca8e3eb05104e2fc573c3af3b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 144,
    "path": "GRWTSK/Algebra/Basic/Variant59907e0ab2b1c0b5600676a2bf5851d0eabc2f36b96063ac039e18ad66d9715c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dae2a00d28bfdf6559ed497410f749feb45365d7b93e2aca159092041f444eb2",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant59907e0ab2b1c0b5600676a2bf5851d0eabc2f36b96063ac039e18ad66d9715c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c36d7ad7d44cd18541f039653595fdf126d612330d913dc5cf8730a38dce591a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps!] noncomputable def mulEquivAlgEquiv : G ≃* Gal(B/A) :=
  MulEquiv.ofBijective (MulSemiringAction.toAlgAut G A B) (by
    let := (algebraMap A B).rangeRestrict.toAlgebra
    have : IsScalarTower A (algebraMap A B).range B := IsScalarTower.of_algebraMap_eq' rfl
    refine .of_comp_left ?_
      (AlgEquiv.extendScalarsHomOfSurjective (algebraMap A B).rangeRestrict_surjective).injective
    let A := (algebraMap A B).range
    have : FaithfulSMul G B := IsGaloisGroup.faithful A
    refine ⟨fun _ _ ↦ eq_of_smul_eq_smul ∘ DFunLike.ext_iff.mp, fun φ ↦ ?_⟩
    obtain ⟨g, hg⟩ := Ideal.Quotient.stabilizerHom_surjective G ⊥ ⊥
      (Ideal.Quotient.algEquivOfEqMap (⊥ : Ideal A) φ Ideal.map_bot.symm)
    use g
    rw [AlgEquiv.ext_iff] at hg ⊢
    exact fun x ↦ (AlgEquiv.quotientBot A B).symm.injective (hg x))

end IsDomain

variable (H : Subgroup G)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant59907e0ab2b1c0b5600676a2bf5851d0eabc2f36b96063ac039e18ad66d9715c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant59907e0ab2b1c0b5600676a2bf5851d0eabc2f36b96063ac039e18ad66d9715c.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee4860c65d0d61ca8e3eb05104e2fc573c3af3b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
