# Away.finiteType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d00b096a-51c7-9bf2-7154-975ae610d500",
  "kind": "lemma",
  "lexical_name": "Away.finiteType",
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
  "slug": "away-finitetype--0d7e26e36c6bcb77b4789314",
  "source": {
    "blob": "1db610140c3810aa209c8759b3fdf996ecd5a3b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1136,
    "line": 1104,
    "path": "GRWTSK/Algebra/HomogeneousLocalization/Variant9bea75484798b16faf9bf8817eaf54ca441bf7617809f5c37421905d2c0cf78d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d7e26e36c6bcb77b47893146bc16e23be9cdfe298981d3c2338bf79c9873c25",
  "verification": {
    "reference": "docs/verification/Algebra/HomogeneousLocalization/Variant9bea75484798b16faf9bf8817eaf54ca441bf7617809f5c37421905d2c0cf78d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d00b096a-51c7-9bf2-7154-975ae610d500`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1104–1136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Away.finiteType (f : A) (d : ℕ) (hf : f ∈ 𝒜 d) :
    Algebra.FiniteType (𝒜 0) (Away 𝒜 f) := by
  constructor
  obtain ⟨s, hs, hs'⟩ := GradedAlgebra.exists_finset_adjoin_eq_top_and_homogeneous_ne_zero 𝒜
  choose dx hdx hxd using Subtype.forall'.mp hs'
  simp_rw [Subalgebra.fg_def, ← top_le_iff,
    ← Away.adjoin_mk_prod_pow_eq_top hf (ι' := s) Subtype.val (by simpa) dx hxd]
  rcases d.eq_zero_or_pos with hd | hd
  · let f' := Away.mk 𝒜 hf 1 1 (by simp [hd, GradedOne.one_mem])
    refine ⟨{f'}, Set.finite_singleton f', ?_⟩
    rw [Algebra.adjoin_le_iff]
    rintro _ ⟨a, ai, hai, hai', rfl⟩
    obtain rfl : ai = 0 := funext <| by simpa [hd, hdx] using hai
    simp only [Finset.univ_eq_attach, Pi.zero_apply, pow_zero, Finset.prod_const_one, mem_coe]
    convert! pow_mem (Algebra.self_mem_adjoin_singleton (𝒜 0) f') a using 1
    ext
    simp [f', Localization.mk_pow]
  refine ⟨_, ?_, le_rfl⟩
  let b := ∑ i, dx i
  let s' : Set ((Fin (b + 1)) × (s → Fin (d + 1))) := { ai | ∑ i, (ai.2 i).1 * dx i = ai.1 * d }
  let F : s' → Away 𝒜 f := fun ai ↦ Away.mk 𝒜 hf ai.1.1.1 (∏ i, i ^ (ai.1.2 i).1)
    (by convert! SetLike.prod_pow_mem_graded _ _ _ _ fun i _ ↦ hxd i; exact ai.2.symm)
  apply (Set.finite_range F).subset
  rintro _ ⟨a, ai, hai, hai', rfl⟩
  refine ⟨⟨⟨⟨a, ?_⟩, fun i ↦ ⟨ai i, (hai' i).trans_lt d.lt_succ_self⟩⟩, hai⟩, rfl⟩
  rw [Nat.lt_succ_iff, ← mul_le_mul_iff_of_pos_right hd, ← smul_eq_mul, ← hai, Finset.sum_mul]
  simp_rw [smul_eq_mul, mul_comm _ d]
  gcongr
  exact hai' _

end span

end HomogeneousLocalization
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/HomogeneousLocalization/Variant9bea75484798b16faf9bf8817eaf54ca441bf7617809f5c37421905d2c0cf78d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/HomogeneousLocalization/Variant9bea75484798b16faf9bf8817eaf54ca441bf7617809f5c37421905d2c0cf78d.lean#L1104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1db610140c3810aa209c8759b3fdf996ecd5a3b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
