# coeff_le_of_roots_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "890554196f1b738e6f1c1b8632dfbce3ab04f875",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 178,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d78fd83744050fc71be1b8649b5bfab2f61fd66ac486c2a9a355ce921b4e610d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4b9daeda-0a0c-e00b-2654-d00ae76f5b72",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:12054d28-6484-863d-3d56-58890ca42e07",
  "kind": "theorem",
  "lexical_name": "coeff_le_of_roots_le",
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
  "slug": "coeff-le-of-roots-le--f0d2f480923929cf16576d5a",
  "source": {
    "blob": "890554196f1b738e6f1c1b8632dfbce3ab04f875",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 178,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variantd78fd83744050fc71be1b8649b5bfab2f61fd66ac486c2a9a355ce921b4e610d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0d2f480923929cf16576d5a4babd0afe00a78cb959b38787a37dd99766f6d68",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Polynomial/Variantd78fd83744050fc71be1b8649b5bfab2f61fd66ac486c2a9a355ce921b4e610d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12054d28-6484-863d-3d56-58890ca42e07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_le_of_roots_le {p : F[X]} {f : F →+* K} {B : ℝ} (i : ℕ) (h1 : p.Monic)
    (h2 : Splits (p.map f)) (h3 : ∀ z ∈ (map f p).roots, ‖z‖ ≤ B) :
    ‖(map f p).coeff i‖ ≤ B ^ (p.natDegree - i) * p.natDegree.choose i := by
  obtain hB | hB := lt_or_ge B 0
  · rw [eq_one_of_roots_le hB h1 h2 h3, Polynomial.map_one, natDegree_one, zero_tsub, pow_zero,
      one_mul, coeff_one]
    split_ifs with h <;> simp [h]
  rw [← h1.natDegree_map f]
  obtain hi | hi := lt_or_ge (map f p).natDegree i
  · rw [coeff_eq_zero_of_natDegree_lt hi, norm_zero]
    positivity
  rw [coeff_eq_esymm_roots_of_splits h2 hi, (h1.map _).leadingCoeff,
    one_mul, norm_mul, norm_pow, norm_neg, norm_one, one_pow, one_mul]
  apply ((norm_multiset_sum_le _).trans <| sum_le_card_nsmul _ _ fun r hr => _).trans
  · rw [Multiset.map_map, card_map, card_powersetCard, ← Splits.natDegree_eq_card_roots h2,
      Nat.choose_symm hi, mul_comm, nsmul_eq_mul]
  intro r hr
  simp_rw [Multiset.mem_map] at hr
  obtain ⟨_, ⟨s, hs, rfl⟩, rfl⟩ := hr
  rw [mem_powersetCard] at hs
  lift B to ℝ≥0 using hB
  rw [← coe_nnnorm, ← NNReal.coe_pow, NNReal.coe_le_coe, ← nnnormHom_apply, ← MonoidHom.coe_coe,
    MonoidHom.map_multiset_prod]
  refine (prod_le_pow_card _ B fun x hx => ?_).trans_eq (by rw [card_map, hs.2])
  obtain ⟨z, hz, rfl⟩ := Multiset.mem_map.1 hx
  exact h3 z (mem_of_le hs.1 hz)

/-- The coefficients of the monic polynomials of bounded degree with bounded roots are
uniformly bounded. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Polynomial/Variantd78fd83744050fc71be1b8649b5bfab2f61fd66ac486c2a9a355ce921b4e610d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variantd78fd83744050fc71be1b8649b5bfab2f61fd66ac486c2a9a355ce921b4e610d.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `890554196f1b738e6f1c1b8632dfbce3ab04f875` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
