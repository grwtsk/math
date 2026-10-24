# IsInternal.collectedBasis_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e69bbfdf0f2885aefba1a5eee6a1ba9e621d4760",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 443,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af5a288acea251b197ea9b3453fe7d32d5bac6776a70d159bbddcdb602569d50.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6657c8dc-fb52-92a1-0cf1-8ea25eaaa3d5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b0b4fe9e-72ab-1200-9a75-3b932fff18e4",
  "kind": "theorem",
  "lexical_name": "IsInternal.collectedBasis_coe",
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
  "slug": "isinternal-collectedbasis-coe--1229ae6a70446155c003e271",
  "source": {
    "blob": "e69bbfdf0f2885aefba1a5eee6a1ba9e621d4760",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 469,
    "line": 443,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variantaf5a288acea251b197ea9b3453fe7d32d5bac6776a70d159bbddcdb602569d50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1229ae6a70446155c003e27105885387b4f5fd5dcdecb1f3c2c683bcccd47b92",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variantaf5a288acea251b197ea9b3453fe7d32d5bac6776a70d159bbddcdb602569d50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0b4fe9e-72ab-1200-9a75-3b932fff18e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 443–469.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsInternal.collectedBasis_coe (h : IsInternal A) {α : ι → Type*}
    (v : ∀ i, Basis (α i) R (A i)) : ⇑(h.collectedBasis v) = fun a : Σ i, α i ↦ ↑(v a.1 a.2) := by
  funext a
  -- Porting note: was
  -- simp only [IsInternal.collectedBasis, toModule, coeLinearMap, Basis.coe_ofRepr,
  --   Basis.repr_symm_apply, DFinsupp.lsum_apply_apply, DFinsupp.mapRange.linearEquiv_apply,
  --   DFinsupp.mapRange.linearEquiv_symm, DFinsupp.mapRange_single, linearCombination_single,
  --   LinearEquiv.ofBijective_apply, LinearEquiv.symm_symm, LinearEquiv.symm_trans_apply, one_smul,
  --   sigmaFinsuppAddEquivDFinsupp_apply, sigmaFinsuppEquivDFinsupp_single,
  --   sigmaFinsuppLequivDFinsupp_apply]
  -- convert DFinsupp.sumAddHom_single (fun i ↦ (A i).subtype.toAddMonoidHom) a.1 (v a.1 a.2)
  simp only [IsInternal.collectedBasis, coeLinearMap, Basis.coe_ofRepr, LinearEquiv.trans_symm,
    LinearEquiv.symm_symm, LinearEquiv.trans_apply, sigmaFinsuppLequivDFinsupp_apply,
    AddEquiv.toEquiv_eq_coe, Equiv.toFun_as_coe, EquivLike.coe_coe,
    sigmaFinsuppAddEquivDFinsupp_apply, sigmaFinsuppEquivDFinsupp_single,
    LinearEquiv.ofBijective_apply]
  rw [DFinsupp.mapRange.linearEquiv_symm]
  -- `DFunLike.coe (β := fun x ↦ ⨁ (i : ι), ↥(A i))`
  -- appears in the goal, but the lemma is expecting
  -- `DFunLike.coe (β := fun x ↦ Π₀ (i : ι), ↥(A i))`
  erw [DFinsupp.mapRange.linearEquiv_apply]
  simp only [DFinsupp.mapRange_single, Basis.repr_symm_apply, linearCombination_single, one_smul,
    toModule]
  -- Similarly here.
  erw [DFinsupp.lsum_single]
  simp only [Submodule.coe_subtype]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variantaf5a288acea251b197ea9b3453fe7d32d5bac6776a70d159bbddcdb602569d50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variantaf5a288acea251b197ea9b3453fe7d32d5bac6776a70d159bbddcdb602569d50.lean#L443).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e69bbfdf0f2885aefba1a5eee6a1ba9e621d4760` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
