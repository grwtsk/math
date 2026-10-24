# relNorm_eq_pow_of_isPrime_isGalois

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "37680f001821b4d78db5800800f90367922673f9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 401,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ae/ae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6da6c600-c34c-9d4f-f309-52633f70a369",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ccce94a8-cf74-ca9b-1884-5293f893cac2",
  "kind": "theorem",
  "lexical_name": "relNorm_eq_pow_of_isPrime_isGalois",
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
  "slug": "relnorm-eq-pow-of-isprime-isgalois--d05a7db26396110a3633b4fa",
  "source": {
    "blob": "37680f001821b4d78db5800800f90367922673f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 436,
    "line": 401,
    "path": "GRWTSK/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d05a7db26396110a3633b4fa80af76ede88f7a9b4838510232849ae81dfbc7b6",
  "verification": {
    "reference": "docs/verification/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ccce94a8-cf74-ca9b-1884-5293f893cac2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 401–436.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem relNorm_eq_pow_of_isPrime_isGalois [p.IsMaximal] [P.IsPrime]
    [IsGalois (FractionRing R) (FractionRing S)] : relNorm R P = p ^ P.inertiaDeg R := by
  have : P.IsMaximal := IsMaximal.of_liesOver_isMaximal P p
  let G := Gal(FractionRing S/FractionRing R)
  let := IsIntegralClosure.MulSemiringAction R (FractionRing R) (FractionRing S) S
  have := IsGaloisGroup.of_isFractionRing G R S (FractionRing R) (FractionRing S)
  by_cases hp : p = ⊥
  · have h : P.inertiaDeg R ≠ 0 := (inertiaDeg_pos P R).ne'
    have hP : P = ⊥ := by
      rw [hp] at hPp
      exact eq_bot_of_liesOver_bot R P
    rw [hp, hP, relNorm_bot, bot_pow]
    rwa [hP] at h
  obtain ⟨s, hs⟩ := exists_relNorm_eq_pow_of_isPrime P p
  suffices s = P.inertiaDeg R by rwa [this] at hs
  have h₀ : ∀ Q ∈ (p.primesOver S).toFinset,
      relNorm R Q ^ Q.ramificationIdx R = p ^ ((p.ramificationIdxIn S) * s) := by
    intro Q hQ
    rw [Set.mem_toFinset] at hQ
    have : Q.IsPrime := hQ.1
    have : Q.LiesOver p := hQ.2
    rw [← ramificationIdxIn_eq_ramificationIdx p Q G]
    obtain ⟨σ, rfl⟩ := Ideal.exists_smul_eq_of_isGaloisGroup p P Q G
    rw [relNorm_smul, hs, ← pow_mul, mul_comm]
  have h := (congr_arg (relNorm R ·) <|
    map_algebraMap_eq_finsetProd_pow hp).symm.trans <| relNorm_algebraMap S p
  simp +contextual only [map_prod, map_pow, h₀, Finset.prod_const, ← pow_mul] at h
  rwa [← IsGaloisGroup.card_eq_finrank' G R S,
    ← Ideal.ncard_primesOver_mul_ramificationIdxIn_mul_inertiaDegIn p S G, mul_comm,
    ← Set.ncard_eq_toFinset_card',
    ((IsLeftCancelMulZero.mul_left_cancel_of_ne_zero hp).pow_injective _).eq_iff,
    mul_right_inj' (IsDedekindDomain.primesOver_ncard_ne_zero p S),
    mul_right_inj' (ramificationIdxIn_ne_zero G), inertiaDegIn_eq_inertiaDeg p P G] at h
  rw [one_eq_top]
  exact IsMaximal.ne_top inferInstance

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean#L401).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37680f001821b4d78db5800800f90367922673f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
