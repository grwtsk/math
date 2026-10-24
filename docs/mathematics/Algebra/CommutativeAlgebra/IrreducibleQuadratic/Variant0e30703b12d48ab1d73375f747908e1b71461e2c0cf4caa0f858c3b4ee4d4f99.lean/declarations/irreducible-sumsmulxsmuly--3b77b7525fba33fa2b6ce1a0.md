# irreducible_sumSMulXSMulY

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:514d69ce-c280-518a-26e3-5d6a602cb06a",
  "kind": "theorem",
  "lexical_name": "irreducible_sumSMulXSMulY",
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
  "slug": "irreducible-sumsmulxsmuly--3b77b7525fba33fa2b6ce1a0",
  "source": {
    "blob": "b9a1f98a815fcdcc95022e750c7ba7be479d4b81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 212,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IrreducibleQuadratic/Variant0e30703b12d48ab1d73375f747908e1b71461e2c0cf4caa0f858c3b4ee4d4f99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b77b7525fba33fa2b6ce1a083ca446d866fed5637cb6061de5ec160021301ff",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IrreducibleQuadratic/Variant0e30703b12d48ab1d73375f747908e1b71461e2c0cf4caa0f858c3b4ee4d4f99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:514d69ce-c280-518a-26e3-5d6a602cb06a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem irreducible_sumSMulXSMulY [IsDomain R]
    (hc : c.support.Nontrivial)
    (h_dvd : ∀ r, (∀ i, r ∣ c i) → IsUnit r) :
    Irreducible (sumSMulXSMulY c) := by
  classical
  let ι : n ↪ ((n ⊕ n) →₀ ℕ) :=
    ⟨fun i ↦ .single (.inl i) 1 + .single (.inr i) 1,
     fun i j ↦ by simp +contextual [Finsupp.ext_iff, Finsupp.single_apply, ite_eq_iff']⟩
  have aux : sumSMulXSMulY c = .ofCoeff (c.embDomain ι) := by
    rw [← Finsupp.sum_single (Finsupp.embDomain _ _)]
    simp [Finsupp.sum_embDomain, sumSMulXSMulY, X, monomial_mul_monomial,
      Finsupp.linearCombination_apply, smul_monomial, ι]
    rfl
  have hcoeff (i : n) : (sumSMulXSMulY c).coeff (ι i) = c i := by
    simp [aux, Finsupp.embDomain_apply]
  have hsupp : (sumSMulXSMulY c).support = c.support.map ι := by
    simp [aux, support, Finsupp.support_embDomain]
  obtain ⟨a, ha⟩ := hc.nonempty
  apply irreducible_of_disjoint_support (d := ι a) (i := .inl a)
  · rwa [hsupp, Finset.map_nontrivial]
  · rwa [MvPolynomial.mem_support_iff, hcoeff, ← Finsupp.mem_support_iff]
  · simp [ι]
  · rw [hsupp, Finset.coe_map, ι.injective.injOn.pairwiseDisjoint_image]
    suffices (c.support : Set n).PairwiseDisjoint fun x ↦ {Sum.inl x, Sum.inr x} by
      simpa [ι, Function.comp_def, Finsupp.support_add_eq, Finsupp.support_single]
    simp [Set.PairwiseDisjoint, Set.Pairwise, ne_comm]
  · intro r hr
    apply h_dvd
    intro i
    simpa [hcoeff] using hr (ι i)

end

end MvPolynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IrreducibleQuadratic/Variant0e30703b12d48ab1d73375f747908e1b71461e2c0cf4caa0f858c3b4ee4d4f99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IrreducibleQuadratic/Variant0e30703b12d48ab1d73375f747908e1b71461e2c0cf4caa0f858c3b4ee4d4f99.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9a1f98a815fcdcc95022e750c7ba7be479d4b81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
