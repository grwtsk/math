# exists_root_adjoin_eq_top_of_isCyclic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "91c3b8660f316cc860b3d749068a787b60e747f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 484,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7ef56f9621e9e8549a4954dc1f71ab43a5348cc5d425038f8a7637bbaaaf65bf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:411625cb-8ce0-583a-a0aa-52cd57e57875",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cddf7791-720a-034c-95b2-00fec34c96e8",
  "kind": "lemma",
  "lexical_name": "exists_root_adjoin_eq_top_of_isCyclic",
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
  "slug": "exists-root-adjoin-eq-top-of-iscyclic--cee56712ee8580b698f08c8a",
  "source": {
    "blob": "91c3b8660f316cc860b3d749068a787b60e747f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 522,
    "line": 484,
    "path": "GRWTSK/Algebra/KummerExtension/Variant7ef56f9621e9e8549a4954dc1f71ab43a5348cc5d425038f8a7637bbaaaf65bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cee56712ee8580b698f08c8a7d68eb28979d0420fd570d8711203d04ad09569b",
  "verification": {
    "reference": "docs/verification/Algebra/KummerExtension/Variant7ef56f9621e9e8549a4954dc1f71ab43a5348cc5d425038f8a7637bbaaaf65bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cddf7791-720a-034c-95b2-00fec34c96e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 484–522.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_root_adjoin_eq_top_of_isCyclic [IsGalois K L] [IsCyclic Gal(L/K)] :
    ∃ (α : L), α ^ (finrank K L) ∈ Set.range (algebraMap K L) ∧ K⟮α⟯ = ⊤ := by
  -- Let `ζ` be an `n`-th root of unity, and `σ` be a generator of `Gal(L/K)`.
  have ⟨ζ, hζ⟩ := hK
  rw [mem_primitiveRoots finrank_pos] at hζ
  obtain ⟨σ, hσ⟩ := ‹IsCyclic Gal(L/K)›
  have hσ' := orderOf_eq_card_of_forall_mem_zpowers hσ
  -- Since the minimal polynomial of `σ` over `K` is `Xⁿ - 1`,
  -- `σ` has an eigenvector `v` with eigenvalue `ζ`.
  have : IsRoot (minpoly K σ.toLinearMap) ζ := by
    rw [IsGalois.card_aut_eq_finrank] at hσ'
    simpa [minpoly_algEquiv_toLinearMap σ (isOfFinOrder_of_finite σ), hσ',
      sub_eq_zero] using hζ.pow_eq_one
  obtain ⟨v, hv⟩ := (Module.End.hasEigenvalue_of_isRoot this).exists_hasEigenvector
  have hv' := hv.pow_apply
  simp_rw [← AlgEquiv.pow_toLinearMap, AlgEquiv.toLinearMap_apply] at hv'
  -- We claim that `v` is the desired root.
  refine ⟨v, ?_, ?_⟩
  · -- Since `v ^ n` is fixed by `σ` (`σ (v ^ n) = ζ ^ n • v ^ n = v ^ n`), it is in `K`.
    rw [← IntermediateField.mem_bot,
      ← OrderIso.map_bot IsGalois.intermediateFieldEquivSubgroup.symm]
    intro ⟨σ', hσ'⟩
    obtain ⟨n, rfl : σ ^ n = σ'⟩ := mem_powers_iff_mem_zpowers.mpr (hσ σ')
    rw [smul_pow', Submonoid.smul_def, AlgEquiv.smul_def, hv', smul_pow, ← pow_mul,
      mul_comm, pow_mul, hζ.pow_eq_one, one_pow, one_smul]
  · -- Since `σ` does not fix `K⟮α⟯`, `K⟮α⟯` is `L`.
    apply IsGalois.intermediateFieldEquivSubgroup.injective
    rw [map_top, eq_top_iff]
    intro σ' hσ'
    obtain ⟨n, rfl : σ ^ n = σ'⟩ := mem_powers_iff_mem_zpowers.mpr (hσ σ')
    have := hσ' ⟨v, IntermediateField.mem_adjoin_simple_self K v⟩
    simp only [AlgEquiv.smul_def, hv'] at this
    conv_rhs at this => rw [← one_smul K v]
    obtain ⟨k, rfl⟩ := hζ.dvd_of_pow_eq_one n (smul_left_injective K hv.2 this)
    rw [pow_mul, ← IsGalois.card_aut_eq_finrank, pow_card_eq_one', one_pow]
    exact one_mem _

variable {K L}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/KummerExtension/Variant7ef56f9621e9e8549a4954dc1f71ab43a5348cc5d425038f8a7637bbaaaf65bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KummerExtension/Variant7ef56f9621e9e8549a4954dc1f71ab43a5348cc5d425038f8a7637bbaaaf65bf.lean#L484).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91c3b8660f316cc860b3d749068a787b60e747f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
