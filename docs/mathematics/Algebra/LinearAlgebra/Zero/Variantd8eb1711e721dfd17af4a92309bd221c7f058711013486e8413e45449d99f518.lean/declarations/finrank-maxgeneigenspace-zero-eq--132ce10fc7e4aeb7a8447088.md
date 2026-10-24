# finrank_maxGenEigenspace_zero_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8beed551-ac3e-0d3a-9089-dbed4f220c47",
  "kind": "lemma",
  "lexical_name": "finrank_maxGenEigenspace_zero_eq",
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
  "slug": "finrank-maxgeneigenspace-zero-eq--132ce10fc7e4aeb7a8447088",
  "source": {
    "blob": "4940665ab696f06f1926d25fc5e1b59b556fad89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 149,
    "path": "GRWTSK/Algebra/LinearAlgebra/Zero/Variantd8eb1711e721dfd17af4a92309bd221c7f058711013486e8413e45449d99f518.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:132ce10fc7e4aeb7a8447088cd5edfe87ac1ba839d6cac8a0c9835a39eed4d3a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Zero/Variantd8eb1711e721dfd17af4a92309bd221c7f058711013486e8413e45449d99f518.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8beed551-ac3e-0d3a-9089-dbed4f220c47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finrank_maxGenEigenspace_zero_eq (φ : Module.End K M) :
    finrank K (φ.maxGenEigenspace 0) = natTrailingDegree (φ.charpoly) := by
  set V := φ.maxGenEigenspace 0
  have hV : V = ⨆ (n : ℕ), ker (φ ^ n) := by
    simp [V, ← Module.End.iSup_genEigenspace_eq, Module.End.genEigenspace_nat]
  let W := ⨅ (n : ℕ), LinearMap.range (φ ^ n)
  have hVW : IsCompl V W := by
    rw [hV]
    exact LinearMap.isCompl_iSup_ker_pow_iInf_range_pow φ
  have hφV : ∀ x ∈ V, φ x ∈ V := by
    simp only [V, Module.End.mem_maxGenEigenspace, zero_smul, sub_zero,
      forall_exists_index]
    intro x n hx
    use n
    rw [← Module.End.mul_apply, ← pow_succ, pow_succ', Module.End.mul_apply, hx, map_zero]
  have hφW : ∀ x ∈ W, φ x ∈ W := by
    simp only [W, Submodule.mem_iInf, mem_range]
    intro x H n
    obtain ⟨y, rfl⟩ := H n
    use φ y
    rw [← Module.End.mul_apply, ← pow_succ, pow_succ', Module.End.mul_apply]
  let F := φ.restrict hφV
  let G := φ.restrict hφW
  let ψ := F.prodMap G
  let e := Submodule.prodEquivOfIsCompl V W hVW
  let bV := chooseBasis K V
  let bW := chooseBasis K W
  let b := bV.prod bW
  have hψ : ψ = e.symm.conj φ := by
    apply b.ext
    simp only [Basis.prod_apply, coe_inl, coe_inr, prodMap_apply, LinearEquiv.conj_apply,
      LinearEquiv.symm_symm, Submodule.coe_prodEquivOfIsCompl, coe_comp, LinearEquiv.coe_coe,
      Function.comp_apply, coprod_apply, Submodule.coe_subtype, map_add, Sum.forall, Sum.elim_inl,
      map_zero, ZeroMemClass.coe_zero, add_zero, LinearEquiv.eq_symm_apply, and_self,
      Submodule.coe_prodEquivOfIsCompl', coe_restrict_apply, implies_true, Sum.elim_inr, zero_add,
      e, V, W, ψ, F, G, b]
  rw [← e.symm.charpoly_conj φ, ← hψ, charpoly_prodMap,
    natTrailingDegree_mul (charpoly_monic _).ne_zero (charpoly_monic _).ne_zero]
  have hG : natTrailingDegree (charpoly G) = 0 := by
    apply Polynomial.natTrailingDegree_eq_zero_of_constantCoeff_ne_zero
    apply ((not_hasEigenvalue_zero_tfae G).out 3 6).mpr
    intro x hx
    apply Subtype.ext
    suffices x.1 ∈ V ⊓ W by rwa [hVW.inf_eq_bot, Submodule.mem_bot] at this
    suffices x.1 ∈ V from ⟨this, x.2⟩
    simp only [Module.End.mem_maxGenEigenspace, zero_smul, sub_zero, V]
    use 1
    rw [pow_one]
    rwa [Subtype.ext_iff] at hx
  rw [hG, add_zero, eq_comm]
  apply ((charpoly_nilpotent_tfae F).out 3 4).mp
  simp only [Subtype.forall, Module.End.mem_maxGenEigenspace, zero_smul, sub_zero, V, F]
  rintro x ⟨n, hx⟩
  use n
  apply Subtype.ext
  rw [ZeroMemClass.coe_zero]
  refine .trans ?_ hx
  generalize_proofs h'
  clear hx
  induction n <;> simp [pow_succ', *]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Zero/Variantd8eb1711e721dfd17af4a92309bd221c7f058711013486e8413e45449d99f518.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Zero/Variantd8eb1711e721dfd17af4a92309bd221c7f058711013486e8413e45449d99f518.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4940665ab696f06f1926d25fc5e1b59b556fad89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
