# Polynomial.Monic.irreducible_of_irreducible_map_of_isPrime_nilradical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c833c264d92f6a85567bd43e9faa748b211fd5cf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 35,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1f0212838bc2b90cb66e027bfa4d7fc070463c29eb945124b3bc954dd9dd59da.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ca028d72-65d4-507e-e679-9d05e3da0c04",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:26f92b69-19bd-7bf7-14ff-511f93be9559",
  "kind": "theorem",
  "lexical_name": "Polynomial.Monic.irreducible_of_irreducible_map_of_isPrime_nilradical",
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
  "slug": "polynomial-monic-irreducible-of-irreducible-map-of-isprime-nilradical--065fea8b867ac8338ddba409",
  "source": {
    "blob": "c833c264d92f6a85567bd43e9faa748b211fd5cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 35,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IrreducibleRing/Variant1f0212838bc2b90cb66e027bfa4d7fc070463c29eb945124b3bc954dd9dd59da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:065fea8b867ac8338ddba40975aab428bbdfbb527b4132f41a0e1cb9d7d4daac",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IrreducibleRing/Variant1f0212838bc2b90cb66e027bfa4d7fc070463c29eb945124b3bc954dd9dd59da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26f92b69-19bd-7bf7-14ff-511f93be9559`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Polynomial.Monic.irreducible_of_irreducible_map_of_isPrime_nilradical
    {R S : Type*} [CommRing R] [(nilradical R).IsPrime] [CommRing S] [IsDomain S]
    (φ : R →+* S) (f : R[X]) (hm : f.Monic) (hi : Irreducible (f.map φ)) : Irreducible f := by
  let R' := R ⧸ nilradical R
  let ψ : R' →+* S := Ideal.Quotient.lift (nilradical R) φ
    (haveI := RingHom.ker_isPrime φ; nilradical_le_prime (RingHom.ker φ))
  let ι := algebraMap R R'
  rw [show φ = ψ.comp ι from rfl, ← map_map] at hi
  replace hi := hm.map ι |>.irreducible_of_irreducible_map _ _ hi
  refine ⟨fun h ↦ hi.1 <| (mapRingHom ι).isUnit_map h, fun a b h ↦ ?_⟩
  wlog hb : IsUnit (b.map ι) generalizing a b
  · exact (this b a (mul_comm a b ▸ h)
      (hi.2 (by rw [h, Polynomial.map_mul]) |>.resolve_right hb)).symm
  have hn (i : ℕ) (hi : i ≠ 0) : IsNilpotent (b.coeff i) := by
    obtain ⟨_, _, h⟩ := Polynomial.isUnit_iff.1 hb
    simpa only [coeff_map, coeff_C, hi, ite_false, ← RingHom.mem_ker,
      show RingHom.ker ι = nilradical R from Ideal.mk_ker] using congr(coeff $(h.symm) i)
  refine .inr <| isUnit_of_coeff_isUnit_isNilpotent (isUnit_of_mul_isUnit_right
    (x := a.coeff f.natDegree) <| (IsUnit.neg_iff _).1 ?_) hn
  have hc : f.leadingCoeff = _ := congr(coeff $h f.natDegree)
  rw [hm, coeff_mul, Finset.Nat.sum_antidiagonal_eq_sum_range_succ fun i j ↦ a.coeff i * b.coeff j,
    Finset.sum_range_succ, ← sub_eq_iff_eq_add, Nat.sub_self] at hc
  rw [← add_sub_cancel_left 1 (-(_ * _)), ← sub_eq_add_neg, hc]
  exact IsNilpotent.isUnit_sub_one <| show _ ∈ nilradical R from sum_mem fun i hi ↦
    Ideal.mul_mem_left _ _ <| hn _ <| Nat.sub_ne_zero_of_lt (List.mem_range.1 hi)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IrreducibleRing/Variant1f0212838bc2b90cb66e027bfa4d7fc070463c29eb945124b3bc954dd9dd59da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IrreducibleRing/Variant1f0212838bc2b90cb66e027bfa4d7fc070463c29eb945124b3bc954dd9dd59da.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c833c264d92f6a85567bd43e9faa748b211fd5cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
