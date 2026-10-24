# IsDedekindDomain.quotientEquivPiOfProdEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:65ef83862d7b01b0f5256dbd0b6c35151a4bcbc4051540f0b5b33ad63ccf684f",
  "kind": "def",
  "lexical_name": "IsDedekindDomain.quotientEquivPiOfProdEq",
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
  "slug": "isdedekinddomain-quotientequivpiofprodeq--94accfbb9d0ad9a0ed2dae50",
  "source": {
    "blob": "ebaae1e55906a2e45da6c0f703da3ac57a9f1c56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1337,
    "line": 1312,
    "path": "GRWTSK/Algebra/Ideal/Variant003f141b367a2e030c8dc01e80078432f8d9e4c5a0428d5af099a167ccc85fa6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:94accfbb9d0ad9a0ed2dae5076d06e618a8514833831ef79c098cec96f5e438d",
  "verification": {
    "reference": "docs/verification/Algebra/Ideal/Variant003f141b367a2e030c8dc01e80078432f8d9e4c5a0428d5af099a167ccc85fa6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:65ef83862d7b01b0f5256dbd0b6c35151a4bcbc4051540f0b5b33ad63ccf684f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1312–1337.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def IsDedekindDomain.quotientEquivPiOfProdEq {ι : Type*} [Fintype ι] (I : Ideal R)
    (P : ι → Ideal R) (e : ι → ℕ) (prime : ∀ i, Prime (P i)) (coprime : ∀ i j, i ≠ j → P i ≠ P j)
    (prod_eq : ∏ i, P i ^ e i = I) : R ⧸ I ≃+* ∀ i, R ⧸ P i ^ e i :=
  (Ideal.quotEquivOfEq
    (by
      simp only [← prod_eq, Finset.inf_eq_iInf, Finset.mem_univ, ciInf_pos,
        ← IsDedekindDomain.inf_prime_pow_eq_prod _ _ _ (fun i _ => prime i) fun i _ j _ =>
        coprime i j])).trans <|
    Ideal.quotientInfRingEquivPiQuotient _ fun i j hij => Ideal.coprime_of_no_prime_ge (by
      intro P hPi hPj hPp
      haveI := hPp
      haveI := Ideal.isPrime_of_prime (prime i)
      haveI := Ideal.isPrime_of_prime (prime j)
      refine coprime i j hij ?_
      refine ((Ring.DimensionLeOne.prime_le_prime_iff_eq ?_).mp
        (Ideal.le_of_pow_le_prime hPi)).trans
        ((Ring.DimensionLeOne.prime_le_prime_iff_eq ?_).mp
          (Ideal.le_of_pow_le_prime hPj)).symm
      exact (prime i).ne_zero
      exact (prime j).ne_zero)
#align is_dedekind_domain.quotient_equiv_pi_of_prod_eq IsDedekindDomain.quotientEquivPiOfProdEq

open scoped Classical

/-- **Chinese remainder theorem** for a Dedekind domain: `R ⧸ I` factors as `Π i, R ⧸ (P i ^ e i)`,
where `P i` ranges over the prime factors of `I` and `e i` over the multiplicities. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Ideal/Variant003f141b367a2e030c8dc01e80078432f8d9e4c5a0428d5af099a167ccc85fa6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ideal/Variant003f141b367a2e030c8dc01e80078432f8d9e4c5a0428d5af099a167ccc85fa6.lean#L1312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebaae1e55906a2e45da6c0f703da3ac57a9f1c56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
