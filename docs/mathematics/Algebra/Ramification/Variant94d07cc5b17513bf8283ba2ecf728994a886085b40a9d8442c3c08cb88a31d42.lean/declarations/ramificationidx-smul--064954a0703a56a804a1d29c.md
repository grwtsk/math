# ramificationIdx_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ef8282b-86ca-7217-b497-f0cae037114e",
  "kind": "theorem",
  "lexical_name": "ramificationIdx_smul",
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
  "slug": "ramificationidx-smul--064954a0703a56a804a1d29c",
  "source": {
    "blob": "b03b00f0a11e4dac24dd38293fa2c12c315cf439",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 263,
    "path": "GRWTSK/Algebra/Ramification/Variant94d07cc5b17513bf8283ba2ecf728994a886085b40a9d8442c3c08cb88a31d42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:064954a0703a56a804a1d29c52f04d267e3b87f5f0a6ffe461e360446bbe0560",
  "verification": {
    "reference": "docs/verification/Algebra/Ramification/Variant94d07cc5b17513bf8283ba2ecf728994a886085b40a9d8442c3c08cb88a31d42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ef8282b-86ca-7217-b497-f0cae037114e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ramificationIdx_smul {G : Type*} [Group G] [MulSemiringAction G S] [SMulCommClass G R S]
    (g : G) : (g • q).ramificationIdx R = q.ramificationIdx R := by
  by_cases hq : q.IsPrime; swap
  · rw [ramificationIdx_of_not_isPrime, ramificationIdx_of_not_isPrime] <;> simpa
  · let p := q.under R
    let f₀ := MulSemiringAction.toAlgAut G R S g
    have hg : g • q = q.map f₀ := q.pointwise_smul_def
    let Sq := Localization.AtPrime q
    let Sq' := Localization.AtPrime (q.map f₀)
    let f : Sq ≃ₐ[R] Sq' :=
      Localization.localAlgEquiv q (q.map f₀) f₀ (comap_map_of_bijective f₀ f₀.bijective).symm
    let : Algebra Sq Sq' := f.toRingHom.toAlgebra
    have : IsScalarTower R Sq Sq' := IsScalarTower.of_algHom f.toAlgHom
    let e : (Sq ⧸ p.map (algebraMap R Sq)) ≃ₐ[Sq] Sq' ⧸ p.map (algebraMap R Sq') :=
      Ideal.quotientEquivAlg _ _ (AlgEquiv.ofBijective (Algebra.ofId Sq Sq') f.bijective)
        (by rw [IsScalarTower.algebraMap_eq R Sq Sq', Ideal.map_map,
          ← AlgEquiv.toAlgHom_toRingHom, AlgEquiv.toAlgHom_ofBijective, Algebra.toRingHom_ofId])
    rw [hg, ramificationIdx_eq p q, ramificationIdx_eq p (q.map f₀),
      e.toLinearEquiv.length_eq, Module.length_eq_of_surjective f.surjective]

@[deprecated (since := "2026-07-01")] alias ramificationIdx'_smul := ramificationIdx_smul

end

end Ideal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Ramification/Variant94d07cc5b17513bf8283ba2ecf728994a886085b40a9d8442c3c08cb88a31d42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ramification/Variant94d07cc5b17513bf8283ba2ecf728994a886085b40a9d8442c3c08cb88a31d42.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b03b00f0a11e4dac24dd38293fa2c12c315cf439` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
