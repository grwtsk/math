# MultilinearMap.domCoprod_alternization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29507fcd-65e2-82ed-40f9-5222f1176b31",
  "kind": "theorem",
  "lexical_name": "MultilinearMap.domCoprod_alternization",
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
  "slug": "multilinearmap-domcoprod-alternization--f2cd7063b0c222b082b12f44",
  "source": {
    "blob": "c3f2c21f84302f4bbaaf13a036c17f479a8a94cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1197,
    "line": 1156,
    "path": "GRWTSK/Algebra/LinearAlgebra/Alternating/Variantd6b8003a1f620fe362f90ad3e4f26af5054415f3ddd69cc06859b518d17a2ff4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2cd7063b0c222b082b12f446f3bf8b685f90f0182af4a2089b7be483ab3e03b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Alternating/Variantd6b8003a1f620fe362f90ad3e4f26af5054415f3ddd69cc06859b518d17a2ff4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29507fcd-65e2-82ed-40f9-5222f1176b31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1156–1197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MultilinearMap.domCoprod_alternization [DecidableEq ιa] [DecidableEq ιb]
    (a : MultilinearMap R' (fun _ : ιa => Mᵢ) N₁) (b : MultilinearMap R' (fun _ : ιb => Mᵢ) N₂) :
    MultilinearMap.alternatization (MultilinearMap.domCoprod a b) =
      a.alternatization.domCoprod (MultilinearMap.alternatization b) := by
  apply coe_multilinearMap_injective
  rw [domCoprod_coe, MultilinearMap.alternatization_coe,
    Finset.sum_partition (QuotientGroup.leftRel (Perm.sumCongrHom ιa ιb).range)]
  congr 1
  ext1 σ
  refine Quotient.inductionOn' σ fun σ => ?_
  -- unfold the quotient mess left by `Finset.sum_partition`
  -- Porting note: Was `conv in .. => ..`.
  erw
    [@Finset.filter_congr _ _ (fun a => @Quotient.decidableEq _ _
      (QuotientGroup.leftRelDecidable (MonoidHom.range (Perm.sumCongrHom ιa ιb)))
      (Quotient.mk (QuotientGroup.leftRel (MonoidHom.range (Perm.sumCongrHom ιa ιb))) a)
      (Quotient.mk'' σ)) _ (s := Finset.univ)
    fun x _ => QuotientGroup.eq' (s := MonoidHom.range (Perm.sumCongrHom ιa ιb)) (a := x) (b := σ)]
  -- eliminate a multiplication
  rw [← Finset.map_univ_equiv (Equiv.mulLeft σ), Finset.filter_map, Finset.sum_map]
  simp_rw [Equiv.coe_toEmbedding, Equiv.coe_mulLeft, (· ∘ ·), mul_inv_rev, inv_mul_cancel_right,
    Subgroup.inv_mem_iff, MonoidHom.mem_range, Finset.univ_filter_exists,
    Finset.sum_image (Perm.sumCongrHom_injective.injOn _)]
  -- now we're ready to clean up the RHS, pulling out the summation
  rw [domCoprod.summand_mk'', MultilinearMap.domCoprod_alternization_coe, ← Finset.sum_product',
    Finset.univ_product_univ, ← MultilinearMap.domDomCongrEquiv_apply, _root_.map_sum,
    Finset.smul_sum]
  congr 1
  ext1 ⟨al, ar⟩
  dsimp only
  -- pull out the pair of smuls on the RHS, by rewriting to `_ →ₗ[ℤ] _` and back
  rw [← AddEquiv.coe_toAddMonoidHom, ← AddMonoidHom.coe_toIntLinearMap, LinearMap.map_smul_of_tower,
    LinearMap.map_smul_of_tower, AddMonoidHom.coe_toIntLinearMap, AddEquiv.coe_toAddMonoidHom,
    MultilinearMap.domDomCongrEquiv_apply]
  -- pick up the pieces
  rw [MultilinearMap.domDomCongr_mul, Perm.sign_mul, Perm.sumCongrHom_apply,
    MultilinearMap.domCoprod_domDomCongr_sumCongr, Perm.sign_sumCongr, mul_smul, mul_smul]
#align multilinear_map.dom_coprod_alternization MultilinearMap.domCoprod_alternization

/-- Taking the `MultilinearMap.alternatization` of the `MultilinearMap.domCoprod` of two
`AlternatingMap`s gives a scaled version of the `AlternatingMap.coprod` of those maps.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Alternating/Variantd6b8003a1f620fe362f90ad3e4f26af5054415f3ddd69cc06859b518d17a2ff4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Alternating/Variantd6b8003a1f620fe362f90ad3e4f26af5054415f3ddd69cc06859b518d17a2ff4.lean#L1156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3f2c21f84302f4bbaaf13a036c17f479a8a94cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
