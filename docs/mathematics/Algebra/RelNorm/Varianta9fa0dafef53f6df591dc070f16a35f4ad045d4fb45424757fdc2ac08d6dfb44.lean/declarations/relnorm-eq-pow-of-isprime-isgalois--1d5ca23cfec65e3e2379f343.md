# relNorm_eq_pow_of_isPrime_isGalois

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:114b2910-2bed-3ff7-4a2e-336c2bc95e4c",
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
  "slug": "relnorm-eq-pow-of-isprime-isgalois--1d5ca23cfec65e3e2379f343",
  "source": {
    "blob": "9761dba926e6906cae2c5d32b53f40c0eb1858f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 444,
    "line": 409,
    "path": "GRWTSK/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d5ca23cfec65e3e2379f34348b6ed9bd1a37875fac464ffc851c6fa7140c3cc",
  "verification": {
    "reference": "docs/verification/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:114b2910-2bed-3ff7-4a2e-336c2bc95e4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 409–444.

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

[Verification target and public status](../../../../../verification/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean#L409).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9761dba926e6906cae2c5d32b53f40c0eb1858f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
