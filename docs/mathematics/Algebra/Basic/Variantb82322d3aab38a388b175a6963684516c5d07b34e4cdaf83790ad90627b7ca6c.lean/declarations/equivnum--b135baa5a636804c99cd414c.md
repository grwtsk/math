# equivNum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d487d4c3cfbb7a9b2179b13cf35a6b24d4d02451acaf714072974c56e07c5a8f",
  "kind": "def",
  "lexical_name": "equivNum",
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
  "slug": "equivnum--b135baa5a636804c99cd414c",
  "source": {
    "blob": "29225cabea3ab2bdd3a5524c225bad2275d04102",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 129,
    "path": "GRWTSK/Algebra/Basic/Variantb82322d3aab38a388b175a6963684516c5d07b34e4cdaf83790ad90627b7ca6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b135baa5a636804c99cd414cdf1057a6910a812170f963fcdf356c89163e4a3f",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantb82322d3aab38a388b175a6963684516c5d07b34e4cdaf83790ad90627b7ca6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d487d4c3cfbb7a9b2179b13cf35a6b24d4d02451acaf714072974c56e07c5a8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def equivNum [Nontrivial P] [NoZeroSMulDivisors R P]
    {I : FractionalIdeal S P} (h_nz : (I.den : R) ≠ 0) : I ≃ₗ[R] I.num := by
  refine LinearEquiv.trans
    (LinearEquiv.ofBijective ((DistribMulAction.toLinearMap R P I.den).restrict fun _ hx ↦ ?_)
      ⟨fun _ _ hxy ↦ ?_, fun ⟨y, hy⟩ ↦ ?_⟩)
    (Submodule.equivMapOfInjective (Algebra.linearMap R P)
      (FaithfulSMul.algebraMap_injective R P) (num I)).symm
  · rw [← den_mul_self_eq_num]
    exact Submodule.smul_mem_pointwise_smul _ _ _ hx
  · simp_rw [LinearMap.restrict_apply, DistribMulAction.toLinearMap_apply, Subtype.mk.injEq] at hxy
    rwa [Submonoid.smul_def, Submonoid.smul_def, smul_right_inj h_nz, SetCoe.ext_iff] at hxy
  · rw [← den_mul_self_eq_num] at hy
    obtain ⟨x, hx, hxy⟩ := hy
    exact ⟨⟨x, hx⟩, by simp_rw [LinearMap.restrict_apply, Subtype.ext_iff, ← hxy]; rfl⟩

section SetLike

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantb82322d3aab38a388b175a6963684516c5d07b34e4cdaf83790ad90627b7ca6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantb82322d3aab38a388b175a6963684516c5d07b34e4cdaf83790ad90627b7ca6c.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29225cabea3ab2bdd3a5524c225bad2275d04102` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
