# MultilinearMap.domCoprod_alternization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "51e99615c0ab649f0cfe6745d4daf1327efceef6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 200,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a45e43463dbf71516e39b7422962b7b6d086d66ca944a4b98729b25561dd8d92.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a8037a37-8fab-6526-7dee-98de85eab7d0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:43382239-6570-bfc4-d861-287e29ed5383",
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
  "slug": "multilinearmap-domcoprod-alternization--62b0d2b2ac0636d70362340f",
  "source": {
    "blob": "51e99615c0ab649f0cfe6745d4daf1327efceef6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 200,
    "path": "GRWTSK/Algebra/LinearAlgebra/DomCoprod/Varianta45e43463dbf71516e39b7422962b7b6d086d66ca944a4b98729b25561dd8d92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62b0d2b2ac0636d70362340fb164df4afa0fc4b783302e9a1be735e46ad47ed6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/DomCoprod/Varianta45e43463dbf71516e39b7422962b7b6d086d66ca944a4b98729b25561dd8d92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43382239-6570-bfc4-d861-287e29ed5383`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–232.

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
  induction σ using Quotient.inductionOn' with
  | h σ =>
  set f := sumCongrHom ιa ιb
  calc
    ∑ τ ∈ _, sign τ • domDomCongr τ (a.domCoprod b) =
        ∑ τ ∈ {τ | τ⁻¹ * σ ∈ f.range}, sign τ • domDomCongr τ (a.domCoprod b) := by
      simp [QuotientGroup.leftRel_apply, f]
    _ = ∑ τ ∈ {τ | τ⁻¹ ∈ f.range}, sign (σ * τ) • domDomCongr (σ * τ) (a.domCoprod b) := by
      conv_lhs => rw [← Finset.map_univ_equiv (Equiv.mulLeft σ), Finset.filter_map, Finset.sum_map]
      simp [Function.comp_def, -MonoidHom.mem_range]
    _ = ∑ τ, sign (σ * f τ) • domDomCongr (σ * f τ) (a.domCoprod b) := by
      simp_rw [f, Subgroup.inv_mem_iff, MonoidHom.mem_range, Finset.univ_filter_exists,
        Finset.sum_image sumCongrHom_injective.injOn]
    _ = ∑ τ : Perm ιa × Perm ιb,
         sign σ • (domDomCongrEquiv σ) (sign τ.1 • sign τ.2 •
           (domDomCongr τ.1 a).domCoprod (domDomCongr τ.2 b)) := by
      simp [f, domDomCongr_mul, domCoprod_domDomCongr_sumCongr, mul_smul]
    _ = domCoprod.summand (alternatization a) (alternatization b) (Quotient.mk'' σ) := by
      simp [domCoprod.summand_mk'', domCoprod_alternization_coe, ← domDomCongrEquiv_apply,
        Finset.smul_sum, ← Finset.sum_product']

/-- Taking the `MultilinearMap.alternatization` of the `MultilinearMap.domCoprod` of two
`AlternatingMap`s gives a scaled version of the `AlternatingMap.coprod` of those maps.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/DomCoprod/Varianta45e43463dbf71516e39b7422962b7b6d086d66ca944a4b98729b25561dd8d92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/DomCoprod/Varianta45e43463dbf71516e39b7422962b7b6d086d66ca944a4b98729b25561dd8d92.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51e99615c0ab649f0cfe6745d4daf1327efceef6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
