# MultilinearMap.domCoprod_alternization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "842689df5f4245e6656367412382e03726ee3e18",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1148,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e7721e4027e2a468518aae3cf26d904c4a7de24fa7e19831d106e70cfa6d2785.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ef306fc3-dcc3-bd2d-cd0c-14be03837646",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c38a59fc-ac98-780d-94b1-3737056576d5",
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
  "slug": "multilinearmap-domcoprod-alternization--950d605b08f3f6d7ef12fa75",
  "source": {
    "blob": "842689df5f4245e6656367412382e03726ee3e18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1189,
    "line": 1148,
    "path": "GRWTSK/Algebra/LinearAlgebra/Alternating/Variante7721e4027e2a468518aae3cf26d904c4a7de24fa7e19831d106e70cfa6d2785.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:950d605b08f3f6d7ef12fa754822c9582b23bf43871864bbb7f51fa352475583",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Alternating/Variante7721e4027e2a468518aae3cf26d904c4a7de24fa7e19831d106e70cfa6d2785.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c38a59fc-ac98-780d-94b1-3737056576d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1148–1189.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Alternating/Variante7721e4027e2a468518aae3cf26d904c4a7de24fa7e19831d106e70cfa6d2785.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Alternating/Variante7721e4027e2a468518aae3cf26d904c4a7de24fa7e19831d106e70cfa6d2785.lean#L1148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `842689df5f4245e6656367412382e03726ee3e18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
